#coding: utf-8
# count_mb.py
'''這個程式用來計算 Lite 版本隨身硬碟各目錄所佔容量, 並且加總'''

cmsimpleSpring2013  = 27  # 網際內容管理系統
GoogleChromePortable = 120  # 全球資料網瀏覽器
mongoose_3_5 = 0.230    # 全球資料網伺服器
nginx_1_2_3 = 4   # 全球資料網伺服器
# 假如不使用 Open CASCADE 可以去除
#oce10 = 170  # Open CASCADE 核心程式庫
php_5_4_10_nts_Win32_VC9_x86 = 44   # PHP 解譯系統
# 假如不使用 Git (包括 Github 與 OpenShift) 則可以移除 git
#portable_git = 270    # git 工具
# 假如不使用 LaTeX 與 rst 文書編輯器, 則可以移除 LaTeX
#portable_latex = 1100 # 用來進行 LaTeX 文書處理
python_tutor = 25  # 自動程式執行環境圖繪製
# 假如不使用 rhc 與 af 工具
#Ruby193 = 335 # 主要用來執行 OpenShift 與 Phpcloud 相關的雲端工具
# 可以針對 Python3 進行瘦身
SciTE = 928  # Python3 與相關程式模組
# 假如不使用遠端工具
#Xming = 22 # X-Windows 與 putty 遠端登入等相關工具
# 假如不使用額外的中文字體
#yahei_mono_ttf = 14  # 中文字體
# 假如不使用流程圖繪製
#dot = 50 # Graphviz 繪圖使用
# 假如不使用 SFTP
#FileZillaPortable = 26 # SFTP 檔案傳輸

'''
總容量 = \
cmsimpleSpring2013  + \
GoogleChromePortable + \
mongoose_3_5 +\
nginx_1_2_3 +\
oce10 +\
php_5_4_10_nts_Win32_VC9_x86 +\
portable_git +\
portable_latex +\
python_tutor +\
Ruby193 +\
SciTE +\
Xming +\
yahei_mono_ttf+\
dot+\
FileZillaPortable
'''
總容量 = \
cmsimpleSpring2013  + \
GoogleChromePortable + \
mongoose_3_5 +\
nginx_1_2_3 +\
php_5_4_10_nts_Win32_VC9_x86 +\
python_tutor +\
SciTE

print("隨身 KMOL 總容量= "+str(總容量)+" MB")