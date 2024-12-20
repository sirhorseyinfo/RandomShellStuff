#intro1=""
#intro2=""
#outro1=""
#outro2=""

station_logo() {
  echo "(logo)"
}

rotate() {
  randnum=$((RANDOM % 1 + 1))
  rotation_var="rotation_$randnum"
  case $randnum in
    1)
      echo "hi"
      ;;
    2)
      echo "Executing task for rotation 2"
      ;;
    3)
      echo "Executing task for rotation 3"
      ;;
    4)
      echo "4"
      ;;
    5)
      echo "5"
      ;;
    6)
      echo "6"
      ;;
    7)
      echo "7"
      ;;
    8)
      echo "8"
      ;;
    *)
      echo "[-!-]: Unexpected value: $randnum"
      ;;
    esac
}

rotate

exit