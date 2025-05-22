
log using "repaso2", text // INICIO DE LA BITACORA

* Limpieza
  cls 
  clear all
  set more off 

* Directorio trabajo
  cd "D:\gee_unsch\econometria\2025\repaso2"
  pwd
	
* Importar la data
  import excel "repaso2.xlsx", sheet("data3") firstrow
  browse 
  
* Variable 1: d2 (sexo)
  generate d2 = .
  replace d2 = 1 if (sexo == "masculino")
  replace d2 = 0 if (sexo == "femenino")
  label define lab_d2 1 "masculino" 0 "femenino", replace
  label values d2 lab_d2 
  label variable d2 "sexo | 1: masculino, 0: femenino"
  
* Modelo 1
  regress w d2
  ereturn list
  display _b[_cons]
  display _b[d2]
  display (_b[_cons] + _b[d2]) - (_b[_cons])
  display e(N)
  display e(F)
  display e(r2)
  
  regress w d2
  
  * Valor promedio del salario de los varones
  display "Varones" _b[_cons] + _b[d2]
  
  * Valor promedio del salario de las mujeres
  display "Mujeres" _b[_cons]
  
  * Diferencia
  display "Varones menos mujeres" _b[d2]
  
* Nota 
  generate lw = ln(w)
  generate lexp = ln(exp)
  regress lw lexp
  
log close  // FINAL DE LA BITACORA





