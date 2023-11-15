#!/bin/bash
#----------------------------------ALTA BAJA MODIFICACION
source ./funciones.sh #Fuente del script que contiene a las funciones

echo -e "Ingrese una de las siguientes opciones y presione enter:\n
  	1 - Agregar usuario\n
 	2 - Agregar grupo\n
 	3 - Borrar usuario\n
 	4 - Borrar grupo\n
 	5 - Modificar usuario\n
 	6 -	Modificar grupo\n
 	0 - Salir"
 	read op
 	
 	case $op in
 		#----------------------------------------------------------ALTA
	   1)
	    addusuario
      ;;
      2)
        addgrupo
      ;;
      #----------------------------------------------------------BAJA
      3)
        delusuario
      ;;
      4)
        delgrupo
      ;;
      #------------------------------------------------------MODIFICACION
      5)
        modusuario
      ;;  
      6)
        modgrupo
      ;;
      0)
      echo "Saliendo del menu..."
        sleep 1
        exit
    esac


