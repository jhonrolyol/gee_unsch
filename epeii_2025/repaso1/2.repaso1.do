*-------------------------------------------
* Repaso 1: epe ii
* 19 de mayo de 2025
*------------------------------------------

* Limpieza
	cls
	clear all
	set more off

* Directorio de trabajo
	cd "D:\gee_unsch\econometria\2025\repaso1"
	pwd
	
* Importación de datos
	import excel "1.repaso1.xlsx", sheet("data3") firstrow
	browse 

* Visualización de variables
	browse w sexo 
	browse w exp 

* Variable 1: d2 (sexo)
	generate d2 = .
	replace d2 = 1 if (sexo == "masculino")
	replace d2 = 0 if (sexo == "femenino")
	label define lab_d2 1 "masculino" 0 "femenino", replace
	label values d2 lab_d2
	label variable d2 "Sexo"
	fre d2 

* Modelo 1: w = f(d2) 
	regress w d2
	help regress
	regress w d2, noconstant
	return list
	return list
	ereturn list
	
	display _b[_cons]
	display _b[d2]
	display _b[_cons] + _b[d2]
	
	
	






