# shutdown_timer
Simple Ruby shutdown timer for linux.

This application will shutdown after a specific number of minutes that the user provides. I found that when Youtube autoplays the sleep timer built in will not actually shut off the computer. I made this aplication to solve that issue. 

To use this application you will need Ruby and Shoes(a GUI framework for Ruby).

*Ruby: https://www.ruby-lang.org/en/
*Shoes: http://shoesrb.com/

To launch the application without being on the command line, you must create a .desktop link:

    [Desktop Entry]
    Name=Shutdown
    Comment=
    Exec=/home/thomas/shutdown_timer/shutdown.rb
    Icon=
    Terminal=false
    Type=Application
    Categories=Application

put that code into /usr/share/applications/shutdown.desktop and you should be set.
