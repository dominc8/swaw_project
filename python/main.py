import pyautogui as mouse
import serial                                                           #uwaga, jak bedziecie instalowac to musi to byc pyserial, a nie serial

device_handler = serial.Serial('COM7', 9600, timeout=1)
count = 0
step_flag = "x"
while count < 100:
    raw_value = device_handler.read()
    if step_flag == "x":
        x = int.from_bytes(raw_value, byteorder='big', signed=True)
        step_flag = "y"

    elif step_flag == "y":

        y = int.from_bytes(raw_value, byteorder='big', signed=True)
        step_flag = "end"

    elif step_flag == "end":
        mouse.moveRel(x, y)
        print(x, y)
        step_flag = "x"
        count += 1

    else:
        print("error")

device_handler.close()
