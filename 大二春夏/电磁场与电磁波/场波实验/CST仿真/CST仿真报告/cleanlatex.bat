@echo off
echo 正在清理 LaTeX 编译中间文件...
del /q *.aux *.log *.out *.synctex* *.toc *.lof *.lot *.bbl *.blg 2>nul
echo 清理完成。
pause