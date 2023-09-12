# XFCE Theme Toggle Script Documentation

## Overview


The XFCE Theme Toggle Script is a Bash script designed to switch between light and dark themes in the XFCE desktop environment at specific times of the day. It uses the XFCE xfconf-query command to change the theme settings based on the current time.


## Prerequisites

Before using this script, ensure the following prerequisites are met:

  **XFCE Desktop Environment**: This script is intended for use with the XFCE desktop environment.
  
   **Themes Installed** : You should have both light and dark themes installed on your system.
   
   **xfconf-query**: The xfconf-query command must be available on your system.


  ## Script Usage

Follow these steps to use the XFCE Theme Toggle Script:

### Customize Theme Names

Open the script file (toggle_theme.sh) in a text editor. Replace "Arc" and "Arc-Darker" with the actual names of your light and dark themes in the script.

**Make the Script Executable**

Open a terminal and navigate to the directory containing the script (toggle_theme.sh). Make the script executable with the following command:


```  chmod +x toggle_theme.sh ``` 



## Configure XFCE Autostart

In XFCE, you can configure the script to run automatically at startup using the Autostart feature. Here's how:

1. Open the XFCE Settings Manager.

2. Navigate to the "Session and Startup" option.

3. Click on the "Application Autostart" tab.

4. Click the "Add" button to add a new autostart entry.

5. In the "Name" field, provide a descriptive name for the autostart entry (e.g., "Theme Toggle Script").
6. In the "Command" field, specify the full path to the script (e.g., /path/to/your/toggle_theme.sh).
7. Optionally, provide a description in the "Comment" field.
8. Click "OK" to save the autostart entry.

### Script Execution

The script will now automatically run at startup. During daytime hours (7 AM to 7 PM), it will switch to the light theme. During nighttime hours (7 PM to 7 AM), it will switch to the dark theme.


## Script Details

Here's an overview of the script's main components:

  The script contains two functions:
  
  **switch_to_light_theme**: Switches the XFCE theme to the specified light theme.
  
  **switch_to_dark_theme**: Switches the XFCE theme to the specified dark theme.

 The current hour in 24-hour format is obtained using date +%H.
 
 The script checks the current time and switches the theme accordingly:
        If the current hour is between 7 AM and 7 PM, it switches to the light theme.
        If the current hour is outside this range, it switches to the dark theme.

## Customization

You can customize this script by adjusting the theme names and other parameters as needed to fit your preferences and requirements.     



# Author - Sumit Choudhary
