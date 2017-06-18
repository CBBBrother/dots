from tkinter import *
import os

def shutdown(event):
    os.system('sudo shutdown -h now')

root = Tk()

btn = Button(root, text='shutdown', width=50, height=5, bg='grey', fg='black')
btn.bind('<Button-1>', shutdown)
btn.pack()
root.mainloop()

