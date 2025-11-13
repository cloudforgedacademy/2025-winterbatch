anson@SnifflyAnson:~/ghost$ ./power.sh
hello what is your name
anson
hello anson

what are you doing
football
you are playing football?
anson@SnifflyAnson:~/ghost$ chomd u+x power.sh
Command 'chomd' not found, did you mean:
  command 'chmod' from deb coreutils (9.4-2ubuntu2)
Try: sudo apt install <deb name>
anson@SnifflyAnson:~/ghost$ chmod u+x power.sh
anson@SnifflyAnson:~/ghost$ chmod +x ghost35.txt
chmod: cannot access 'ghost35.txt': No such file or directory
anson@SnifflyAnson:~/ghost$ chmod +x power.sh
anson@SnifflyAnson:~/ghost$ ls -l pwoer.sh
ls: cannot access 'pwoer.sh': No such file or directory
anson@SnifflyAnson:~/ghost$ ls -l power.sh
-rwxr-xr-x 1 anson anson 149 Nov 12 21:21 power.sh
anson@SnifflyAnson:~/ghost$ chmod u+x power.sh
anson@SnifflyAnson:~/ghost$ ls -l power.sh
-rwxr-xr-x 1 anson anson 149 Nov 12 21:21 power.sh
anson@SnifflyAnson:~/ghost$ chmod 644 power.sh
anson@SnifflyAnson:~/ghost$ ls -l power.sh
-rw-r--r-- 1 anson anson 149 Nov 12 21:21 power.sh
anson@SnifflyAnson:~/ghost$ chmod 744 power.sh
anson@SnifflyAnson:~/ghost$ ls -l power.sh
-rwxr--r-- 1 anson anson 149 Nov 12 21:21 power.sh
anson@SnifflyAnson:~/ghost$