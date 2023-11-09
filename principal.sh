#!/bin/bash
#----------------------------------------MENU PARA EL ADMINISTRADOR DEL SISTEMA
while [ '$op' != 0 ]
do
  source ./funciones.sh #Fuente del script que contiene a las funciones
  echo -e "\nIngrese una de las siguientes opciones y presione enter:
   \n1 - Crear nuevo usuario\n2 - Crear nuevo grupo\n3 - Eliminar usuario \n4 - Eliminar grupo
   \n5 - Modificar usuario\n6 - Modificar grupo\n7 - Menu crontab\n8 - Realizar respaldo\n0 - Salir"
   read op

    case $op in
      #----------------------------------------------------------ALTA
      #Se invocaran las funciones correspondientes o se saldra del menu (opcion 0)
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
      #-----------------------------------------------------CRONTAB
      (7
        menucrontab
      ;;
      #-----------------------------------------------------RESPALDO
      8)
        bash respaldo.sh
      ;;
      0)
        echo "Saliendo del menu..."
        sleep 1
        exit
    esac
done

