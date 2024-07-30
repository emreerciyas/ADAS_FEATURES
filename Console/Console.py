import tkinter as tk
from tkinter import ttk
import threading
import math
import serial

# Global variables to store the values
dist = speed = rel_speed = safety_dist = accel = status = 0

def readserial(comport, baudrate, callback):
    ser = serial.Serial(comport, baudrate, timeout=0.1)
    while True:
        data = ser.readline().decode().strip()
        if data:
            callback(data)

def parse_data(data):
    if data.startswith("<") and data.endswith(">"):
        values = data[1:-1].split('.')
        values = [float(v) if v else 0 for v in values]
        return values
    return [0] * 6

def update_gauge(canvas, value, max_value, label):
    canvas.delete("all")
    width = canvas.winfo_width()
    height = canvas.winfo_height()
    radius = min(width, height) // 2 - 20
    x = width // 2
    y = height // 2 + 20

    # Draw background arc
    canvas.create_arc(x - radius, y - radius, x + radius, y + radius, start=0, extent=180, style=tk.ARC, outline='#444444', width=20)

    # Draw ticks and labels
    for i in range(0, 201, 20):
        angle = (i / max_value) * 180
        x_start = x + (radius - 10) * math.cos(math.radians(180 - angle))
        y_start = y - (radius - 10) * math.sin(math.radians(180 - angle))
        x_end = x + radius * math.cos(math.radians(180 - angle))
        y_end = y - radius * math.sin(math.radians(180 - angle))
        canvas.create_line(x_start, y_start, x_end, y_end, width=2, fill='#FFFFFF')
        label_x = x + (radius - 30) * math.cos(math.radians(180 - angle))
        label_y = y - (radius - 30) * math.sin(math.radians(180 - angle))
        canvas.create_text(label_x, label_y, text=str(i), font=("Helvetica", 10), fill='#FFFFFF')

    # Draw needle
    angle = (value / max_value) * 180
    x_end = x + radius * math.cos(math.radians(180 - angle))
    y_end = y - radius * math.sin(math.radians(180 - angle))
    canvas.create_line(x, y, x_end, y_end, width=4, fill='#FF0000')

    # Draw center circle
    canvas.create_oval(x - 10, y - 10, x + 10, y + 10, fill='#FF0000', outline='')

    # Draw value label in the center
    canvas.create_text(x, y + 60, text=f"{int(value)}", font=("Helvetica", 48, "bold"), fill='#FFFFFF')
    canvas.create_text(x, y + 100, text="km/h", font=("Helvetica", 24, "bold"), fill='#FFFFFF')

def draw_car(canvas, x, y, color):
    car_body_length = 50
    car_body_height = 15
    tire_radius = 5
    tire_offset = 10
    window_color = "#B0C4DE"
    roof_color = "#E6E6FA"
    outline_color = "#2C3E50"

    car_body = canvas.create_rectangle(
        x - car_body_length // 2, y - car_body_height // 2,
        x + car_body_length // 2, y + car_body_height // 2,
        fill=color, outline=outline_color, width=2)

    roof_length = car_body_length * 0.6
    roof_height = car_body_height * 0.6
    car_roof = canvas.create_polygon(
        x - roof_length // 2, y - car_body_height // 2,
        x + roof_length // 2, y - car_body_height // 2,
        x + roof_length // 4, y - car_body_height // 2 - roof_height,
        x - roof_length // 4, y - car_body_height // 2 - roof_height,
        fill=roof_color, outline=outline_color, width=2)

    front_window = canvas.create_polygon(
        x - roof_length // 4, y - car_body_height // 2,
        x + roof_length // 4, y - car_body_height // 2,
        x + roof_length // 4 - 5, y - car_body_height // 2 - roof_height + 5,
        x - roof_length // 4 + 5, y - car_body_height // 2 - roof_height + 5,
        fill=window_color, outline=outline_color, width=2)
    rear_window = canvas.create_polygon(
        x - roof_length // 4, y - car_body_height // 2 + roof_height,
        x + roof_length // 4, y - car_body_height // 2 + roof_height,
        x + roof_length // 4 - 5, y - car_body_height // 2 + 5,
        x - roof_length // 4 + 5, y - car_body_height // 2 + 5,
        fill=window_color, outline=outline_color, width=2)

    front_tire = canvas.create_oval(
        x - car_body_length // 2 + tire_offset - tire_radius, y + car_body_height // 2 - tire_radius,
        x - car_body_length // 2 + tire_offset + tire_radius, y + car_body_height // 2 + tire_radius,
        fill="black", outline=outline_color, width=2)
    rear_tire = canvas.create_oval(
        x + car_body_length // 2 - tire_offset - tire_radius, y + car_body_height // 2 - tire_radius,
        x + car_body_length // 2 - tire_offset + tire_radius, y + car_body_height // 2 + tire_radius,
        fill="black", outline=outline_color, width=2)

def update_distance(canvas, distance):
    canvas.delete("all")
    width = canvas.winfo_width()
    height = canvas.winfo_height()

    static_car_x = width // 4
    moving_car_x = static_car_x + 50 + distance

    draw_car(canvas, static_car_x, height // 2, "#1E90FF")
    draw_car(canvas, moving_car_x, height // 2, "#FF4500")

    canvas.create_text(width // 2, height // 2 + 50, text=f"Distance: {distance:.1f} m", font=("Helvetica", 14, "bold"), fill="#FFFFFF")

def update_labels():
    global rel_speed, safety_dist, accel
    rel_speed_kmh = rel_speed / 10.0
    safety_dist_m = safety_dist / 10.0
    accel_ms2 = accel / 1000.0

    rel_speed_label.config(text=f"Relative Speed: {rel_speed_kmh:.1f} km/h")
    safety_dist_label.config(text=f"Safety Distance: {safety_dist_m:.1f} m")
    accel_label.config(text=f"Acceleration: {accel_ms2:.1f} m/s²")

    status_texts = ["Default", "Emergency Brake", "Emergency Brake", "Collision Avoidance", "ACC", "CC"]
    status_label.config(text=f"Status: {status_texts[int(status)]}")

def update_data(values):
    global dist, speed, rel_speed, safety_dist, accel, status
    dist, speed, rel_speed, safety_dist, accel, status = values
    update_gauge(speed_canvas, speed, 200, "Speed")
    update_distance(dist_canvas, dist / 10.0)
    update_labels()

def data_callback(data):
    values = parse_data(data)
    update_data(values)

def start_reading():
    thread = threading.Thread(target=readserial, args=('COM5', 115200, data_callback))
    thread.daemon = True
    thread.start()

# GUI setup
root = tk.Tk()
root.title("Luxury Car Dashboard")
root.geometry("920x620")
root.configure(bg="#1a1a1a")

# Title label
title_label = ttk.Label(root, text="Car Dashboard", font=("Helvetica", 24, "bold"), background="#1a1a1a", foreground="#FFD700")
title_label.pack(pady=5)

# Speed gauge canvas
speed_canvas = tk.Canvas(root, width=400, height=260, bg="#1a1a1a", highlightthickness=0)
speed_canvas.pack(pady=5)

# Distance canvas with improved car icons
dist_canvas = tk.Canvas(root, width=435, height=150, bg="#1a1a1a", highlightthickness=0)
dist_canvas.pack(pady=5)

# Container for the other information
info_frame = tk.Frame(root, bg="#1a1a1a")
info_frame.pack(pady=5)

# Relative Speed
rel_speed_frame = tk.Frame(info_frame, bg="#1a1a1a")
rel_speed_frame.grid(row=0, column=0, padx=20, pady=10, sticky="w")
rel_speed_icon = tk.Label(rel_speed_frame, text="🚗", font=("Helvetica", 24), bg="#1a1a1a", fg="#FFD700")
rel_speed_icon.pack(side="left")
rel_speed_label = tk.Label(rel_speed_frame, text="Relative Speed: 0.0 km/h", font=("Helvetica", 14), bg="#1a1a1a", fg="white")
rel_speed_label.pack(side="left", padx=10)

# Safety Distance
safety_dist_frame = tk.Frame(info_frame, bg="#1a1a1a")
safety_dist_frame.grid(row=0, column=1, padx=20, pady=10, sticky="w")
safety_dist_icon = tk.Label(safety_dist_frame, text="🛡", font=("Helvetica", 24), bg="#1a1a1a", fg="#FFD700")
safety_dist_icon.pack(side="left")
safety_dist_label = tk.Label(safety_dist_frame, text="Safety Distance: 0.0 m", font=("Helvetica", 14), bg="#1a1a1a", fg="white")
safety_dist_label.pack(side="left", padx=10)

# Acceleration
accel_frame = tk.Frame(info_frame, bg="#1a1a1a")
accel_frame.grid(row=1, column=0, padx=20, pady=10, sticky="w")
accel_icon = tk.Label(accel_frame, text="⚡", font=("Helvetica", 24), bg="#1a1a1a", fg="#FFD700")
accel_icon.pack(side="left")
accel_label = tk.Label(accel_frame, text="Acceleration: 0.0 m/s²", font=("Helvetica", 14), bg="#1a1a1a", fg="white")
accel_label.pack(side="left", padx=10)

# Status
status_frame = tk.Frame(info_frame, bg="#1a1a1a")
status_frame.grid(row=1, column=1, padx=20, pady=10, sticky="w")
status_icon = tk.Label(status_frame, text="ℹ️", font=("Helvetica", 24), bg="#1a1a1a", fg="#FFD700")
status_icon.pack(side="left")
status_label = tk.Label(status_frame, text="Status: Default", font=("Helvetica", 14), bg="#1a1a1a", fg="white")
status_label.pack(side="left", padx=10)

# Automatically start reading data on startup
start_reading()

root.mainloop()
