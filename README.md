# BlackOut

A program to disable your Device's at low level, making them non detectable by the system. (Better Privacy?!)

## Installation
1) Clone this repository and change the working directory.
    ```
    git clone https://github.com/psycho-source/Blackout.git
    cd Blackout
    ```
2) Edit the three variables *webcam*, *bluetooth* and *wifi* according to your system.
   You can refer to [this](https://superuser.com/a/982292) answer to get the path to your device's bConfiguration file.
   &nbsp;
3) For system wide installation, run
   `./install.sh`
   &nbsp;
   > You can also install for a single user, just add `--user` flag
   > `./install.sh --user`
4) `sudo blackout -h`

## Usage

- #### Menu
    - Execute blackout as root in terminal
        >sudo blackout

        ![Screenshot 1](https://raw.githubusercontent.com/psycho-source/Blackout/master/ss1.png)
        Choose the option you want to toggle or `q` to quit.

- #### Quick disable
    - Execute blackout as root in terminal with one of the following flag.
        |Flag|Description|
        |:--:|:--:|
        |-a|Disables all devices in menu.|
        |-b|Disables Bluetooth|
        |-c|Disables WebCam|
        |-w|Disables Wifi|

        >sudo blackout -c

        ![Screenshot 2](https://raw.githubusercontent.com/psycho-source/Blackout/master/ss2.png)        
