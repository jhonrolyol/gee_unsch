'-------------------------------------------
' Repaso 1: epe ii
' 19 de mayo de 2025
'------------------------------------------

' Limpieza
	close @all
	
' Archivo de trabajo
	wfcreate u 54                         ' u: para data de corte transversal
	wfcreate m 2000.1 2022.12 ' m: data mensual
	wfcreate q 2000.1 2020.4    ' q: data trimestral
	wfcreate y 2000 2024           ' y: data anual

' Ingresar variables y datos
	data w d2
	data exo

' Regresión por MCO
	ls w c d2
	ls w d2 




