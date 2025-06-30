#!/bin/bash

# Lese den Wert von S
S_VALUE=$1

# GPIO Pin-Nummer (z.B. 18 für GPIO 18, der PWM-fähig ist)
PIN=12

# Überprüfen, ob der Wert zwischen 0 und 255 liegt
if [[ "$S_VALUE" -ge 0 && "$S_VALUE" -le 255 ]]; then
    # Setze den GPIO-Pin als Ausgang
	pigs p $PIN $S_VALUE

	echo "GPIO Pin $PIN wurde auf PWM-Wert $S_VALUE gesetzt."
else
    echo "Ungültiger S-Wert: $S_VALUE (erlaubt: 0-255)"
    exit 1
fi

