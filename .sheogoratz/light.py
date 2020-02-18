import os


light = input ("Select desired luminosity (10-1500) => ")

os.system ("sudo sh -c 'echo " + str(light) + " > /sys/class/backlight/intel_backlight/brightness'")
