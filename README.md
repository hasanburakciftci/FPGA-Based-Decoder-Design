# Odev1 — Dec_No (VHDL)

Bu repo Dec_No tasarımını ve tb_Odev1 testbench'ini içerir.
**waves/dec_no.vcd dosyası zaten mevcut (üretilmiş VCD).**
İstersen yeniden üretmek için `scripts/run_vcd.do` betiğini kullanabilirsin.

## Çalıştırma (opsiyonel yeniden üretim)
```tcl
vsim -do scripts/run_vcd.do
```
Bu komut `waves/dec_no.vcd` dosyasını yeniden oluşturur.

## Yapı
- `rtl/Dec_No.vhd`: DUT
- `tb/tb_Odev1.vhd`: Testbench
- `scripts/run_vcd.do`: Sim betiği (opsiyonel)
- `waves/`: VCD (`dec_no.vcd`) ve sim görüntüsü (`Dec_no_sim.png`)
- `docs/`: İlgili doküman(lar)

## Notlar
- VCD dosyası büyümesin istersen `run_vcd.do` içinde `vcd add` kapsamını sadece gerekli sinyallere daralt.
- Testbench 0..7 sayımı için 80 ns'lik bir pencere kullanır; betikte 100 ns koşturuyoruz.
