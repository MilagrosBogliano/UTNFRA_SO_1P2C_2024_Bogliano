echo "creo la particion extendida"
n
e
1
enter
enter

echo"creo las particiones logicas todas de 1G c/u"
n
l
enter
+1G

echo"particione discos de alumnos"
for i in $(seq 5 7); do
  sudo mkfs.ext4 /dev/sdc$i
done

echo"particione discos de profesores"
sudo mkfs.ext4 /dev/sdc14

echo"montando alumnos"

for i in $(seq 1 3); do
  sudo mount /dev/sdc$((i + 4)) /Examenes-UTN/alumno1/parcial_$i
  sudo mount /dev/sdc$((i + 7)) /Examenes-UTN/alumno2/parcial_$i
  sudo mount /dev/sdc$((i + 10)) /Examenes-UTN/alumno3/parcial_$i
done

echo"montando profesores"
sudo mount /dev/sdc14 /Examenes-UTN/profesores/
