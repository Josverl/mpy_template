# demo 5

import os
from time import sleep

from foo import bar
from machine import Pin

print(os.listdir( )) 

led = Pin(2, Pin.OUT)


for i in range(10):
    led.value(not led.value())
    print(f"led value: {led.value()}")
    sleep(0.5)


bar()



