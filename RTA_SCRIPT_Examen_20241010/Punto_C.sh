#!/bin/bash

echo "Creo los grupos para Alumnos y maestro"
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

echo "Los agrego"
sudo useradd -m -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -G p1c2_2024_gProfesores p1c2_2024_P1
echo "les doy permisos"
sudo chmod 750 /Examenes-UTN/alumno_1
sudo chmod 700 /Examenes-UTN/alumno_2
sudo chmod 755 /Examenes-UTN/alumno_3
sudo chmod 7
