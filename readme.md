Okay; this is what needs to be done

1) make a bootable core unix disc (iso attached)
2) Start up any machine (preferably one with many SATA slots) and run core os on it, with the discs to be cleared
3) write a file with a binary value of 1 (any quantity of ones in binary) in /home/tc/one
4) run the attached shell file
5) follow directions in file

Notes:

-This is version 1.0 I can make this a visual code at some point, but it's text for now.
-Supports up to 4 hard drives (not counting the hda os disc) at a time.
-I don't think core os cares what formatting the hard drive is, but it may.
-I don't have 4 hard drives which I don't mind being wiped, so the DD flags are not tested.
-It beeps 5 times upon finishing.
