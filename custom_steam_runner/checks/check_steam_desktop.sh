exec_path="/home/$USER/.config/custom_steam_runner/checks/check_custom_steam.py"
echo "Checking Steam desktop"
python $exec_path

if [ $? -ne 0 ]; then
    sudo python $exec_path "repair"

fi

if [ $? -ne 0 ]; then
	echo "Process not Finished succesfully"

else
echo "Successfully done"

fi


