# get_addr_russianpost
requirements: imagemagick
usage:
1. for non pre-paid blancs without qr-code block C-size blancs
./get_addr_tr.sh blanc1.pdf blanc2.pdf ... blancN.pdf
2. for pre-paid blancs with qr-code block C-size blancs
./get_new_addr_tr.sh blanc1.pdf blanc2.pdf ... blancN.pdf

output:
index.html with all addresses from input list (and several cut-out images from input blancs)

You can open index.html in LibreOffice and print it
