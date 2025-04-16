#!/bin/bash

# GPIO Pin-Nummer (z.B. 18 für GPIO 18, der PWM-fähig ist)
PIN=12

# PWM-Wert (zwischen 0 und 255, wobei 0 ausgeschaltet und 255 maximaler Wert ist)
PWM_VALUE=0

# Setze den GPIO-Pin als Ausgang
pigs p $PIN $PWM_VALUE

echo "GPIO Pin $PIN wurde auf PWM-Wert $PWM_VALUE gesetzt."
