#!/bin/bash
#-----> Created by Pantaghos <-----#
y="\x1b["
R=$y"\e[37;1m"
B=$y"\e[36;1m"
D=$y"\e[35;1m"
ERROR=$y"38;05;204m"
A=$y"38;05;193m"
P="PANTA"


d=0
while [ $d -le 100 ]
do
  echo " "
  let d=$d+1
done

if [ "$1" = "install" ]
	then
	clear
		d=0
		while [ $d -le 100 ]
		do
		  echo " "
		  let d=$d+1
		done

		echo -e "$B[$D $P.install $B] $A ------------------------- $R"
		echo -e "$B[$D $P.install $B] $ERROR Commands for$A Install: $R"
		echo -e "$B[$D $P.install $B] $A ./panta.sh install-java $R"
		echo -e "$B[$D $P.install $B] $A ./panta.sh install-php $R"
		echo -e "$B[$D $P.install $B] $A ./panta.sh install-npm $R"
		echo -e "$B[$D $P.install $B] $A ./panta.sh install-apache2 $R"
		echo -e "$B[$D $P.install $B] $A ./panta.sh install-all $R"
		echo -e "$B[$D $P.install $B] $A ------------------------- $R"

elif [ "$1" = "install-php" ]
	then
		apt-get install screen php5-common libapache2-mod-php5 php5-cli -y
		apt-get update -y
		apt-get upgrade -y
		sudo apt-get install screen php5-common libapache2-mod-php5 php5-cli -y
		sudo apt-get update -y
		sudo apt-get upgrade -y
	clear
		d=0
		while [ $d -le 100 ]
		do
		  echo " "
		  let d=$d+1
		done
		echo -e "$B[$D $P.install-php $B] $A PHP5 is now installed! $R"

elif [ "$1" = "install-java" ]
	then
		echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
		echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
	clear
		apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
		apt-get update -y
		apt-get install oracle-java8-installer -y
	clear
		d=0
		while [ $d -le 100 ]
		do
		  echo " "
		  let d=$d+1
		done
		echo -e "$B[$D $P.install-java $B] $A Java is now installed! $R"

elif [ "$1" = "install-npm" ]
	then
		apt-get install npm -y
	clear 
		d=0
		while [ $d -le 100 ]
		do
		  echo " "
		  let d=$d+1
		done
		echo -e "$B[$D $P.install-npm $B] $A NPM is now installed! $R"

elif [ "$1" = "install-apache2" ]
	then
		apt-get install apache2 -y
	clear
		d=0
		while [ $d -le 100 ]
		do
		  echo " "
		  let d=$d+1
		done
		echo -e "$B[$D $P.install-apache2 $B] $A Apache2 is now installed! $R"

elif [ "$1" = "install-all" ]
	then
		apt-get install screen php5-common libapache2-mod-php5 php5-cli -y
		apt-get update -y
		apt-get upgrade -y
		sudo apt-get install screen php5-common libapache2-mod-php5 php5-cli -y
		sudo apt-get update -y
		sudo apt-get upgrade -y
	clear
		echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
		echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
	clear
		apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
		apt-get update -y
		apt-get install oracle-java8-installer -y
	clear
		apt-get install npm -y
	clear
		apt-get install apache2 -y
	clear

		d=0
		while [ $d -le 100 ]
		do
		  echo " "
		  let d=$d+1
		done
		
		echo -e "$B[$D $P.install-all $B] $A PHP is now installed! $R"
		echo -e "$B[$D $P.install-all $B] $A Java is now installed! $R"
		echo -e "$B[$D $P.install-all $B] $A NPM is now installed! $R"
		echo -e "$B[$D $P.install-all $B] $A Apache2 is now installed! $R"
		echo -e "$B[$D $P.install-all $B] $A ----------------------------- $R"

elif [ "$1" = "update" ]
	then
		apt-get update -y
		apt-get upgrade -y
	clear
		d=0
		while [ $d -le 100 ]
		do
		  echo " "
		  let d=$d+1
		done
		echo -e "$B[$D $P.update $B] $A Updates/Upgrades - Finished! $R"

else
	echo -e "$B[$D $P $B] $A Loading...$R"
	echo -e "$ERROR Use this Commands:
	 $A./panta.sh update
	 ./panta.sh install
	$R"

fi
