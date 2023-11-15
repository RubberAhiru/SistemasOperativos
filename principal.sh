#!/bin/bash
#----------------------------------------MENU PARA EL ADMINISTRADOR DEL SISTEMA
while [ '$op' != 0 ]
do
  source ./funciones.sh #Fuente del script que contiene a las funciones
  echo -e "\nIngrese una de las siguientes opciones y presione enter:
   \n1 - Menu ABM\n2 - Menu crontab\n3 - Realizar respaldo\n4 - Auditoria\n0 - Salir"
   read op

    case $op in
      #---------------------------------------------------ALTA BAJA MODIFICACION
      #Se invocaran las funciones correspondientes o se saldra del menu (opcion 0)
      1)
        bash abm.sh
      ;;
      2)
      #-----------------------------------------------------CRONTAB
        menucrontab
      ;;
      #-----------------------------------------------------RESPALDO
      3)
        bash respaldo.sh
      ;;
      #-----------------------------------------------------AUDITORIA
      4)
        auditar
      ;;
      0)
        echo "Saliendo del menu..."
        sleep 1
        exit
    esac
done

