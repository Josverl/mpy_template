
from time import sleep

from foo import bar
from machine import Pin

led = Pin(2, Pin.OUT)


for i in range(10):
    led.value(not led.value())
    sleep(0.5)


bar()



