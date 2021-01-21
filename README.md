# Bash-Menu
Bash-Menu created with Talha Bayburtlu, Melik Çağan Oduncuoğlu and Emre Aydemir. Menu gives user some options and those options are handled by calling related shell scripts.

## How To Use
By running menu as *"./myprogram.sh"* it starts the menu script. Then selecting an option will make a call to related shell script.

## Options
* **Create Histogram:** Takes a parameter as a file and starts to count the occurences between 0-9. Every line should only contain one number.
* **Encryption:** Takes two parameter; first one is the word and the second parameter is the encryption value. Script shifts values inside alphabet by given encryption value.
* **Delete Oldest:** Takes one optional parameter as a directory. If directory parameter is supplied, script will find and ask about whether deleting the oldest file in that directory
or not. If not supplied, it will do the same operation for current working directory.
* **Convert Numbers:** Takes one parameter as a file name to operate. It converts the alphanumber characters to words inside that file.
* **Organized Files:** Takes one optional parameter as -R option and one mandatory parameter as wildcard. If it is supplied it recursively copies to the matched files into
copied directory inside their working directory. If the -R option is not supplied it will do the same operation for only current working directory.
* **Exit:** Exits from menu and stops the shell script.
