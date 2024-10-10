#!/bin/bash

echo "Creo Estructura"

sudo mkdir -p /Examenes-UTN/{alumno_{1..3}/parcial_{1..3},profesores/}

echo "Muestro Estructura"

sudo tree /Examenes-UTN |column
sudo mkdir -p /Examenes-UTN/{alumno_{1..3}/parcial_{1..3},profesores/}
