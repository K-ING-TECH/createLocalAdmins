<h1>createLocalAdmin</h1>


<h2>Description</h2>
This PowerShell script is designed to manage the membership of a local user account within the Administrators group on a Windows machine. The script performs the following tasks:

    Check User Membership:
        It checks if the user testAdmin is already a member of the Administrators group by using the net localgroup administrators command and filtering the output with Select-String.

    Conditional Actions:
        If testAdmin is found to be a member of the Administrators group, the script outputs a message indicating no action is needed.
        If testAdmin is not a member, the script proceeds to create the user and add them to the Administrators group.

    User Creation:
        Defines the username (testAdmin) and a default password (Password123!).
        Uses the net user command to create the user with the specified password.

    Add User to Administrators Group:
        Uses the net localgroup administrators command to add the newly created user to the Administrators group.
        Outputs a message indicating the user has been created and added to the Administrators group.
<br />


<h2>Languages and Utilities Used</h2>

- <b>PowerShell</b> 

<h2>Environments Used </h2>

- <b>Windows 11</b>

<h2>Script running, outputting and verification:</h2>
<p align="center">
 <br/>
<img src="https://i.imgur.com/FJwi0hB.png" height="80%" width="80%" alt="Script running, outputting and verification"/>
<br />
<br />

</p>

<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
