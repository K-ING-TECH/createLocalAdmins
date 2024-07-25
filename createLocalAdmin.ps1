# Check if the user "testAdmin" is a member of the Administrators group
$userInAdmins = net localgroup administrators | Select-String -Pattern "testAdmin"

if ($userInAdmins) {
    # If user "blit-support" is already in the Administrators group, do nothing
    Write-Output "User 'testAdmin' is already a member of the Administrators group. No action needed."
} else {
    # If user "testAdmin" is not in the Administrators group, create the user and add to Administrators group
    $username = "testAdmin"
    $password = "Password123!"

    # Create the user
    net user $username $password /add

    # Add the user to the Administrators group
    net localgroup administrators $username /add

    Write-Output "User 'testAdmin' created and added to the Administrators group."
}