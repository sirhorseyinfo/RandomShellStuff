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

check_apps() {
  if command -v mpg123 >/dev/null; then
    echo "[...]: App mpg123 is installed." > /dev/console
  else
    echo "[-!-]: App mpg123 not installed."
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

exit