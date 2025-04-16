#!/bin/bash

# GPIO Pin-Nummer (z.B. 18 für GPIO 18, der PWM-fähig ist)
PIN=12

# PWM-Wert (zwischen 0 und 255, wobei 0 ausgeschaltet und 255 maximaler Wert ist)
PWM_VALUE=150

# Dauer des Pulses in Sekunden
PWM_DURATION=0.1

echo "GPIO Pin $PIN wird für $PWM_DURATION auf $PWM_VALUE gepulsed"

# Setze den GPIO-Pin als Ausgang
pigs p $PIN $PWM_VALUE

sleep $PWM_DURATION

pigs p $PIN 0

echo "GPIO Pin $PIN wurde deaktiviert."
