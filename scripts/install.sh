#!/bin/bash

echo

PS3='What is your system Architecture?: '
options=("Amd64" "Aarch64")
select opt in "${options[@]}"
do
    case $opt in
        "Amd64")
            echo "You chose Amd64"
            break
            ;;
        "Aarch64")
            echo "You chose Aarch64"
            break
            ;;
        *) echo "invalid option $REPLY";;
        
    esac
done
echo


# show choices
read -p "Proceed with installation? (y/n): " choice
# simple choice infos after choosing
case $choice in

[yY]* ) echo "Starting installation..." ;;
[nN]* ) echo "Stopping installation" ;;

*) echo "Invalid argument";;
esac

# installing if accepted
if [ "$choice" = "y" ]; then

	echo
	echo "Creating data directories..."
	
	sudo mkdir /var/lib/rawr
	sudo mkdir /var/lib/rawr/packages/

	echo
	echo "Starting export script..."
	./export.sh

	echo
	if [ "$opt" = "Amd64" ]; then
	echo "Copying Amd64 binary to '/usr/bin'..."
	sudo cp ../exports/rawr-amd64 /usr/bin/rawr
	elif [ "$opt" = "Aarch64" ]; then
	echo "Copying Aarch64 binary to '/usr/bin'..."
	sudo cp ../exports/rawr-aarch64 /usr/bin/rawr
	fi
	
	echo
	echo "Install complete! Run 'rawr', 'rawr help' or 'rawr --help' to get familiar with rawr"
	
fi

echo
exit
