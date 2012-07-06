
#!/bin/sh


echo -n "Disc Wiper: Designed and Written for BAE FOCUS"
echo "Version 1.0"
# Run as SUDO on coreLinux
echo "by Ryan Birmingham and Matthew Lamport"
echo -e "How many Discs?"
echo "version 1 supports cleaning of up to 4 drives at a time (not counting OS disc)"
Read disccount

echo -e "How many iterations?"

Read iterationcount

if [ 0 < iterationcount ]

	for (( c=0; c<iterationcount; c++ ))
	do
		dd if=/home/tc/one of=/dev/hdb bs=1M

		dd if=/dev/zero of=/dev/hdb bs=1M

		dd if=/dev/random of=/dev/hdb bs=1M

	done
	echo -n "one done %iterationcount iterations"
fi

if [ 1 < iterationcount ]


	for (( c=0; c<iterationcount; c++ ))
	do
		dd if=/home/tc/one of=/dev/hdc bs=1M

		dd if=/dev/zero of=/dev/hdc bs=1M

		dd if=/dev/random of=/dev/hdc bs=1M

	done
	echo -n "two done %iterationcount iterations"
fi

if [ 2 < iterationcount ]


	for (( c=0; c<iterationcount; c++ ))
	do
		dd if=/home/tc/one of=/dev/hdd bs=1M

		dd if=/dev/zero of=/dev/hdd bs=1M

		dd if=/dev/random of=/dev/hdd bs=1M

	done
	echo -n "three done %iterationcount iterations"
fi

if [ 3 < iterationcount ]

	for (( c=0; c<iterationcount; c++ ))
	do

		dd if=/home/tc/one of=/dev/hde bs=1M

		dd if=/dev/zero of=/dev/hde bs=1M

		dd if=/dev/random of=/dev/hde bs=1M

	done
	echo -n "four done %iterationcount iterations"
fi

clear
echo -e "/a /a /a /a /a /n  $disccount Drives Wiped. /n /n please power off, remove new clean discs, and restart /n take care not to remove Wiper Disc /n /v Hit enter to exit this code."
read exit
quit
