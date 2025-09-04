# run_vcd.do — Opsiyonel sim betiği
# Not: waves/dec_no.vcd zaten repoda mevcut (senin ürettiğin).
# Yeni VCD üretmek istersen bu betiği kullanabilirsin.

vlib work
vcom -2008 rtl/Dec_No.vhd
vcom -2008 tb/tb_Odev1.vhd

# Testbench'i çalıştır
vsim -voptargs=+acc work.tb_Odev1 -t ns

# VCD ayarları
vcd file waves/dec_no.vcd
# Sadece ihtiyacın olan sinyalleri almak istersen aşağıdaki satırı daralt:
# vcd add /tb_Odev1/Cnt /tb_Odev1/No
vcd add -r /tb_Odev1/*

# 0..7 sayımı için 80 ns yeter; 100 ns güvenli
run 100 ns
vcd flush
quit -f
