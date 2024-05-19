from lxml import html
import requests
import re
import os

def create_folder_if_not_exists(folder_name):
    if not os.path.exists(folder_name):
        os.makedirs(folder_name)
        print(f"The folder '{folder_name}' has been created.")
    else:
        print(f"The folder '{folder_name}' already exists.")

def download_files(home, json_pages):
    for year in json_pages:
        url = home + json_pages[year]
        print('Trying to download {} -> {}'.format(url, year))
        try:
            response = requests.get(url)
            if response.status_code == 200:
                create_folder_if_not_exists("files/{year}".format(year = year))
                with open("files/{year}/{year}.rar".format(year = year), "wb") as file:
                    file.write(response.content)
                    print("File downloaded successfully!")
            else:
                print("Failed to download the file.")
        except Exception as e:
                print(f"Failed to open the menu. \n Error: {e}")