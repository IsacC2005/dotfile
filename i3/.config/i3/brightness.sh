#!/bin/bash

# Obtener el brillo actual en porcentaje
BRIGHTNESS=$(brightnessctl -m | awk -F, '{print $4}')

# Elegir un icono basado en el nivel
LEVEL=$(echo $BRIGHTNESS | tr -d '%')

if [ "$LEVEL" -ge 70 ]; then
    ICON="☀️"
elif [ "$LEVEL" -ge 30 ]; then
    ICON="🔆"
else
    ICON="🔅"
fi

echo "$ICON $BRIGHTNESS"
