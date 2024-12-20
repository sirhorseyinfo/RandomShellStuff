station880="stations/880.sh"
# Other stations
station1080="stations/1080.sh"

# Functions
tune_station() {
  local number="$1"
  local stationfile=("station" + $number)
  sleep 0.2
  ./$stationfile
}

logo1() {
  echo ""
}

next_step() {
  chmod +x station/909.sh
  ./station/909.sh
}

check_apps() {
  if command -v mpg123 >/dev/null; then
    echo "[...]: App mpg123 is installed."
  else
    echo -e "\e[31m[-!-]: App mpg123 not installed.\e[0m"
    sleep 0.6
    echo "[...]: Installing mpg123..."
    sleep 0.2
    sudo apt-get install mpg123
    sleep 1.1
    if command -v mpg123 >/dev/null; then
      echo "[...]: App successfully installed."
    else
      echo -e "\e[31m[-!-]: Error installing app.\e[0m"
      echo -e "\e[31m[-!-]: Get help before trying again.\e[0m"
      sleep 0.6
      exit
    fi
  fi
}

# Main code
clear
echo "
          ____     __   __
          |   \    | \ / |
          |  ./    |  \  |
          |--\     |     |
          |   \.  .|.   .|.
+----------------------------------+
  Radio Manual
+----------------------------------+"
sleep 0.6
echo "[...]: Checking required apps..."
sleep 0.2
check_apps

echo "[...]: Apps installed."
sleep 0.6
echo "[...]: Continuing..."
sleep 0.7
clear
next_step

exit