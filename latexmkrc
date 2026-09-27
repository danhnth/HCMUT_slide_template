# Overleaf / latexmk: giữ compile dưới timeout của free plan.
# - synctex=0: bỏ SyncTeX cho nhanh (bật lại = xóa dòng này khi cần nhảy PDF<->code).
# - max_repeat=2: latexmk tối đa 2 vòng lặp lại (đủ cho TOC + ref; bib cần thêm
#   1 lần Recompile tay sau khi Biber chạy xong).
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=0 %O %S';
$max_repeat = 2;
