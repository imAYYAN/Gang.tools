import os, sys, time, os.path, pyperclip, pyautogui, ctypes
from colorama import Fore
from selenium import webdriver

def autologin() :
    os.system('cls' if os.name == 'nt' else 'clear')
    autologintitle()
    print(f"""[+] Enter the token of the account you want to connect to""")
    entertoken = str(input(f"""[#] Token: """))
    try:
        driver = webdriver.Chrome(executable_path=r'utilities/other/AL/chromedriver.exe')
        driver.maximize_window()
        driver.get('https://discord.com/login')
        js = 'function login(token) {setInterval(() => {document.body.appendChild(document.createElement `iframe`).contentWindow.localStorage.token = `"${token}"`}, 50);setTimeout(() => {location.reload();}, 500);}'
        time.sleep(3)
        driver.execute_script(js + f'login("{entertoken}")')
        time.sleep(10)
        if driver.current_url == 'https://discord.com/login':
            os.system('cls' if os.name == 'nt' else 'clear')
            autologintitle()
            print(f"""[{Fore.LIGHTRED_EX}!{Fore.RESET}] Connection Failed""")
            driver.close()
        else:
            os.system('cls' if os.name == 'nt' else 'clear')
            autologintitle()
            print(f"""[!] Connection Established""")
        input(f"""[>] Press ENTER to exit""")
        cls()
    except:
        print(f"""      [{Fore.LIGHTRED_EX}!{Fore.RESET}] There is a problem with your Token""")
        time.sleep(2)
        os.system('cls' if os.name == 'nt' else 'clear')

autologin()