#dtoverlay -r mcp2517fd-can0

dtc -@ -I dts -O dtb -o 2xMCP2517FD.dtbo 2xMCP2517FD-overlay.dts
dtc -@ -I dts -O dtb -o 2xMCP2518FD.dtbo 2xMCP2518FD-overlay.dts
dtc -@ -I dts -O dtb -o mcp2517fd-can0.dtbo mcp2517fd-can0-overlay.dts

cp *.dtbo /boot/overlays
# dtoverlay mcp2517fd-can0