# CompTIA A+ (220-1001)

## PART 1: Safety and Professionalism
1. Professional Communications
2. Physical Safety
   1. **EMP**
       1. `ESD` - Static Discharge
       2. `EMI` - Interference Magnets
       3. Unplug and ground - ESD `Wristband`
3. Tools
   1. No.2 Phillips screwdriver
   2. Hemostat to grab small screws
   3. Tweezers
   4. IC Inserter
   5. Nut drivers
   6. Voltage tester
   7. Multimeter - Volt Ohm Meter
   8. Flash drive
4. Troubleshooting theory
   1. The environment or condition
   2. System and application logs
   3. Test Theory or establish new theory
   4. Escalate the issue if necessary
   5. Establish plan of Action to resolve the problem and implement the solution
   6. Ask if she's satisfied

### The Visible Computer
1. Primary Components
   1. System Unit
   2. Monitor
   3. Keyboard and Mouse
   4. Printer
   5. Speakers
2. External Connections
   1. USB - 20 years
   2. Network Cable Connections - RJ45
   3. Sound connector
   4. DVI
   5. DisplayPort
   6. HDMI
   7. VGA
   8. Power
   9. PS/2 - Mini Din
   10. LPT port - Parallel port for printers
   11. Serial Connector - IBM PC 1979
3. Inside the PC
   1. Power Supply
   2. Motherboard
   3. CPU
   4. RAM
   5. M.2 SSD
4. What is a computer
   1. Has CPU, RAM, Storage, and OS
   2. Laptops, Mobile, and IOT devices
5. What is Operating System
   1. Resource Monitor - ProcessID PID
   2. IBM - 640k memory
   3. CPU addresses memory - 8bit, 16bit, 32bit, 64bit

### 32 bit and 64 bit Processing
1. Ram, MCC > address bus >  CPU
   1. 32bit only use 4GB Ram, even on a 64 bit OS

---

## PART 2: CPU and RAM
### CPU
1. *CPU Speed and cores*
   1. 1 hertz = 1 time/second
   2. 3 Gigahertz = 3 Billion times/second
   3. INTEL vs Advanced Micro Devices
   4. Motherboard MAX 400 Mhz **Rare**
   5. Clock Multiplying
   6. CPU-Z to see clock multiplier
   7. Overclocking
   8. Multiple Cores
      1. Hyperthreading, 1 core, multiple pipeline
2. *Cache*
   9. CPU is quicker than ram
   10. SRAM is inside a CPU
   11. SRAM > Prefetch > Cache
   12. Pipeline Stall
   13. `L1 Cache` - 64k RAM, Runs at same speed at CPU
   14. `L2 Cache` - 128-256k RAM, Half the CPU speed
   15. `L3 Cache` - 6 Megabytes - Motherboard speed, quicker than RAM
   16. Set association

### RAM
1. **Ram technologies*
   1. `SDRAM`, 2 notches 168-pin, runs on MOBO's speed
   2. `DDR RAM`, 1 notch, Double rate, 184-pin
      1. ClockSpeed (Motherboard Speed), DDR Speed Rating, PC Speed Rating
      2. 300MHz > DDR-600 > PC 4800, ratio 1:2:8
   3. `DDR 2` 240-pin, 1 notch offset, pre-fetched
      1. ClockSpeed, DDR I/O Speed, DDR3 Speed, PC Speed
      2. 100 MHz > 200 MHz > DDR2-400 > PC2-3200 (1:2:2:8) **PC speed rating is x8, On the exam**
   4. `DDR 3`, 240-pins
      1. 1:4:2:8
   5. `DDR 4`, 288-pins
      1. ClockSpeed, Bandwith (Megatransfer MT/s), DDR4 Speed, PC Speed
      2. 1:8:1:8
2. *RAM Features*
   1. `Parity` v `ECC`
      1. Error Correction Code Ram, Parity Chip
      2. Parity 1 bad chip, ECC 2 bad chips
      3. Expensive
      4. Specific motherboard
      5. Servers
      6. `SODIMMS` - Small Outline
         1. DDR4 - 260 pins
         2. DDR3 - 204 pins
         3. Pre-DDR3 - 200 and 144 pins
      7. `SPD Chip` - Serial Presence Detect
         1. Tells who makes the RAM, Speed, Timings
         2. Use CPU-Z to inspect

---

## PART 3: Core Hardware
### Firmware
1. `BIOS/UEFI`
   1. Bios was 16 bit for a while
   2. `UEFI` is an upgrade
   3. Has user and admin password
2. `POST` - Power-on Self Test
   1. Checks motherboard is okay, boots up your computer
   2. Beep codes
   3. `Post Cards`
   4. Checks for hardware changes
3. `CMOS` - System Setup
   1. `EE Prom` programable read only memory
   2. `Real Time Clock` Updates CMOS, 64 bytes
   3. `ROM Chips` modern flashable chip
   4. has a Battery - `CMOS battery`

### Motherboard
1. `Form Factors`
   1. `ATX` 12in x 9in
   2. `Micro ATX` 9.6in x 9.6in 
   3. `Mini ITX` 
   4. `ITX` Larger mini ATX
2. IO Area
3. Voltage and capacitors
   1. Watch for bubbling capacitors
4. `PCIE`
   1. Expansion Slot
   2. PCI is the precursor, 32 bit bus
      1. Parallel vs Serial
      2. One wire is quicker 

### Chipsets
1. `Northbridge` and `Southbridge` Chipsets
   1. North is fast, South is slow (USB)
   2. Function has changed
   3. CPU Take over Northbridge's job
   4. Southbridge still used
   5. *Chipset defines what the motherboard can support*

