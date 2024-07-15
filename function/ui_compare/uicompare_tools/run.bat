
@ECHO OFF 
reg add HKEY_CURRENT_USER\Console /v QuickEdit /t REG_DWORD /d 00000000 /f
echo "======使用说明======"
echo "--type: 输入0：获取基线图，输入1：对比生成差异图，输入2：生成总html报告"
echo "--excel: 用例数据的Excel所在文件夹路径(Excel仅支持xlsx格式)"
echo "--dir: 基础图源文件夹所在路径（type=1时必填）"
echo "--hap: 用例hap文件夹所在路径（必填）"
echo "--json: 执行用例生成的 json文件所在文件夹路径（type=2时必填）"
echo "入参范例:--type0--excel D:\UI\All_Excel\--hap D:\UI\hap" 
echo "入参范例:--type1--excel D:\UI\All_Excel\--dir D:\UI\BaseImages_20230504_174004 --hap D:\UI\hap"
echo "入参范例:--type2--json D:\UI\run_json_20230810_163907\"
echo "温馨提示：执行用例前，请先确保已关闭上述路径中所有的Excel表，否则将会导致用例结果写入Excel后保存失败" 
echo "======使用说明======"


set /p param= 输入入参:


python UiCompareTools_progress.py %param%

pause