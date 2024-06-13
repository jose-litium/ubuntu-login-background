# Ubuntu Login Background

This repository contains a script and instructions to change the Ubuntu login screen background image.

## Script: `change_login_background.sh`

The `change_login_background.sh` script modifies your GDM configuration to change the login screen background.

### Instructions

1. **Download the Script**

    Download the script from this repository to your home directory.

    ```sh
    cd ~
    wget https://raw.githubusercontent.com/your-username/ubuntu-login-background/main/change_login_background.sh
    ```

2. **Make the Script Executable**

    Make the script executable by running:

    ```sh
    sudo chmod +x change_login_background.sh
    ```

3. **Run the Script**

    Run the script with superuser permissions, providing the path to your desired background image:

    ```sh
    sudo ./change_login_background.sh /path/to/your/image.png
    ```

    For example:

    ```sh
    sudo ./change_login_background.sh ~/Pictures/background.png
    ```

4. **Restart Your System**

    After running the script, restart your system to apply the changes:

    ```sh
    sudo reboot
    ```

### Summary of Commands

```sh
cd ~
wget https://raw.githubusercontent.com/your-username/ubuntu-login-background/main/change_login_background.sh
sudo chmod +x change_login_background.sh
sudo ./change_login_background.sh /path/to/your/image.png
sudo reboot
