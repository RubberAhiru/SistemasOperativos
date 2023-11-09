#!/bin/bash
#------------------------------------------------------FUNCIONES

addusuario() {
	echo "ALTA DE USUARIO. Para cancelar presione Ctrl + c"
	read -p "Ingrese el nombre para el nuevo usuario: " NOM
	getent passwd $NOM  > /dev/null #busca en passwd el nombre ingresado, si este existe devuelve 0

	if [ $? -eq 0 ]; then
	  echo "El usuario ya existe, ingrese otro nombre"
	else
	  useradd $NOM
	  passwd  $NOM #para agregarle nueva contrasenia al nuevo usuario
	fi

}

addgrupo() {
	echo "ALTA DE GRUPO. Para cancelar presione Ctrl + c"
	read -p "Ingrese el nombre para el nuevo grupo: " GRU
	getent group $GRU  > /dev/null
	if [ $? -eq 0 ]; then
	  echo "El grupo ya existe, ingrese otro nombre para el grupo"
	else
	  groupadd $GRU
	fi

}

delusuario() {
	echo "BAJA DE USUARIO. Para cancelar presione Ctrl + c"
	read -p "Ingrese el nombre del usuario a eliminar: " NOMDEL
	getent passwd $NOMDEL  > /dev/null #busca en passwd el nombre ingresado, si este existe devuelve 0

	if [ $? -ne 0 ]; then
	  echo "El nombre de usuario ingresado no existe, ingrese el nombre correcto"
	else
	  userdel $NOMDEL
	fi

}

delgrupo() {
	echo "BAJA DE GRUPO. Para cancelar presione Ctrl + c"
	read -p "Ingrese el nombre del grupo a eliminar: " GRUDEL
	getent group $GRUDEL  > /dev/null

	if [ $? -ne 0 ]; then
	   echo "El nombre de grupo ingresado no existe, ingrese el nombre correcto"
	else
	  groupdel $GRUDEL
	fi

}

modusuario() {
	echo "MODIFICACION DE USUARIO. Para cancelar presione Ctrl + c"
	read -p "Ingrese el nombre del usuario a modificar: " NOMMOD
	getent passwd $NOMMOD  > /dev/null

	if [ $? -ne 0 ]; then
	   echo "El nombre de usuario ingresado no existe, ingrese el nombre correcto"
	else
	  usermod $NOMMOD
	  #tambien se debe cambiar el UID
	fi
}

modgrupo() {
	echo "MODIFICACION DE GRUPO. Para cancelar presione Ctrl + c"
	read -p "Ingrese el nombre del grupo a modificar: " GRUMOD
	getent group $GRUMOD  > /dev/null

	if [ $? -ne 0 ]; then
	   echo "El nombre de grupo ingresado no existe, ingrese el nombre correcto"
	else
	   groupmod $GRUMOD
	   #tambien se debe cambiar el GID
	fi
}

menucrontab() {
        echo -e "Ingrese una de las siguientes opciones y presione enter:
   \n1 - Listar Crontab\n2 - Editar Crontab\n3 - Salir"
   read op

   	case $op in

      1)
        crontab -l
        echo "\n"
      ;;
      2)
        crontab -e
      ;;
      3)
      ;;

    esac
}


#respaldar() {
	#bash respaldo.sh
#}

#auditar() {

#}

#menufirewall() {

#}

#menussh() {

#}
