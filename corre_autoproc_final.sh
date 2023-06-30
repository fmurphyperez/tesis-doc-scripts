#!/bin/bash
#
# Corre autoproc con las máscaras para el beamstop y los pixeles dañados. 
# Además cambia el valor del overload (XDS.INP del sincrotrón). 
# Además impone el grupo espacial (autoPROC selecciona los parámetros de celda unitaria que mejor se ajusten a ese grupo espacial).
# El objetivo es depositar las estructuras, con una dosis de radiación absorbida conocida.
# Aquí se escriben los datos generados por autoproc.
PRC=/home/murphy/doc/prc
# Aquí se encuentran los datos crudos, los patrones de difracción.
RAW=/home/murphy/raw
# Aquí se encuentran algunos parámetros que autoproc debe de corregir.
PIL=/home/murphy/doc/pil
####### B2X*
# Dosis a 2.7 MGy
process -R 35 1.05 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2022 -d ${PRC}/cut_B2X1-02.70_MGy -Id 02,${RAW}/B2X1/01/,B2X1_01_####.cbf,1,180 -B
process -R 35 1.05 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2022 -d ${PRC}/cut_B2X4-02.70_MGy -Id 02,${RAW}/B2X4/01/,B2X4_01_####.cbf,1,405 -B
process -R 35 1.05 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2022 -d ${PRC}/cut_B2X11_02.70_MGy -Id 02,${RAW}/B2X11/01/,B2X11_01_####.cbf,1,233 -B
# Dosis a 5 MGy
process -R 35 1.05 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2022 -d ${PRC}/cut_B2X1_05.00_MGy -Id 03,${RAW}/B2X1/01/,B2X1_01_####.cbf,1,332 -B
process -R 35 1.05 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2022 -d ${PRC}/cut_B2X4_05.00_MGy -Id 03,${RAW}/B2X4/01/,B2X4_01_####.cbf,1,750 -B
process -R 35 1.05 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2022 -d ${PRC}/cut_B2X11_05.00_MGy -Id 03,${RAW}/B2X11/01/,B2X11_01_####.cbf,1,432 -B
# Dosis a 7.5 MGy
process -R 35 1.05 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2022 -d ${PRC}/cut_B2X1_07.50_MGy -Id 04,${RAW}/B2X1/01/,B2X1_01_####.cbf,1,499 -B
process -R 35 1.05 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2022 -d ${PRC}/cut_B2X4_07.50_MGy -Id 04,${RAW}/B2X4/01/,B2X4_01_####.cbf,1,1125 -B  
process -R 35 1.05 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2022 -d ${PRC}/cut_B2X11_07.50_MGy -Id 04,${RAW}/B2X11/01/,B2X11_01_####.cbf,1,648 -B  
# Dosis a 10 MGy
process -R 35 1.05 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2022 -d ${PRC}/cut_B2X1_10.00_MGy -Id 05,${RAW}/B2X1/01/,B2X1_01_####.cbf,1,665 -B
process -R 35 1.05 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2022 -d ${PRC}/cut_B2X4_10.00_MGy -Id 05,${RAW}/B2X4/01/,B2X4_01_####.cbf,1,1500 -B
process -R 35 1.05 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2022 -d ${PRC}/cut_B2X11_10.00_MGy -Id 05,${RAW}/B2X11/01/,B2X11_01_####.cbf,1,864 -B
# Dosis a 12 MGy
process -R 35 1.05 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2022 -d ${PRC}/cut_B2X1_12.00_MGy -Id 06,${RAW}/B2X1/01/,B2X1_01_####.cbf,1,799 -B  
process -R 35 1.05 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2022 -d ${PRC}/cut_B2X4_12.00_MGy -Id 06,${RAW}/B2X4/01/,B2X4_01_####.cbf,1,1800 -B  
process -R 35 1.05 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2022 -d ${PRC}/cut_B2X11_12.00_MGy -Id 06,${RAW}/B2X11/01/,B2X11_01_####.cbf,1,1037 -B  
####### B3X*
## Dosis a 0.45/0.55 MGy
process -R 20 1.15 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2021 -d ${PRC}/B3X11-0.45MGy -Id 01,${RAW}/B3X11/01/,B3X11_01_####.cbf,1,270 -B
process -R 20 1.15 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2021 -d ${PRC}/B3X14-0.55MGy -Id 01,${RAW}/B3X14/02/,B3X14_02_####.cbf,1,270 -B
# Dosis a 0.89/0.82 MGy
process -R 20 1.15 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2021 -d ${PRC}/B3X11-0.89MGy -Id 02,${RAW}/B3X11/02/,B3X11_02_####.cbf,1,270 -B
process -R 20 1.15 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2021 -d ${PRC}/B3X14-0.82MGy -Id 02,${RAW}/B3X14/03/,B3X14_03_####.cbf,1,270 -B
# Dosis a 1.34/1.37 MGy
process -R 20 1.15 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2021 -d ${PRC}/B3X11-1.34MGy -Id 03,${RAW}/B3X11/03/,B3X11_03_####.cbf,1,270 -B
process -R 20 1.15 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2021 -d ${PRC}/B3X14-1.37MGy -Id 03,${RAW}/B3X14/05/,B3X14_05_####.cbf,1,270 -B
# Dosis a 2.23/2.19 MGy
process -R 20 1.15 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2021 -d ${PRC}/B3X11-2.23MGy -Id 04,${RAW}/B3X11/05/,B3X11_05_####.cbf,1,270 -B
process -R 20 1.15 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2021 -d ${PRC}/B3X14-2.19MGy -Id 04,${RAW}/B3X14/08/,B3X14_08_####.cbf,1,270 -B
# Dosis a 2.68/2.73 MGy
process -R 20 1.15 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2021 -d ${PRC}/B3X11-2.68MGy -Id 05,${RAW}/B3X11/06/,B3X11_06_####.cbf,1,270 -B
process -R 20 1.15 -M AlbaBL13Xaloc symm="P43212" -M ${PIL}/alba2021 -d ${PRC}/B3X14-2.73MGy -Id 05,${RAW}/B3X14/10/,B3X14_10_####.cbf,1,270 -B
