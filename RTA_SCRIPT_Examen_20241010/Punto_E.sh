echo"crea carpeta rta si no existe"
mkdir -p ~/RTA_ARCHIVOS_Examen_20241010

echo"crea archivo y guarda memoria ram"
grep MemTotal /proc/meminfo > ~/RTA_ARCHIVOS_Examen_20241010/Filtro_Basico.txt

echo"agrega fabricante del chasis"
sudo dmidecode -t chassis | grep "Manufacturer" >> ~/RTA_ARCHIVOS_Examen_20241010/Filtro_Basico.txt

echo"muestra todo el contenido"
cat ~/RTA_ARCHIVOS_Examen_20241010/Filtro_Basico.txt

