import pyautogui as mouse
import serial                                                           #uwaga, jak bedziecie instalowac to musi to byc pyserial, a nie serial


def make_x_y():
    raw_value = device_handler.read()
    int_value = int.from_bytes(raw_value, byteorder='big', signed=False)
    x_bytes = [0, 0, 0, 0]
    y_bytes = [0, 0, 0, 0]
    if int_value == 255:
        for i in range(4):
            x_bytes[i] = device_handler.read()
        for i in range(4):
            y_bytes[i] = device_handler.read()
        x_raw = x_bytes[0] + x_bytes[1] + x_bytes[2] + x_bytes[3]
        y_raw = y_bytes[0] + y_bytes[1] + y_bytes[2] + y_bytes[3]
        x = int.from_bytes(x_raw, byteorder='little', signed=True)
        y = int.from_bytes(y_raw, byteorder='little', signed=True)
        return x, y


def calc_to_pixel(x , y, raw_scale, pixel_scale):
    return_x = (x / raw_scale) * pixel_scale
    return_y = (y / raw_scale) * pixel_scale
    return_x = round(return_x)
    return_y = round(return_y)
    return return_x, return_y


device_handler = serial.Serial('COM7', 9600, timeout=1)
mouse.FAILSAFE = False
count = 0
while count < 100:
    raw_x, raw_y = make_x_y()
    pixel_x, pixel_y = calc_to_pixel(raw_x, raw_y, 10000, 100)
    print(pixel_x, pixel_y)
    mouse.moveRel(pixel_y, pixel_y)
    count += 1

device_handler.close()
