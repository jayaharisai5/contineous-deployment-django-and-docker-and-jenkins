import os 

# Update linux
def update_linux():
    os.system("sudo apt-get update")
    os.system("sudo apt-get dist-upgrade")
    print("Updating and Upgrading Linux DONE")

def main():
    update_linux()  # Updating the linux

# This is main function
if __name__ == "__main__":
    main()
