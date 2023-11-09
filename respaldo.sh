#!/bin/bash

#respalda la base de datos, comprimiendo con gzip y nombrando el archivo incluyendo la fecha y hora del sistema 
mysqldump -u rubberahiru -p rubber_ahiru | gzip > ./respaldo/db/rubber_ahiru_$(date +%d-%m-%Y-%H-%M-%S).sql.gz