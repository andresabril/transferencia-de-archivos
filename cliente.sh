FILE=$(zenity --file-selection --title="Select a File" --multiple)
echo "$FILE"
case $? in
	0)
		nc -w3 192.168.250.46 1234 < "$FILE";;
	1)
		echo "No ha seleccionado ningun archivo.";;
	-1)
		echo "Ha ocurrido un error inesperado.";;
esac 
zenity --progress \
  title="Actualizando los registros del sistema" \
  text="Rastreando los registros de los correos..." \
  percentage=0

