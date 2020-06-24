import pyautogui as mouse
import serial                                                           #uwaga, jak bedziecie instalowac to musi to byc pyserial, a nie serial
import sys

com = sys.argv[0]


def make_x_y(device):
    raw_value = device.read()
    int_value = int.from_bytes(raw_value, byteorder='big', signed=False)
    x_bytes = [0, 0, 0, 0]
    y_bytes = [0, 0, 0, 0]
    if int_value == 255:
        for i in range(4):
            x_bytes[i] = device.read()
        for i in range(4):
            y_bytes[i] = device.read()
        x_raw = x_bytes[0] + x_bytes[1] + x_bytes[2] + x_bytes[3]
        y_raw = y_bytes[0] + y_bytes[1] + y_bytes[2] + y_bytes[3]
        x = int.from_bytes(x_raw, byteorder='little', signed=True)
        y = int.from_bytes(y_raw, byteorder='little', signed=True)
        return x, y


def calc_to_pixel(x, y, scale):
    return_x = x * scale
    return_y = y * scale
    return_x = round(return_x)
    return_y = round(return_y)
    return return_x, return_y


if __name__ == "__main__":
    device_handler = serial.Serial(com, 38400, timeout=1)
    mouse.FAILSAFE = False
    while True:
        raw_x, raw_y = make_x_y(device_handler)
        pixel_x, pixel_y = calc_to_pixel(raw_x, raw_y, 0.01)
        mouse.moveRel(pixel_y, pixel_y)


    #device_handler.close()
