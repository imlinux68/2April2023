#/bin/bash

function makedirs() {
echo "1. mkdirs"
cd ~
mkdir -p grocery/{Fruit/{Mango,Eggs},Vegetables/{Celery,Onion}}

echo "2. rename eggs to Grapes"
mv grocery/Fruit/Eggs  grocery/Fruit/Grapes

echo "3. write sentence to banana in grapes"
echo "Fruit is not a dessert" > grocery/Fruit/Grapes/banana

echo "4.copy banana to Mango and Celery"
tee grocery/Vegetables/Celery/banana grocery/Fruit/Mango/banana < grocery/Fruit/Grapes/banana

echo "5. mkdir tomato"
mkdir grocery/Vegetables/Tomato && mv grocery/Vegetables/Tomato grocery/Fruit/

echo "6. delete grocery"
sleep 3
rm -rvf ~/grocery

echo "7. install and check status ftpd in linux manjaro"
sudo pacman -S vsftpd &&  sudo systemctl status vsftpd
}

function username () {
authorized_users=( alice bob charlie )
watch=0
	read -p "enter a username: " name
		for user in "${authorized_users[@]}"
		do
		  if [ "$name" == "$user" ]
		  	then
				watch=1;
				echo "Found!";
				break;
		  fi
		done
			if [ $watch = 0 ]
				then
					echo " Not Found!!!"
			fi
}
