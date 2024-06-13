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

3. **Download an Image**

    Download an image that you want to use as your new login background. You can use `wget` to download an image from the internet. For example, to download an image from a URL:

    ```sh
    wget -O ~/new_login_background.jpg https://example.com/path/to/your/image.jpg
    ```

    Replace `https://example.com/path/to/your/image.jpg` with the URL of the image you want to download.

4. **Run the Script**

    Run the script with superuser permissions, providing the path to your desired background image:

    ```sh
    sudo ./change_login_background.sh /path/to/your/image.png
    ```

    For example:

    ```sh
    sudo ./change_login_background.sh ~/new_login_background.jpg
    ```

5. **Restart Your System**

    After running the script, restart your system to apply the changes:

    ```sh
    sudo reboot
    ```

### Summary of Commands

```sh
cd ~
wget https://raw.githubusercontent.com/your-username/ubuntu-login-background/main/change_login_background.sh
sudo chmod +x change_login_background.sh
wget -O ~/new_login_background.jpg https://example.com/path/to/your/image.jpg
sudo ./change_login_background.sh ~/new_login_background.jpg
sudo reboot
