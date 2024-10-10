#!/bin/bash

echo"creo directorio"
mkdir -p ~/Estructura_Asimetrica

echo"creo carpeta correo y cliente"
mkdir -p ~/Estructura_Asimetrica/correo
mkdir -p ~/Estructura_Asimetrica/clientes

echo"creo archivos en las carpetas"
for i in $(seq 1 100); do
  touch ~/Estructura_Asimetrica/correo/cartas_$i
  touch ~/Estructura_Asimetrica/clientes/cartas_$i
done

echo"creo archivo carteros en correo"
for i in $(seq 1 10); do
  touch ~/Estructura_Asimetrica/correo/carteros_$i
done

echo"muestro estructura"
tree ~/Estructura_Asimetrica
