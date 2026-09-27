# Overleaf / latexmk: giữ compile dưới timeout của free plan.
# - synctex=0: bỏ SyncTeX cho nhanh (bật lại = xóa dòng này khi cần nhảy PDF<->code).
# - max_repeat=5: đủ vòng cho TOC + nav + biber (CI cần 3-4 passes).
#   Overleaf free timeout thì giảm về 2 và Recompile tay thêm 1 lần sau Biber.
$pdflatex = 'pdflatex -interaction=nonstopmode -synctex=0 %O %S';
$max_repeat = 5;
