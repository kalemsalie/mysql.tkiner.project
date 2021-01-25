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

cursor.execute(
    "CREATE TABLE IF NOT EXISTS admin(id int(11) Not null primary key AUTO_INCREMENT, full_name varchar(60) Default null, "
    "username varchar(50) Default null ,password varchar(20) Default null)")
mydb.commit()

cursor.execute("INSERT INTO admin(full_name, username, password) \
   SELECT * FROM (SELECT 'Admin', 'lifechoices', '@Lifechoices1234') as temp \
   WHERE NOT EXISTS \
   (SELECT 'lifechoices' FROM admin WHERE username = 'lifechoices') LIMIT 1")

mydb.commit()

#creating auto increment for admin table within database

window = Tk()
window.resizable(False,False)
window.geometry("600x200")
lbl1 = Label(window,text="Username: ")
user_entry = Entry(window)
lbl2 = Label(window,text="Password: ")
password_entry = Entry(window, show="*")
lbl3 = Label(window,text="For Admin Page hold Ctrl & A")

#landing window of programme with entries and labels 


def reg():
    window2 = Tk()
    window.resizable(False,False)
    lb = Label(window2, text="Full Name: ")
    name_entry = Entry(window2)
    lbl1 = Label(window2,text="Username: ")
    user_entry = Entry(window2)
    lbl2 = Label(window2,text="Password: ")
    password_entry = Entry(window2, show="*")
    lbl3 = Label(window2,text="Phone Number: ")
    phone_entry = Entry(window2)

    
#function for registration of accounts
    def insertreg():
        username = (name_entry.get(),user_entry.get(),password_entry.get(), phone_entry.get())
        cmd = "INSERT INTO users (full_name, user_name, password, mobile_number) VALUES (%s, %s, %s, %s)"
        try:
            cursor.execute(cmd, username)
            mydb.commit()
            mb.showinfo("Success","Account Registered")
            window2.destroy()
        except:
            mb.showerror('error','sql error')
    btn = Button(window2, text="Register", command=insertreg)
    #labels and entries for registration
    lb.pack()
    name_entry.pack()
    lbl1.pack()
    user_entry.pack()
    lbl2.pack()
    password_entry.pack()
    lbl3.pack()
    phone_entry.pack()
    btn.pack()
    window2.mainloop()
btn2 = Button(window, text="Register New User", command=reg)

#fucntion for login and get fetch information and store in database
def login():
    try:
        usern = user_entry.get()
        pswrd = password_entry.get()
        signin = "select * from users where user_name=%s and password=%s"
        cursor.execute(signin,[usern,pswrd])
        fetch = cursor.fetchall()
        time = datetime.now()
        clock = time.strftime("%H:%M:%S")
        day = time.strftime("%d/%m/%y")
        


#code to display messege when log in and log out        
        if fetch:
            for i in fetch:
                mb.showinfo("Message", "Welcome")
                window.destroy()
                window3 = Tk()
                def out():
                    d = datetime.now()
                    logout = d.strftime("%H:%M:%S")
                    cmd = "INSERT INTO time(username, date, logintime, logouttime) VALUES (%s, %s, %s, %s)"

                    cursor.execute(cmd, [(usern), (day), (clock), (logout)])
                    mydb.commit()
                    mb.showinfo("Message","Logged Out")
                    window3.destroy()
                    
                btn4 = Button(window3, text="Logout", command=out)
                btn4.pack()
                window3.mainloop()


                break

        else:
            failed()                                 

            
    except:
        mb.showerror("Login Failed","Please Check Username and Password, If You Do Not Have An Account Please Register")       
btn3 = Button(window, text="login", command=login)

lbl1.pack()
user_entry.pack()
lbl2.pack()
password_entry.pack()
btn2.pack()
btn3.pack()
lbl3.pack()

#binding ctrl+a to open admin window

keyspressed = ""
def key():
    global keyspressed
    window.destroy()
    import loginadmin

window.bind("<Control-a>", lambda x: key())



    

window.mainloop()
