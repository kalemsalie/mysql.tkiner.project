from tkinter import *
import mysql.connector
from tkinter import messagebox as mb
import tkinter as tk
from datetime import *

#importing all libraries that is needed

mydb = mysql.connector.connect(user="lifechoices",
password="@Lifechoices1234",
host="localhost",
database="lifechoicesonline",
auth_plugin="mysql_native_password")

#connecting mysql database

cursor = mydb.cursor()

#admin login window

window = Tk()
window.resizable(False,False)
window.geometry("600x200")
lbl1 = Label(window,text="Username: ")
user_entry = Entry(window)
lbl2 = Label(window,text="Password: ")
password_entry = Entry(window, show="*")

#admin log in function (username: lifechoices, password: @Lifechoices1234)
#function also imports admin page afer log in

def login():
    usern = user_entry.get()
    pswrd = password_entry.get()
    signin = "select * from admin where username=%s and password=%s"
    cursor.execute(signin,[usern,pswrd])
    fetch = cursor.fetchall()
    if fetch:
        for i in fetch:
            mb.showinfo("Message", "Welcome")
            window.destroy()
            import admin

            break

    else:
        mb.showinfo("Message", "Declined")                                 

btn3 = Button(window, text="login", command=login)

lbl1.pack()
user_entry.pack()
lbl2.pack()
password_entry.pack()
btn3.pack()

#function and button to return to main window

def returns():
    window.destroy()
    import eommysql

btn4 = Button(window, text="BACK", command=returns)
btn4.place(x=0, y=0)





    

window.mainloop()