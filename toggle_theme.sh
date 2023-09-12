#!/bin/bash

# Function to change the theme to a light theme
switch_to_light_theme() {
  # Replace 'Arc' with the name of your light theme
  xfconf-query -c xsettings -p /Net/ThemeName -s "Arc"
  xfconf-query -c xfwm4 -p /general/theme -s "Arc"
}

# Function to change the theme to a dark theme
switch_to_dark_theme() {
  # Replace 'Arc-Darker' with the name of your dark theme
  xfconf-query -c xsettings -p /Net/ThemeName -s "Arc-Darker"
  xfconf-query -c xfwm4 -p /general/theme -s "Arc-Darker"
}

# Get the current hour in 24-hour format
current_hour=$(date +%H)

# Check if it's daytime (between 7 AM and 7 PM)
if [[ "$current_hour" -ge 7 && "$current_hour" -lt 19 ]]; then
  switch_to_light_theme
else
  switch_to_dark_theme
fi



#Author 
#Sumit Choudhary