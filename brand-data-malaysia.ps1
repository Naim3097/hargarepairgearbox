# Brand Data Configuration for Malaysian Market

$brandData = @{
    "Perodua" = @{
        Models = @(
            @{Name="Myvi"; Type="4-Speed Auto"; Price="RM 2,800 - 3,500"; Note="Gen 2 & Gen 3"},
            @{Name="Axia"; Type="4-Speed Auto"; Price="RM 2,500 - 3,200"; Note="2014-2023 model"},
            @{Name="Bezza"; Type="4-Speed Auto"; Price="RM 2,800 - 3,500"; Note="2016+ model"},
            @{Name="Ativa"; Type="CVT"; Price="RM 4,000 - 4,800"; Note="2021+ model"}
        )
        Services = @{
            Overhaul = "RM 2,500 - 4,800"
            Servis = "RM 350 - 600"
        }
        Problems = @(
            @{Title="Myvi auto tersentak gear 2 ke 3"; Punca="Clutch pack automatic haus, solenoid valve kotor, atau minyak ATF dah breakdown. Masalah biasa untuk Myvi Gen 2 & Gen 3 dengan mileage 100,000 KM ke atas."; Action="Diagnosis untuk check pressure & clutch condition. Kalau clutch rosak, kena overhaul. Kalau minyak je, service dengan flush penuh."; Cost="Service minyak: RM 350 - 500. Overhaul auto Myvi: RM 2,800 - 3,500. Termasuk parts & warranty."},
            @{Title="Axia tak jalan forward (reverse okay)"; Punca="Forward clutch pack burnt atau pressure valve tersumbat. Reverse masih boleh sebab guna clutch berbeza. Biasa untuk Axia auto 4-speed."; Action="Kena overhaul untuk tukar forward clutch pack & service valve body. Tak boleh delay sebab boleh rosakkan komponen lain."; Cost="Overhaul auto Axia: RM 2,500 - 3,200. Termasuk clutch kit, gasket, minyak & warranty 1 tahun."},
            @{Title="Bezza delay masa nak bergerak"; Punca="Torque converter rosak atau minyak ATF habis. Biasa terjadi bila minyak tak pernah tukar atau ada leak gasket pan."; Action="Check tahap minyak dulu. Kalau minyak okay, kena check torque converter. Mungkin perlu overhaul kalau rosak teruk."; Cost="Top up minyak: RM 200. Overhaul Bezza: RM 2,800 - 3,500 dengan torque converter baru."}
        )
    }
    "Proton" = @{
        Models = @(
            @{Name="Saga"; Type="CVT / 4-Speed"; Price="RM 2,500 - 3,800"; Note="FL & FLX"},
            @{Name="Persona"; Type="CVT"; Price="RM 3,200 - 4,000"; Note="2016+ model"},
            @{Name="Iriz"; Type="CVT"; Price="RM 3,200 - 4,000"; Note="2014+ model"},
            @{Name="X50"; Type="7-Speed DCT"; Price="RM 4,500 - 5,500"; Note="2020+ model"}
        )
        Services = @{
            Overhaul = "RM 2,500 - 5,500"
            Servis = "RM 400 - 700"
        }
        Problems = @(
            @{Title="Saga CVT tersentak & bunyi whining"; Punca="CVT belt dah stretch, pulley haus, atau bearing rosak. Punch CVT Proton memang ada issue dengan durability. Biasa untuk model 2016-2019."; Action="Kena overhaul CVT dengan tukar belt & pulley set. Tak boleh delay sebab boleh pecah CVT housing."; Cost="Overhaul CVT Saga: RM 3,200 - 3,800. Termasuk CVT belt kit, bearing & warranty 1 tahun."},
            @{Title="X50 DCT judder & gear tak masuk"; Punca="Dual clutch worn out atau mechatronic unit problem. DCT Proton X50 common issue bila drive heavy traffic atau bukit."; Action="Scan untuk check fault code. Kalau clutch problem, kena tukar clutch pack. Kalau mechatronic, mahal sikit."; Cost="Service DCT: RM 600. Replace clutch: RM 4,500 - 5,500. Mechatronic: RM 8,000+."},
            @{Title="Persona CVT overheat warning"; Punca="CVT cooler tersumbat, minyak CVTF breakdown, atau driving style terlalu aggressive. Proton CVT sensitif dengan heat."; Action="Jangan drive bila overheat. Tow ke workshop, clean CVT cooler, flush minyak CVTF baru."; Cost="Service dengan clean cooler: RM 600 - 800. Kalau CVT dah rosak: RM 3,500 - 4,000."}
        )
    }
    "Toyota" = @{
        Models = @(
            @{Name="Vios"; Type="CVT / 4-Speed"; Price="RM 3,200 - 4,200"; Note="2013+ model"},
            @{Name="Yaris"; Type="CVT"; Price="RM 3,500 - 4,500"; Note="2020+ model"},
            @{Name="Camry"; Type="6-Speed Auto"; Price="RM 4,500 - 6,000"; Note="2012+ model"},
            @{Name="Hilux"; Type="6-Speed Auto"; Price="RM 4,000 - 5,500"; Note="Pickup truck"}
        )
        Services = @{
            Overhaul = "RM 3,200 - 6,000"
            Servis = "RM 500 - 800"
        }
        Problems = @(
            @{Title="Vios CVT slip bila acceleration"; Punca="CVT belt stretch atau clutch pack haus. Toyota CVT memang tahan tapi bila 150,000 KM mula ada masalah kalau maintenance kurang."; Action="Diagnosis CVT pressure test. Kalau belt problem, kena overhaul penuh dengan tukar CVT belt assembly."; Cost="Service CVT: RM 500 - 650. Overhaul CVT Vios: RM 3,200 - 4,200. Termasuk CVT kit & warranty."},
            @{Title="Camry 6-speed harsh shifting"; Punca="Transmission fluid kotor, solenoid valve stuck, atau adaptive learning reset. Biasa selepas battery disconnect atau long idle."; Action="Service transmission fluid dulu. Kalau masih, kena reset TCM adaptive. Worst case, rebuild valve body."; Cost="Service ATF: RM 600. Reset TCM: RM 150. Valve body rebuild: RM 2,500. Overhaul penuh: RM 4,500 - 6,000."},
            @{Title="Hilux auto gear tak turun bila engine brake"; Punca="Shift solenoid problem atau TCM programming issue. Hilux auto transmission ada issue dengan downshift logic."; Action="Software update TCM dulu di service center Toyota. Kalau masih problem, check shift solenoid operation."; Cost="TCM update: RM 300. Replace solenoid: RM 1,200 - 1,800. Service transmission: RM 600 - 800."}
        )
    }
    "Nissan" = @{
        Models = @(
            @{Name="Almera"; Type="CVT"; Price="RM 3,800 - 5,000"; Note="2012+ model"},
            @{Name="X-Trail"; Type="CVT / CVT8"; Price="RM 4,500 - 6,500"; Note="T32 model"},
            @{Name="Serena"; Type="CVT"; Price="RM 4,200 - 5,500"; Note="C26/C27"},
            @{Name="Navara"; Type="7-Speed Auto"; Price="RM 4,000 - 5,200"; Note="NP300 model"}
        )
        Services = @{
            Overhaul = "RM 3,800 - 6,500"
            Servis = "RM 550 - 900"
        }
        Problems = @(
            @{Title="Almera CVT jerking & shuddering"; Punca="CVT deterioration - Nissan CVT terkenal dengan reliability issue. Stepper motor, valve body, atau CVT fluid contamination. Biasa lepas 80,000 KM."; Action="Check CVT fluid color. Kalau hitam/perang, dah teruk. Kena overhaul CVT dengan tukar valve body & stepper motor."; Cost="CVT fluid flush: RM 550 - 700. Overhaul CVT Almera: RM 3,800 - 5,000. Valve body: RM 2,500."},
            @{Title="X-Trail CVT limp mode (lampu gear berkedip)"; Punca="CVT overheat, stepper motor failure, atau transmission control module error. X-Trail CVT8 ada banyak electronic sensors yang mudah rosak."; Action="Scan error code dulu. Kalau P0868, minyak pressure rendah. Kalau P0843, stepper motor. Kena diagnosis detail."; Cost="Diagnosis: Percuma. Stepper motor: RM 1,800 - 2,500. Overhaul CVT X-Trail: RM 5,500 - 6,500."},
            @{Title="Serena CVT bunyi whining kuat"; Punca="CVT pump rosak, bearing CVT haus, atau chain CVT stretch. Nissan Serena CVT memang lemah kalau overload atau naik bukit heavy."; Action="Kena buka CVT untuk inspection bearing & chain. Kalau dah bunyi kuat, usually kena overhaul penuh."; Cost="Overhaul CVT Serena: RM 4,200 - 5,500. Termasuk bearing kit, chain, pump & warranty 1 tahun."}
        )
    }
    "BMW" = @{
        Models = @(
            @{Name="320i"; Type="8-Speed ZF"; Price="RM 6,500 - 9,000"; Note="F30/G20"},
            @{Name="520i"; Type="8-Speed ZF"; Price="RM 7,000 - 10,000"; Note="G30 model"},
            @{Name="X1"; Type="8-Speed Aisin"; Price="RM 6,000 - 8,500"; Note="F48 model"},
            @{Name="X5"; Type="8-Speed ZF"; Price="RM 9,000 - 12,000"; Note="F15/G05"}
        )
        Services = @{
            Overhaul = "RM 6,000 - 12,000"
            Servis = "RM 800 - 1,500"
        }
        Problems = @(
            @{Title="ZF 8-speed mechatronic failure"; Punca="Mechatronic sleeve bocor, valve body stuck, atau TCU software glitch. Common untuk F30 320i dengan mileage 100,000 KM+. Symptoms: gear tak masuk, jerk teruk, limp mode."; Action="Diagnosis dengan BMW scan tool untuk check adaptation values & pressure. Mechatronic perlu rebuilt atau replace."; Cost="Service ZF8: RM 1,200. Mechatronic rebuild: RM 6,500 - 8,000. Overhaul penuh: RM 8,500 - 10,000."},
            @{Title="Torque converter shudder"; Punca="Torque converter clutch worn, ATF breakdown, atau valve body adaptation issue. Biasa untuk BMW dengan ZF transmission yang service kurang."; Action="Flush ATF dengan ZF Lifeguard fluid original. Kalau masih shudder, kena tukar torque converter."; Cost="ATF flush: RM 1,200 - 1,500. Torque converter: RM 3,500. Overhaul transmission: RM 7,000 - 9,000."},
            @{Title="Gear hunting (tak stable RPM)"; Punca="Adaptive transmission learning corrupted, shift solenoid wear, atau TCU update diperlukan. BMW transmission ada learning behavior yang kadang error."; Action="Reset transmission adaptation dulu. Update TCU software. Kalau hardware problem, kena replace solenoid atau rebuild valve body."; Cost="TCU update: RM 500. Reset adaptation: RM 200. Solenoid set: RM 2,500 - 3,500. Valve body: RM 5,000+."}
        )
    }
    "Mercedes" = @{
        Models = @(
            @{Name="C200"; Type="9G-Tronic"; Price="RM 7,500 - 11,000"; Note="W205 model"},
            @{Name="E200"; Type="9G-Tronic"; Price="RM 8,000 - 12,000"; Note="W213 model"},
            @{Name="A200"; Type="7G-DCT"; Price="RM 6,500 - 9,000"; Note="W177 model"},
            @{Name="GLC200"; Type="9G-Tronic"; Price="RM 8,500 - 12,500"; Note="SUV model"}
        )
        Services = @{
            Overhaul = "RM 6,500 - 12,500"
            Servis = "RM 900 - 1,800"
        }
        Problems = @(
            @{Title="9G-Tronic jerking bila cold start"; Punca="Transmission fluid level rendah, 13-pin connector corrosion, atau conductor plate failure. Mercedes 9-speed memang sensitive dengan ATF level & quality."; Action="Check ATF level dengan proper procedure (engine running, temperature 60-80°C). Clean 13-pin connector. Kalau conductor plate rosak, kena replace."; Cost="ATF service: RM 1,200 - 1,500. Conductor plate: RM 3,500 - 4,500. Overhaul 9G: RM 9,000 - 11,000."},
            @{Title="7G-DCT clutch judder & smell"; Punca="Dual clutch overheating, clutch facing worn, atau mechatronic hydraulic leak. Mercedes DCT lemah kalau heavy traffic atau aggressive driving."; Action="Diagnosis dengan XENTRY untuk check clutch wear & adaptation. Kalau clutch dah worn, kena replace clutch pack."; Cost="Service DCT: RM 900. Clutch pack replacement: RM 6,500 - 9,000. Mechatronic: RM 8,000 - 10,000."},
            @{Title="Transmission fault limp mode"; Punca="Conductor plate crack, solenoid failure, atau TCU software bug. Mercedes transmission banyak electronics yang sensitive."; Action="Scan fault codes dengan Star Diagnostic. Check conductor plate untuk burn marks. Update TCU software latest version."; Cost="Diagnosis: RM 300. TCU update: RM 600. Conductor plate: RM 4,000. Overhaul: RM 8,000 - 12,000."}
        )
    }
    "Volkswagen" = @{
        Models = @(
            @{Name="Polo"; Type="6-Speed DSG"; Price="RM 5,500 - 7,500"; Note="MK5/MK6"},
            @{Name="Vento"; Type="6-Speed Aisin"; Price="RM 4,500 - 6,000"; Note="2011+ model"},
            @{Name="Passat"; Type="6-Speed DSG"; Price="RM 6,500 - 8,500"; Note="B7/B8 model"},
            @{Name="Tiguan"; Type="7-Speed DSG"; Price="RM 7,000 - 9,500"; Note="5N model"}
        )
        Services = @{
            Overhaul = "RM 4,500 - 9,500"
            Servis = "RM 700 - 1,200"
        }
        Problems = @(
            @{Title="DSG mechatronic failure"; Punca="Mechatronic valve body leak, solenoid stuck, atau TCU overheat. VW DSG terkenal dengan mechatronic issue - common untuk DQ200 (dry clutch) & DQ250 (wet clutch)."; Action="Diagnosis dengan VCDS scan tool. Check mechatronic adaptation values. Kalau out of spec, kena rebuild atau replace mechatronic unit."; Cost="DSG service: RM 900 - 1,200. Mechatronic rebuild: RM 5,500 - 7,000. Replace mechatronic: RM 8,000 - 10,000."},
            @{Title="DSG judder bila start dari stationary"; Punca="Clutch pack worn (dry clutch), flywheel surface scoring, atau mechatronic adaptation out of range. DQ200 dry clutch memang ada issue dengan judder bila 60,000 KM+."; Action="Reset DSG adaptation dulu. Kalau masih judder, kena replace clutch pack. Flywheel mungkin perlu resurface atau replace."; Cost="Reset adaptation: RM 200. Clutch replacement: RM 5,500 - 7,500. Flywheel: RM 2,000 - 3,000."},
            @{Title="Gear tidak engage (stuck in neutral)"; Punca="Mechatronic solenoid failure, clutch hydraulic pressure loss, atau shift fork broken. Emergency - kereta tak boleh jalan langsung."; Action="Tow ke workshop. Scan untuk check pressure values. Usually mechatronic atau clutch pack kena replace."; Cost="Towing: RM 150 - 300. Mechatronic: RM 7,000. Clutch pack: RM 6,000. Full overhaul DSG: RM 8,000 - 9,500."}
        )
    }
}

Write-Host "Brand data configuration loaded successfully!" -ForegroundColor Green
Write-Host "Total brands configured: $($brandData.Count)" -ForegroundColor Cyan
