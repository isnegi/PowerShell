# PowerShell

Use this script to telnet more than one server repeatedly to check those server's availability.

How to configure and use the script file:

1. In the first line, inside the parenthesis enter the IP's of servers along with their port number [e.g., ('localhost:80', 'localhost:80' , ...)].
2. Save the file anywhere on your machine.
3. Open PowerShell and change it's path to your script file's location or you can execute by giving the absolute path (I haven't tried, though it should work)
4. Execute it by .\shell_script.sh1
5. If your powershell throws PSSecurityException, Type "set-executionpolicy remotesigned" and hit enter. Now you should be able to run unknown scripts from your powershell terminal.
6. Now you'll see your script running, and checking every IP in a loop.

Note
The Default Execution Policy is set to restricted, you can see it by typing "Get-ExecutionPolicy". You should type the following to make it go to unrestricted mode:
  Set-ExecutionPolicy unrestricted


----end----
