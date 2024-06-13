#!/bin/bash

# Ensure the script is run as superuser
if [ "$EUID" -ne 0 ]; then
  echo "Please run as superuser"
  exit
fi

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 path_to_image"
  exit 1
fi

IMAGE_PATH="$1"

# Check if the file exists
if [ ! -f "$IMAGE_PATH" ]; then
  echo "The file $IMAGE_PATH does not exist."
  exit 1
fi

# Create a directory for custom backgrounds
CUSTOM_BACKGROUND_DIR="/usr/share/backgrounds/custom"
mkdir -p "$CUSTOM_BACKGROUND_DIR"

# Copy the image to the custom backgrounds directory
cp "$IMAGE_PATH" "$CUSTOM_BACKGROUND_DIR/"

# Get the filename
IMAGE_FILENAME=$(basename "$IMAGE_PATH")

# Set the login screen background
GDM_CONFIG_DIR="/etc/alternatives/gdm3.css"
BACKUP_FILE="/etc/alternatives/gdm3.css.bak"

# Backup the current GDM configuration
cp "$GDM_CONFIG_DIR" "$BACKUP_FILE"

# Modify the GDM configuration to set the background
sed -i "/#lockDialogGroup {/a\  background: url(file://$CUSTOM_BACKGROUND_DIR/$IMAGE_FILENAME);\n  background-size: cover;" "$GDM_CONFIG_DIR"

echo "Login background changed to $IMAGE_PATH. A backup of the original configuration is saved at $BACKUP_FILE."
