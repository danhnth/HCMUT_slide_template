@echo off
REM One-click build cho Windows + MiKTeX. Chay tu thu muc goc cua project.
REM Yeu cau: pdflatex + biber co trong PATH (cai MiKTeX full la co).
setlocal
pdflatex -interaction=nonstopmode -synctex=0 main.tex
if errorlevel 1 (echo [FAIL] pdflatex lan 1 & exit /b 1)
biber main
if errorlevel 1 (echo [FAIL] biber & exit /b 1)
pdflatex -interaction=nonstopmode -synctex=0 main.tex
if errorlevel 1 (echo [FAIL] pdflatex lan 2 & exit /b 1)
pdflatex -interaction=nonstopmode -synctex=0 main.tex
if errorlevel 1 (echo [FAIL] pdflatex lan 3 & exit /b 1)
echo [OK] main.pdf da build xong.
endlocal
