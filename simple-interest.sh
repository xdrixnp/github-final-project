```bash
#!/bin/bash

echo "=================================="
echo "     CALCULADORA DE INTERÉS"
echo "          INTERÉS SIMPLE"
echo "=================================="
echo

read -p "Ingrese el capital inicial: " capital
read -p "Ingrese la tasa de interés (%): " tasa
read -p "Ingrese el período de tiempo: " periodo

interes=$(echo "scale=2; $capital * $tasa / 100 * $periodo" | bc)
monto=$(echo "scale=2; $capital + $interes" | bc)

echo
echo "=================================="
echo "           RESULTADOS"
echo "=================================="
echo "Capital inicial:   $capital"
echo "Tasa de interés:   $tasa%"
echo "Período:           $periodo"
echo "Interés generado:  $interes"
echo "Monto final:       $monto"
echo "=================================="
```
