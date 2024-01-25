import os
import sys
import datetime
def lost_module(module_name):
    print("""need %s module, try install first:
    pip install %s""" % (module_name, module_name))
    exit()

try:
    import xlsxwriter
except ImportError:
    import pip
    pip.main(["install", "xlsxwriter"])
    try:
        import xlsxwriter
    except ImportError:
        xlsxwriter = None
        lost_module("xlsxwriter")

time_format_file = '%Y-%m-%d-%H-%M-%S'
start_time_raw = datetime.datetime.now()
start_time_file = start_time_raw.strftime(time_format_file)
root_dir = os.getcwd()
output_dir = root_dir+'/'+'out'
if not os.path.exists(output_dir):
    os.makedirs(output_dir)
workbook = xlsxwriter.Workbook(output_dir + '/'+start_time_file+'-result.xls')
arguments = sys.argv
run_count = 1
compile_type = "ALL"
result_separator_usec = ': usec = '
result_separator_latency = ': latency = '
case_name = ''


def print_help():
    print("help [-h]")
    print("[--type <type>]")
    print("[--run-count <count>]")
    print("[--case <case-name>]")
    print("example of run all case in ts/swift once: \n[python run_all.py]")
    print("example of run all case in ts/swift 10 times: \n[python run_all.py --run-count 10]")
    print("example of run case 'base64' in swift 10 times: \n[python run_all.py --type swift --run-count 10 --case base64]")
    print("results will output in 'out' dir")


for i in range(len(arguments)):
    if arguments[i] == '--type':
        compile_type = arguments[i+1]
    if arguments[i] == '--run-count':
        run_count = int(arguments[i+1])
    if arguments[i] == '--case':
        case_name = arguments[i+1]
    if arguments[i] == '-h':
        print_help()
        exit()


def run_once(i):
    run_record = {}
    print("[Run time]: " + str(i))
    sheet = workbook.add_worksheet("sheet"+str(i))
    cell_format = workbook.add_format()
    cell_format.set_bg_color('#D9D9D9')
    sheet_row = 0
    sheet.set_row(sheet_row, cell_format=cell_format)
    sheet.write(sheet_row, 0, "CASE_NAME")
    sheet.write(sheet_row, 1, "TS RESULT_usec")
    sheet.write(sheet_row, 2, "TS RESULT_latency")
    sheet.write(sheet_row, 3, "SWIFT RESULT_usec")
    sheet.write(sheet_row, 4, "SWIFT RESULT_latency")
    sheet_row += 1
    run_dir = root_dir
    if compile_type == "ts" or compile_type == "swift":
        run_dir = root_dir + '/' + compile_type
    for root, dirs, files in os.walk(run_dir):
        for name in files:
            if name == 'run.sh':
                # print(os.path.join(root, name))
                current_type = root.split('/')[-1]
                print("[start run]: "+current_type + " " + case_name)
                os.chdir(root)
                lines = os.popen('./'+name + ' ' + case_name)
                while True:
                    line = lines.readline()
                    if not line:
                        break
                    with open(output_dir+"/"+start_time_file+"-log.txt", "a") as file:
                        file.writelines(line)
                    if result_separator_usec in line:
                        result = line.replace('\n', '').split(
                            result_separator_usec)
                        print("[result]: "+str(result))
                        if result[0] in run_record.keys():
                            row = run_record[result[0]]
                        else:
                            run_record[result[0]] = sheet_row
                            row = sheet_row
                            sheet.write(row, 0, result[0])
                            sheet_row += 1
                        if current_type == 'ts':
                            sheet.write(row, 1, result[1])
                        if current_type == 'swift':
                            sheet.write(row, 3, result[1])
                    if result_separator_latency in line:
                        result = line.replace('\n', '').split(
                            result_separator_latency)
                        print("[result]: "+str(result))
                        if result[0] in run_record.keys():
                            row = run_record[result[0]]
                        else:
                            run_record[result[0]] = sheet_row
                            row = sheet_row
                            sheet.write(row, 0, result[0])
                            sheet_row += 1
                        if current_type == 'ts':
                            sheet.write(row, 2, result[1])
                        if current_type == 'swift':
                            sheet.write(row, 4, result[1])
                lines.close()


def run():
    print("***** start run all *****")
    for i in range(run_count):
        run_once(i+1)
    workbook.close()
    print("***** stop run all *****")


run()
