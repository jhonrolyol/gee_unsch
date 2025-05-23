'-------------------------------------------
' Repaso 2: epe ii
'  21 de mayo de 2025
'------------------------------------------

' Limpieza
close @all

' Directorio de trabajo 
%root = @runpath
cd %root

' Modelo 1 
import "repaso2.xlsx" range=1 colhead=1 na="#N/A" @freq U 1 @smpl @all
ls w c d2

' Modelo 2
import "repaso2.xlsx" range=2 colhead=1 na="#N/A" @freq U 1 @smpl @all
ls w c d3

' Modelo 3


