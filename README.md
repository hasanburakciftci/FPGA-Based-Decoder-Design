# FPGA-Based Decoder Design

A midterm project prepared for the **EEEN 360 Digital Design with FPGA** course.

## Project Purpose
This project implements a decoder circuit in VHDL, based on the truth table defined by a specific digit of the student number. It includes the design of a **3-bit input (Cnt) → 4-bit output (No)** decoder.

- **Input:** `Cnt` (3-bit)  
- **Output:** `No` (4-bit)  
- **Testbench:** Increments the `Cnt` signal every 10 ns and tests all combinations within 80 ns.  
- **Verification:** The simulation result is verified using a VCD file (`dec_no.vcd`) and waveform image (`Dec_no_sim.png`).  

## Simulation
Below is the waveform obtained from the testbench:

![Simulation result](Waves/Dec_no_sim.png)

## Run (optional reproduction)
```tcl
vsim -do scripts/run_vcd.do
```
This command regenerates the waves/dec_no.vcd file.

## Structure
- `rtl/Dec_No.vhd`: DUT  
- `tb/tb_Odev1.vhd`: Testbench  
- `scripts/run_vcd.do`: Simulation script (optional)  
- `waves/`: VCD (`dec_no.vcd`) and waveform image (`Dec_no_sim.png`)  
- `docs/`: Related document(s)  

## Notes
- The VCD file is already included in the repository. If you want to regenerate it, you can use `run_vcd.do`.  
- To prevent the VCD file from becoming too large, restrict the `vcd add` scope in `run_vcd.do` to only necessary signals.  
- The testbench uses an 80 ns window for the 0..7 count; the script runs for 100 ns.  
----------------------------------------------------------------------------------------------------------------------------

# FPGA Tabanlı Decoder Tasarımı

EEEN 360 **FPGA ile Sayısal Tasarım** dersi kapsamında hazırlanmış bir vize ödevi.

## Projenin Amacı
Bu proje, öğrenci numarasındaki belirli haneye göre tanımlanan doğruluk tablosunu temel alarak
**3-bit girişli (Cnt) → 4-bit çıkışlı (No)** bir decoder devresinin VHDL ile tasarımını içerir.

- **Giriş:** `Cnt` (3-bit)
- **Çıkış:** `No` (4-bit)
- **Testbench:** `Cnt` sinyalini 10 ns aralıklarla artırır ve 80 ns sürede tüm kombinasyonları dener.
- **Doğrulama:** Simülasyon sonucu VCD dosyası (`dec_no.vcd`) ve dalga şekilleri (`Dec_no_sim.png`) ile kontrol edilir.

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
- VCD dosyası zaten repoda mevcut. Yeniden üretmek istersen `run_vcd.do` kullanılabilir.
- VCD dosyası büyümesin istersen `run_vcd.do` içinde `vcd add` kapsamını sadece gerekli sinyallere daralt.
- Testbench 0..7 sayımı için 80 ns'lik bir pencere kullanır; betikte 100 ns koşturuyoruz.

## Author - Yazar

Hasan Burak Çiftçi  
Electrical & Electronics Engineer  
