import os 
import json 
import base64 
import sqlite3 
import win32crypt 
from Cryptodome.Cipher import AES 
import shutil 
from datetime import timezone, datetime, timedelta 


def chrome_date_and_time(chrome_data): 
    # Chrome_data format is 'year-month-date 
    # hr:mins:seconds.milliseconds 
    # This will return datetime.datetime Object 
    return datetime(1601, 1, 1) + timedelta(microseconds=chrome_data) 


def fetching_encryption_key(): 
    # Local_computer_directory_path will look 
    # like this below 
    # C: => Users => <Your_Name> => AppData => 
    # Local => Google => Chrome => User Data => 
    # Local State 
    local_computer_directory_path = input("Input Local State Location: ")
    
    with open(local_computer_directory_path, "r", encoding="utf-8") as f: 
        local_state_data = f.read() 
        local_state_data = json.loads(local_state_data) 

    # decoding the encryption key using base64 
    encryption_key = base64.b64decode( 
    local_state_data["os_crypt"]["encrypted_key"]) 
    
    # remove Windows Data Protection API (DPAPI) str 
    encryption_key = encryption_key[5:] 
    
    # return decrypted key 
    return win32crypt.CryptUnprotectData(encryption_key, None, None, None, 0)[1] 


def password_decryption(password, encryption_key): 
    try: 
        iv = password[3:15] 
        password = password[15:] 
        
        # generate cipher 
        cipher = AES.new(encryption_key, AES.MODE_GCM, iv) 
        
        # decrypt password 
        return cipher.decrypt(password)[:-16].decode() 
    except: 
        
        try: 
            return str(win32crypt.CryptUnprotectData(password, None, None, None, 0)[1]) 
        except: 
            return "No Passwords"


def main(): 
    
    
    cookies = []

    key = fetching_encryption_key() 
    db_path = input("Input Cookies Location: ")
    filename = "Cookies.db"
    shutil.copyfile(db_path, filename) 
    
    # connecting to the database 
    db = sqlite3.connect(filename) 
    cursor = db.cursor() 
    
    # 'logins' table has the data 
    cursor.execute( 
        "select host_key, name, encrypted_value from cookies "
        "order by last_update_utc") 
    
    # iterate over all rows 
    for row in cursor.fetchall(): 
        domain = row[0] 
        name = row[1] 
        value = password_decryption(row[2], key) 
        cookies.append({
            "name": name,
            "value": value,
            "domain": domain
        })
        # date_of_creation = row[4] 
        # last_usuage = row[5]       
        
        # if date_of_creation != 86400000000 and date_of_creation: 
        #     f.write(f"Creation date: {str(chrome_date_and_time(date_of_creation))}\n") 
        
        # if last_usuage != 86400000000 and last_usuage: 
        #     f.write(f"Last Used: {str(chrome_date_and_time(last_usuage))}\n") 
        # f.write("=" * 100 + "\n") 
    with open("cookies.json", "w", encoding="utf-8") as f:
        json.dump(cookies, f, indent=4)
    cursor.close() 
    db.close() 
    
    try: 
        
        # trying to remove the copied db file as 
        # well from local computer 
        os.remove(filename) 
    except: 
        pass


if __name__ == "__main__": 
    main() 
