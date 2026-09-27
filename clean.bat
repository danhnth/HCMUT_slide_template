@echo off
REM Xoa artifacts bien dich, GIU LAI main.pdf.
REM Chay tu thu muc goc cua project. Muon xoa ca PDF: clean.bat /all
setlocal
del /q main.aux main.bbl main.bcf main.blg main.log main.nav main.out main.run.xml main.snm main.toc main.fls main.fdb_latexmk main.synctex.gz main-blx.bib 2>nul
if /i "%~1"=="/all" del /q main.pdf 2>nul
echo [OK] da xoa artifacts, giu lai main.pdf.
endlocal
