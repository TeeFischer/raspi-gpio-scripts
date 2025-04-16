#!/bin/bash

# GPIO Pin-Nummer (z.B. 18 für GPIO 18, der PWM-fähig ist)
PIN=12

# PWM-Wert (zwischen 0 und 255, wobei 0 ausgeschaltet und 255 maximaler Wert ist)
PWM_VALUE=200

# Anzahl an Scritten bis zum Max-Wert
PWM_STEPS=20

# Dauer des Pulses in Sekunden
PWM_DURATION=0.3

# Dauer der Pause zwischen den Pulsen
PAUSE_DURATION=0.2

# Schleife für Pulse
#    Laser an
#    warten
#    Laser aus
#    warten
for i in $(seq 1 $PWM_STEPS);
do

PWM_STEP_VALUE=$(($PWM_VALUE/$PWM_STEPS*$i))

echo "GPIO Pin $PIN wird für $PWM_DURATION auf $PWM_STEP_VALUE gepulsed"

# Setze den GPIO-Pin als Ausgang
pigs p $PIN $PWM_STEP_VALUE

sleep $PWM_DURATION

pigs p $PIN 0

sleep $PAUSE_DURATION

done

echo "GPIO Pin $PIN wurde deaktiviert."
