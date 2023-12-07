import openpyxl

file_path = 'D:/BenchMark/benchmark_next.ftrace'
with open(file_path, 'r+', encoding='ISO-8859-1') as file:
   content = file.read()  # 读取文件内容
   new_content = content.replace(".N..", "....")  
   new_content = new_content.replace(".n..", "....")  
  #  f.seek(0)  # 将文件指针移动到文件开头
   file.close()

with open(file_path, 'w+',encoding='ISO-8859-1') as file:
   file.truncate()
    # file.seek(0)  # 将文件指针移动到文件开头
   file.write(new_content)  # 写入替换后的内容  
   file.close()
