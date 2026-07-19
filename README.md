# HCMUT_slide_template

Template LaTeX Beamer (theme màu BK, có ảnh nền tùy chỉnh) cho slide báo cáo của sinh viên
Trường Đại học Bách Khoa - ĐHQG TP.HCM (HCMUT). Hỗ trợ tiếng Việt.

## Cấu trúc

- `main.tex` — file chính. Sửa thông tin trang bìa và thay các slide mẫu bằng nội dung của bạn.
- `references.bib` — danh mục tài liệu tham khảo (BibTeX).
- `images/` — ảnh nền và logo:
  - `FrontBackground.pdf` — nền trang bìa
  - `Background.pdf` — nền các slide
  - `BK.png` — logo trường

## Biên dịch (pdfLaTeX)

Dùng `biblatex` với backend `bibtex`, nên chạy tuần tự:

```bash
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

Kết quả: `main.pdf`.

## Ghi chú

- `main.tex` đã sẵn các **slide mẫu** cho mỗi loại layout (danh sách, công thức, hình ảnh,
  hai cột, bảng, references). Sao chép / xóa / sửa tùy nhu cầu.
- Slide hình dùng placeholder vẽ bằng TikZ (`\figplaceholder`). Khi có ảnh thật, thay bằng
  `\includegraphics{images/ten-anh}`.
- Nếu viết tiếng Việt có dấu, cân nhắc bỏ comment dòng `\usepackage[vietnamese]{babel}` trong
  `main.tex` (cần gói `texlive-lang-other`).
