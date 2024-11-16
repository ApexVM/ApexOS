import tkinter as tk
from tkinter import messagebox, scrolledtext
import subprocess
import threading

def execute_command(command):
    def run_command():
        try:
            process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
            for line in process.stdout:
                output_text.insert(tk.END, line)
                output_text.see(tk.END)  
            for error in process.stderr:
                output_text.insert(tk.END, "Error: " + error)
                output_text.see(tk.END)
            process.wait()
            output_text.insert(tk.END, "\n[Installation finished]\n")
        except Exception as e:
            messagebox.showerror("Error", str(e))
    
    threading.Thread(target=run_command).start()

def search_package():
    package = entry.get()
    if package:
        execute_command(f"apt search {package}")
    else:
        messagebox.showwarning("WARN: Please enter package name.")

def install_package():
    package = entry.get()
    if package:
        execute_command(f"sudo apt install -y {package}")
    else:
        messagebox.showwarning("WARN: Please enter package name.")

def uninstall_package():
    package = entry.get()
    if package:
        execute_command(f"sudo apt remove -y {package}")
    else:
        messagebox.showwarning("WARN: Please enter package name.")
def clean_cache():
    package = entry.get()
    if package:
        execute_command(f"sudo apt autoremove {package}")
    else:
        messagebox.showwarning("WARN: Please enter package name. (you can keep it blank to clear cache data)")

root = tk.Tk()
root.title("ApexOS Package Manager")
root.geometry("600x500")

entry = tk.Entry(root, width=50)
entry.pack(pady=10)

btn_search = tk.Button(root, text="Search", command=search_package)
btn_search.pack(pady=5)

btn_install = tk.Button(root, text="Install", command=install_package)
btn_install.pack(pady=5)

btn_uninstall = tk.Button(root, text="Remove", command=uninstall_package)
btn_uninstall.pack(pady=5)

btn_clean = tk.Button(root, text="Remove and Clean Cache", command=clean_cache)
btn_clean.pack(pady=5)

output_text = scrolledtext.ScrolledText(root, height=20, width=70)
output_text.pack(pady=10)

root.mainloop()
