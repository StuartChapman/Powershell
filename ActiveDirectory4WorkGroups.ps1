function GenerateForm {
# Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null

#region Generated Form Objects
$form1 = New-Object System.Windows.Forms.Form

# Remove the maximize button - it will be greyed out.
$form1.MaximizeBox = $false
# Remove the minimize button - it will be greyed out.
$form1.MinimizeBox = $false

$Console_Box = New-Object System.Windows.Forms.GroupBox
$richTextBox1 = New-Object System.Windows.Forms.RichTextBox
$Tools_Box = New-Object System.Windows.Forms.GroupBox
$NSLookup_button = New-Object System.Windows.Forms.Button
$PSTOOLS_button = New-Object System.Windows.Forms.Button
$help_button = New-Object System.Windows.Forms.Button
$clear_button = New-Object System.Windows.Forms.Button
$tracert_button = New-Object System.Windows.Forms.Button
$PING_button = New-Object System.Windows.Forms.Button
$InputDetailsgroupBox = New-Object System.Windows.Forms.GroupBox
$csv_button = New-Object System.Windows.Forms.Button
$csv_textBox = New-Object System.Windows.Forms.TextBox
$password_reset_textBox = New-Object System.Windows.Forms.TextBox
$csv_label = New-Object System.Windows.Forms.Label
$group_label = New-Object System.Windows.Forms.Label
$adminuser_textBox1 = New-Object System.Windows.Forms.TextBox
$admin_label = New-Object System.Windows.Forms.Label
$user_to_manage_label = New-Object System.Windows.Forms.Label
$group_textBox = New-Object System.Windows.Forms.TextBox
$ipaddress_label = New-Object System.Windows.Forms.Label
$password_textBox2 = New-Object System.Windows.Forms.TextBox
$password_label = New-Object System.Windows.Forms.Label
$ipaddress_textBox3 = New-Object System.Windows.Forms.TextBox
$user_to_manage_textBox = New-Object System.Windows.Forms.TextBox
$reset_password_label = New-Object System.Windows.Forms.Label
$GroupManagementBox = New-Object System.Windows.Forms.GroupBox
$delete_group_button = New-Object System.Windows.Forms.Button
$Delete_User_From_Group_button = New-Object System.Windows.Forms.Button
$Create_Group_button = New-Object System.Windows.Forms.Button
$group_membership_button = New-Object System.Windows.Forms.Button
$list_groups_button = New-Object System.Windows.Forms.Button
$add_user_to_group_button = New-Object System.Windows.Forms.Button
$UserManagementBox = New-Object System.Windows.Forms.GroupBox
$disable_user_button = New-Object System.Windows.Forms.Button
$Create_User_button = New-Object System.Windows.Forms.Button
$enable_user_button = New-Object System.Windows.Forms.Button
$delete_user_button = New-Object System.Windows.Forms.Button
$reset_password_button = New-Object System.Windows.Forms.Button
$find_user_button = New-Object System.Windows.Forms.Button
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState

#--------------------------------------------------------------------------------------------------------------------------------

$OnLoadForm_StateCorrection=
{#Correct the initial state of the form to prevent the .Net maximized form issue
	$form1.WindowState = $InitialFormWindowState
}

#--------------------------------------------------------------------------------------------------------------------------------
#region Generated Form Code
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 708
$System_Drawing_Size.Width = 777
$form1.ClientSize = $System_Drawing_Size

# Disable resize of window:
$form1.FormBorderStyle = 3

$form1.DataBindings.DefaultDataSourceUpdateMode = 0
$form1.Name = "form1"
$form1.Text = "Active Directory for Workgroups"

#--------------------------------------------------------------------------------------------------------------------------------

$Console_Box.Anchor = 15
$Console_Box.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 13
$System_Drawing_Point.Y = 335
$Console_Box.Location = $System_Drawing_Point
$Console_Box.Name = "Console_Box"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 361
$System_Drawing_Size.Width = 752
$Console_Box.Size = $System_Drawing_Size
$Console_Box.TabIndex = 37
$Console_Box.TabStop = $False
$Console_Box.Text = "Console:"
$form1.Controls.Add($Console_Box)

#--------------------------------------------------------------------------------------------------------------------------------

$richTextBox1.Anchor = 15
$richTextBox1.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 19
$richTextBox1.Location = $System_Drawing_Point
$richTextBox1.Name = "richTextBox1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 336
$System_Drawing_Size.Width = 740
$richTextBox1.Size = $System_Drawing_Size
$richTextBox1.TabIndex = 38
$richTextBox1.Text = ""
$Console_Box.Controls.Add($richTextBox1)

#--------------------------------------------------------------------------------------------------------------------------------

$Tools_Box.Anchor = 15
$Tools_Box.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 13
$System_Drawing_Point.Y = 216
$Tools_Box.Location = $System_Drawing_Point
$Tools_Box.Name = "Tools_Box"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 113
$System_Drawing_Size.Width = 396
$Tools_Box.Size = $System_Drawing_Size
$Tools_Box.TabIndex = 30
$Tools_Box.TabStop = $False
$Tools_Box.Text = "Tools:"
$form1.Controls.Add($Tools_Box)

#--------------------------------------------------------------------------------------------------------------------------------

$NSLookup_button.Anchor = 15
$NSLookup_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 208
$System_Drawing_Point.Y = 79
$NSLookup_button.Location = $System_Drawing_Point
$NSLookup_button.Name = "NSLookup_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 25
$System_Drawing_Size.Width = 182
$NSLookup_button.Size = $System_Drawing_Size
$NSLookup_button.TabIndex = 36
$NSLookup_button.Text = "NSLookup"
$NSLookup_button.UseVisualStyleBackColor = $True
$NSLookup_button.add_Click({nslookup_Host_ButtonChecks})
$Tools_Box.Controls.Add($NSLookup_button)

#--------------------------------------------------------------------------------------------------------------------------------

$PSTOOLS_button.Anchor = 15
$PSTOOLS_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 18
$PSTOOLS_button.Location = $System_Drawing_Point
$PSTOOLS_button.Name = "PSTOOLS_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 25
$System_Drawing_Size.Width = 182
$PSTOOLS_button.Size = $System_Drawing_Size
$PSTOOLS_button.TabIndex = 31
$PSTOOLS_button.Text = "SysInternals PSTools"
$PSTOOLS_button.UseVisualStyleBackColor = $True
$PSTOOLS_button.add_Click({PSTOOLS})
$Tools_Box.Controls.Add($PSTOOLS_button)

#--------------------------------------------------------------------------------------------------------------------------------

$help_button.Anchor = 15
$help_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 208
$System_Drawing_Point.Y = 18
$help_button.Location = $System_Drawing_Point
$help_button.Name = "help_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 25
$System_Drawing_Size.Width = 182
$help_button.Size = $System_Drawing_Size
$help_button.TabIndex = 32
$help_button.Text = "Help and Usage"
$help_button.UseVisualStyleBackColor = $True
$help_button.add_Click({Help})
$Tools_Box.Controls.Add($help_button)

#--------------------------------------------------------------------------------------------------------------------------------

$clear_button.Anchor = 15
$clear_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 208
$System_Drawing_Point.Y = 48
$clear_button.Location = $System_Drawing_Point
$clear_button.Name = "clear_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 26
$System_Drawing_Size.Width = 182
$clear_button.Size = $System_Drawing_Size
$clear_button.TabIndex = 34
$clear_button.Text = "Clear Console"
$clear_button.UseVisualStyleBackColor = $True
$clear_button.add_Click({$richTextBox1.clear()})
$Tools_Box.Controls.Add($clear_button)

#--------------------------------------------------------------------------------------------------------------------------------

$tracert_button.Anchor = 15
$tracert_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 79
$tracert_button.Location = $System_Drawing_Point
$tracert_button.Name = "tracert_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 25
$System_Drawing_Size.Width = 182
$tracert_button.Size = $System_Drawing_Size
$tracert_button.TabIndex = 35
$tracert_button.Text = "Trace Route"
$tracert_button.UseVisualStyleBackColor = $True
$tracert_button.add_Click({tracert_host_ButtonChecks})
$Tools_Box.Controls.Add($tracert_button)

#--------------------------------------------------------------------------------------------------------------------------------

$PING_button.Anchor = 15
$PING_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 49
$PING_button.Location = $System_Drawing_Point
$PING_button.Name = "PING_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 25
$System_Drawing_Size.Width = 182
$PING_button.Size = $System_Drawing_Size
$PING_button.TabIndex = 33
$PING_button.Text = "Ping Host"
$PING_button.UseVisualStyleBackColor = $True
$PING_button.add_Click({PingHost_ButtonChecks})
$Tools_Box.Controls.Add($PING_button)

#--------------------------------------------------------------------------------------------------------------------------------

$InputDetailsgroupBox.Anchor = 15
$InputDetailsgroupBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 416
$System_Drawing_Point.Y = 13
$InputDetailsgroupBox.Location = $System_Drawing_Point
$InputDetailsgroupBox.Name = "InputDetailsgroupBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 264
$System_Drawing_Size.Width = 349
$InputDetailsgroupBox.Size = $System_Drawing_Size
$InputDetailsgroupBox.TabIndex = 14
$InputDetailsgroupBox.TabStop = $False
$InputDetailsgroupBox.Text = "Input Details:"
$form1.Controls.Add($InputDetailsgroupBox)

#--------------------------------------------------------------------------------------------------------------------------------

$csv_button.Anchor = 15
$csv_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 231
$csv_button.Location = $System_Drawing_Point
$csv_button.Name = "csv_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 150
$csv_button.Size = $System_Drawing_Size
$csv_button.TabIndex = 29
$csv_button.Text = "Edit CSV File"
$csv_button.UseVisualStyleBackColor = $True
$csv_button.add_Click({EditCSVFile_ButtonChecks})
$InputDetailsgroupBox.Controls.Add($csv_button)

#--------------------------------------------------------------------------------------------------------------------------------

$csv_textBox.Anchor = 15
$csv_textBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 162
$System_Drawing_Point.Y = 199
$csv_textBox.Location = $System_Drawing_Point
$csv_textBox.Name = "csv_textBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 181
$csv_textBox.Size = $System_Drawing_Size
$csv_textBox.TabIndex = 28
$csv_textBox.Text = "D:\Serverlist.csv"
$InputDetailsgroupBox.Controls.Add($csv_textBox)

#--------------------------------------------------------------------------------------------------------------------------------

$password_reset_textBox.Anchor = 15
$password_reset_textBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 162
$System_Drawing_Point.Y = 169
$password_reset_textBox.Location = $System_Drawing_Point
$password_reset_textBox.Name = "password_reset_textBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 181
$password_reset_textBox.Size = $System_Drawing_Size
$password_reset_textBox.TabIndex = 26
$InputDetailsgroupBox.Controls.Add($password_reset_textBox)

#--------------------------------------------------------------------------------------------------------------------------------

$csv_label.Anchor = 15
$csv_label.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 203
$csv_label.Location = $System_Drawing_Point
$csv_label.Name = "csv_label"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 130
$csv_label.Size = $System_Drawing_Size
$csv_label.TabIndex = 27
$csv_label.Text = "Path to CSV file:"
$InputDetailsgroupBox.Controls.Add($csv_label)

#--------------------------------------------------------------------------------------------------------------------------------

$group_label.Anchor = 15
$group_label.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 143
$group_label.Location = $System_Drawing_Point
$group_label.Name = "group_label"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 18
$System_Drawing_Size.Width = 112
$group_label.Size = $System_Drawing_Size
$group_label.TabIndex = 23
$group_label.Text = "Group to Administer:"
$InputDetailsgroupBox.Controls.Add($group_label)

#--------------------------------------------------------------------------------------------------------------------------------

$adminuser_textBox1.Anchor = 15
$adminuser_textBox1.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 162
$System_Drawing_Point.Y = 18
$adminuser_textBox1.Location = $System_Drawing_Point
$adminuser_textBox1.Name = "adminuser_textBox1"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 181
$adminuser_textBox1.Size = $System_Drawing_Size
$adminuser_textBox1.TabIndex = 16
$adminuser_textBox1.Text = "Administrator"
$InputDetailsgroupBox.Controls.Add($adminuser_textBox1)

#--------------------------------------------------------------------------------------------------------------------------------

$admin_label.Anchor = 15
$admin_label.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 24
$admin_label.Location = $System_Drawing_Point
$admin_label.Name = "admin_label"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 18
$System_Drawing_Size.Width = 131
$admin_label.Size = $System_Drawing_Size
$admin_label.TabIndex = 15
$admin_label.Text = "Administrator Account:"
$InputDetailsgroupBox.Controls.Add($admin_label)

#--------------------------------------------------------------------------------------------------------------------------------

$user_to_manage_label.Anchor = 15
$user_to_manage_label.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 114
$user_to_manage_label.Location = $System_Drawing_Point
$user_to_manage_label.Name = "user_to_manage_label"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 18
$System_Drawing_Size.Width = 100
$user_to_manage_label.Size = $System_Drawing_Size
$user_to_manage_label.TabIndex = 21
$user_to_manage_label.Text = "User to Administer:"
$InputDetailsgroupBox.Controls.Add($user_to_manage_label)

#--------------------------------------------------------------------------------------------------------------------------------

$group_textBox.Anchor = 15
$group_textBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 162
$System_Drawing_Point.Y = 137
$group_textBox.Location = $System_Drawing_Point
$group_textBox.Name = "group_textBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 181
$group_textBox.Size = $System_Drawing_Size
$group_textBox.TabIndex = 24
$InputDetailsgroupBox.Controls.Add($group_textBox)

#--------------------------------------------------------------------------------------------------------------------------------

$ipaddress_label.Anchor = 15
$ipaddress_label.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 5
$System_Drawing_Point.Y = 84
$ipaddress_label.Location = $System_Drawing_Point
$ipaddress_label.Name = "ipaddress_label"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 14
$System_Drawing_Size.Width = 151
$ipaddress_label.Size = $System_Drawing_Size
$ipaddress_label.TabIndex = 19
$ipaddress_label.Text = "Remote Host or IP Address:"
$InputDetailsgroupBox.Controls.Add($ipaddress_label)

#--------------------------------------------------------------------------------------------------------------------------------

$password_textBox2.Anchor = 15
$password_textBox2.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 162
$System_Drawing_Point.Y = 48
$password_textBox2.Location = $System_Drawing_Point
$password_textBox2.Name = "password_textBox2"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 181
$password_textBox2.Size = $System_Drawing_Size
$password_textBox2.TabIndex = 18
$password_textBox2.Text = "Sp4mBurg3r"
$InputDetailsgroupBox.Controls.Add($password_textBox2)

#--------------------------------------------------------------------------------------------------------------------------------

$password_label.Anchor = 15
$password_label.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 54
$password_label.Location = $System_Drawing_Point
$password_label.Name = "password_label"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 18
$System_Drawing_Size.Width = 135
$password_label.Size = $System_Drawing_Size
$password_label.TabIndex = 17
$password_label.Text = "Administrator Password:"
$InputDetailsgroupBox.Controls.Add($password_label)

#--------------------------------------------------------------------------------------------------------------------------------

$ipaddress_textBox3.Anchor = 15
$ipaddress_textBox3.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 162
$System_Drawing_Point.Y = 78
$ipaddress_textBox3.Location = $System_Drawing_Point
$ipaddress_textBox3.Name = "ipaddress_textBox3"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 181
$ipaddress_textBox3.Size = $System_Drawing_Size
$ipaddress_textBox3.TabIndex = 20
$ipaddress_textBox3.Text = "127.0.0.1"
$InputDetailsgroupBox.Controls.Add($ipaddress_textBox3)

#--------------------------------------------------------------------------------------------------------------------------------

$user_to_manage_textBox.Anchor = 15
$user_to_manage_textBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 162
$System_Drawing_Point.Y = 108
$user_to_manage_textBox.Location = $System_Drawing_Point
$user_to_manage_textBox.Name = "user_to_manage_textBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 181
$user_to_manage_textBox.Size = $System_Drawing_Size
$user_to_manage_textBox.TabIndex = 22
$InputDetailsgroupBox.Controls.Add($user_to_manage_textBox)

#--------------------------------------------------------------------------------------------------------------------------------

$reset_password_label.Anchor = 15
$reset_password_label.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 173
$reset_password_label.Location = $System_Drawing_Point
$reset_password_label.Name = "reset_password_label"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 18
$System_Drawing_Size.Width = 134
$reset_password_label.Size = $System_Drawing_Size
$reset_password_label.TabIndex = 25
$reset_password_label.Text = "Reset Password to:"
$InputDetailsgroupBox.Controls.Add($reset_password_label)

#--------------------------------------------------------------------------------------------------------------------------------

$GroupManagementBox.Anchor = 15
$GroupManagementBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 214
$System_Drawing_Point.Y = 13
$GroupManagementBox.Location = $System_Drawing_Point
$GroupManagementBox.Name = "GroupManagementBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 197
$System_Drawing_Size.Width = 195
$GroupManagementBox.Size = $System_Drawing_Size
$GroupManagementBox.TabIndex = 7
$GroupManagementBox.TabStop = $False
$GroupManagementBox.Text = "Group Management:"
$form1.Controls.Add($GroupManagementBox)

#--------------------------------------------------------------------------------------------------------------------------------

$delete_group_button.Anchor = 15
$delete_group_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 49
$delete_group_button.Location = $System_Drawing_Point
$delete_group_button.Name = "delete_group_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 182
$delete_group_button.Size = $System_Drawing_Size
$delete_group_button.TabIndex = 9
$delete_group_button.Text = "Delete Group"
$delete_group_button.UseVisualStyleBackColor = $True
$delete_group_button.add_Click({delete_group_ButtonChecks})
$GroupManagementBox.Controls.Add($delete_group_button)

#--------------------------------------------------------------------------------------------------------------------------------

$Delete_User_From_Group_button.Anchor = 15
$Delete_User_From_Group_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 167
$Delete_User_From_Group_button.Location = $System_Drawing_Point
$Delete_User_From_Group_button.Name = "Delete_User_From_Group_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 182
$Delete_User_From_Group_button.Size = $System_Drawing_Size
$Delete_User_From_Group_button.TabIndex = 13
$Delete_User_From_Group_button.Text = "Delete User from Group"
$Delete_User_From_Group_button.UseVisualStyleBackColor = $True
$Delete_User_From_Group_button.add_Click({Delete_User_From_Group_ButtonChecks})
$GroupManagementBox.Controls.Add($Delete_User_From_Group_button)

#--------------------------------------------------------------------------------------------------------------------------------

$Create_Group_button.Anchor = 15
$Create_Group_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 19
$Create_Group_button.Location = $System_Drawing_Point
$Create_Group_button.Name = "Create_Group_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 182
$Create_Group_button.Size = $System_Drawing_Size
$Create_Group_button.TabIndex = 8
$Create_Group_button.Text = "Create Group"
$Create_Group_button.UseVisualStyleBackColor = $True
$Create_Group_button.add_Click({create_group_ButtonChecks})
$GroupManagementBox.Controls.Add($Create_Group_button)

#--------------------------------------------------------------------------------------------------------------------------------

$group_membership_button.Anchor = 15
$group_membership_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 109
$group_membership_button.Location = $System_Drawing_Point
$group_membership_button.Name = "group_membership_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 182
$group_membership_button.Size = $System_Drawing_Size
$group_membership_button.TabIndex = 11
$group_membership_button.Text = "Check Group Members"
$group_membership_button.UseVisualStyleBackColor = $True
$group_membership_button.add_Click({check_group_membership_ButtonChecks})
$GroupManagementBox.Controls.Add($group_membership_button)

#--------------------------------------------------------------------------------------------------------------------------------

$list_groups_button.Anchor = 15
$list_groups_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 79
$list_groups_button.Location = $System_Drawing_Point
$list_groups_button.Name = "list_groups_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 182
$list_groups_button.Size = $System_Drawing_Size
$list_groups_button.TabIndex = 10
$list_groups_button.Text = "List Groups"
$list_groups_button.UseVisualStyleBackColor = $True
$list_groups_button.add_Click({list_groups})
$GroupManagementBox.Controls.Add($list_groups_button)

#--------------------------------------------------------------------------------------------------------------------------------

$add_user_to_group_button.Anchor = 15
$add_user_to_group_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 138
$add_user_to_group_button.Location = $System_Drawing_Point
$add_user_to_group_button.Name = "add_user_to_group_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 182
$add_user_to_group_button.Size = $System_Drawing_Size
$add_user_to_group_button.TabIndex = 12
$add_user_to_group_button.Text = "Add User to Group"
$add_user_to_group_button.UseVisualStyleBackColor = $True
$add_user_to_group_button.add_Click({Add_User_To_Group_ButtonChecks})
$GroupManagementBox.Controls.Add($add_user_to_group_button)

#--------------------------------------------------------------------------------------------------------------------------------

$UserManagementBox.Anchor = 15
$UserManagementBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 13
$System_Drawing_Point.Y = 13
$UserManagementBox.Location = $System_Drawing_Point
$UserManagementBox.Name = "UserManagementBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 197
$System_Drawing_Size.Width = 195
$UserManagementBox.Size = $System_Drawing_Size
$UserManagementBox.TabIndex = 0
$UserManagementBox.TabStop = $False
$UserManagementBox.Text = "User Management:"
$form1.Controls.Add($UserManagementBox)

#--------------------------------------------------------------------------------------------------------------------------------

$disable_user_button.Anchor = 15
$disable_user_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 168
$disable_user_button.Location = $System_Drawing_Point
$disable_user_button.Name = "disable_user_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 182
$disable_user_button.Size = $System_Drawing_Size
$disable_user_button.TabIndex = 6
$disable_user_button.Text = "Disable User"
$disable_user_button.UseVisualStyleBackColor = $True
$disable_user_button.add_Click({disable_user_ButtonChecks})
$UserManagementBox.Controls.Add($disable_user_button)

#--------------------------------------------------------------------------------------------------------------------------------

$Create_User_button.Anchor = 15
$Create_User_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 19
$Create_User_button.Location = $System_Drawing_Point
$Create_User_button.Name = "Create_User_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 182
$Create_User_button.Size = $System_Drawing_Size
$Create_User_button.TabIndex = 1
$Create_User_button.Text = "Create User"
$Create_User_button.UseVisualStyleBackColor = $True
$Create_User_button.add_Click({create_user_ButtonChecks})
$UserManagementBox.Controls.Add($Create_User_button)

#--------------------------------------------------------------------------------------------------------------------------------

$enable_user_button.Anchor = 15
$enable_user_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 138
$enable_user_button.Location = $System_Drawing_Point
$enable_user_button.Name = "enable_user_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 182
$enable_user_button.Size = $System_Drawing_Size
$enable_user_button.TabIndex = 5
$enable_user_button.Text = "Enable User"
$enable_user_button.UseVisualStyleBackColor = $True
$enable_user_button.add_Click({enable_user_ButtonChecks})
$UserManagementBox.Controls.Add($enable_user_button)

#--------------------------------------------------------------------------------------------------------------------------------

$delete_user_button.Anchor = 15
$delete_user_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 49
$delete_user_button.Location = $System_Drawing_Point
$delete_user_button.Name = "delete_user_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 182
$delete_user_button.Size = $System_Drawing_Size
$delete_user_button.TabIndex = 2
$delete_user_button.Text = "Delete User"
$delete_user_button.UseVisualStyleBackColor = $True
$delete_user_button.add_Click({delete_user_ButtonChecks})
$UserManagementBox.Controls.Add($delete_user_button)

#--------------------------------------------------------------------------------------------------------------------------------

$reset_password_button.Anchor = 15
$reset_password_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 108
$reset_password_button.Location = $System_Drawing_Point
$reset_password_button.Name = "reset_password_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 182
$reset_password_button.Size = $System_Drawing_Size
$reset_password_button.TabIndex = 4
$reset_password_button.Text = "Reset Password"
$reset_password_button.UseVisualStyleBackColor = $True
$reset_password_button.add_Click({reset_password_ButtonChecks})
$UserManagementBox.Controls.Add($reset_password_button)

#--------------------------------------------------------------------------------------------------------------------------------

$find_user_button.Anchor = 15
$find_user_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 79
$find_user_button.Location = $System_Drawing_Point
$find_user_button.Name = "find_user_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 182
$find_user_button.Size = $System_Drawing_Size
$find_user_button.TabIndex = 3
$find_user_button.Text = "List Users"
$find_user_button.UseVisualStyleBackColor = $True
$find_user_button.add_Click({find_user})
$UserManagementBox.Controls.Add($find_user_button)

#--------------------------------------------------------------------------------------------------------------------------------

#Save the initial state of the form
$InitialFormWindowState = $form1.WindowState
#Init the OnLoad event to correct the initial state of the form
$form1.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$form1.ShowDialog()| Out-Null

} #End Function

#--------------------------------------------------------------------------------------------------------------------------------

Function Help
{
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext(" -[SysInternals PSTools]-"+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext(" PSTools is required on your system for this tool to run any of the user or group management functions."+[char]13+[char]10)
$richTextBox1.Appendtext(" Please install it first by clicking on the SysInternals PSTools button. It requires 10mb of free space on the hard disk."+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext(" -[User and Group Management example]-"+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext(" In the Input Details section of this program, you will find 7 fields in which you can enter information pertaining to the changes you need to make."+[char]13+[char]10)
$richTextBox1.Appendtext(" For example, lets say you were connecting to a Windows workgrouped computer called starscream.decepticons.transformers.com"+[char]13+[char]10)
$richTextBox1.Appendtext(" You want to add a user called Grimlock to the computer called starscream.decepticons.transformers.com"+[char]13+[char]10)
$richTextBox1.Appendtext(" You want to make a group on there called Dinobots."+[char]13+[char]10)
$richTextBox1.Appendtext(" You need to add Grimlock to the Dinobots group."+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext(" In the 1st field, you'd enter the local Administrator account for starscream.decepticons.transformers.com"+[char]13+[char]10)
$richTextBox1.Appendtext(" In the 2nd field, you'd enter the password for that Administrator account"+[char]13+[char]10)
$richTextBox1.Appendtext(" In the 3rd field, you'd enter the computer name starscream.decepticons.transformers.com (or you could enter it's IP Address.)"+[char]13+[char]10)
$richTextBox1.Appendtext(" In the 4th field, you'd enter Grimlock as the user to administer."+[char]13+[char]10)
$richTextBox1.Appendtext(" In the 5th field, you'd enter Dinobots as the group to administer."+[char]13+[char]10)
$richTextBox1.Appendtext(" In the 6th field, you'd enter whatever password was required for user Grimlock."+[char]13+[char]10)
$richTextBox1.Appendtext(" You'd leave the 7th field blank, as you're only applying these changes to one computer."+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext(" To create the user account on starscream.decepticons.transformers.com you'd then click the Create User button."+[char]13+[char]10)
$richTextBox1.Appendtext(" This program will then connect to the computer called starscream.decepticons.transformers.com with the credentials you entered in fields 1 & 2."+[char]13+[char]10)
$richTextBox1.Appendtext(" If it can connect to the starscream.decepticons.transformers.com computer successfully, it will create the user Grimlock in field 4 for you."+[char]13+[char]10)
$richTextBox1.Appendtext(" To create the Dinobots group in the above example, you'd simply click on the Create Group button."+[char]13+[char]10)
$richTextBox1.Appendtext(" Clicking the Reset Password button will reset the password for user Grimlock to whatever you have entered in the 6th field."+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext(" -[Password Reset]-"+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext(" - Please note that you will not be prompted for the current password, it will just get reset to whatever you have in the Reset Password to field."+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext(" -[Adding Users to a Group]-"+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext(" With all the same information in the Input Details section, you can then click on the Add User to Group button to add Grimlock to the Dinobots group."+[char]13+[char]10)
$richTextBox1.Appendtext(" You can then click on the Check Group Members button to retrieve a list of the users in the Dinobots group."+[char]13+[char]10)
$richTextBox1.Appendtext(" You could also click on the List Users button to retrieve all the information for the new Grimlock account."+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext(" Performing any of these tasks on both Users and Groups, all work the same way. "+[char]13+[char]10)
$richTextBox1.Appendtext(" Just enter the relevant information in the Input Details area, and click the button relevant to the task."+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext(" -[Applying changes to several computers at once, and csv files]-"+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext(" For efficiency there is an Edit CSV File button that will open notepad with the filename you've provided in the Path to CSV File box."+[char]13+[char]10)
$richTextBox1.Appendtext(" If using a CSV file containing a server list, please ensure that the 1st cell in the 1st row of the CSV file says RemoteHost."+[char]13+[char]10)
$richTextBox1.Appendtext(" Enter the path to the csv file in the Path to csv field of the Input Details area of the program."+[char]13+[char]10)
$richTextBox1.Appendtext(" and that there is only one Fully Qualified Domain Name per line thereafter."+[char]13+[char]10)
$richTextBox1.Appendtext(" Please also ensure that the Remote Host or IP Address field is blank."+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext(" * For a list of all the Local user accounts on a remote host, do not enter a username, and just click the Find User button. *"+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext(" -[Tools]"+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext(" Enter the IP Address or Fully Qualified Domain Name of the computer you wish to test connectivity to in the Remote Host or IP Address field."+[char]13+[char]10)
$richTextBox1.Appendtext(" Click the Ping Host button so send a series of ICMP Ping packets over the network to the computer - useful to see if the computer is up or not."+[char]13+[char]10)
$richTextBox1.Appendtext(" Click the Trace Route button to see what path packets are taking to get to that computer - if you're having connectivity issues."+[char]13+[char]10)
$richTextBox1.Appendtext(" The NSLookup button will lookup the IP Address or Host name that you've entered in that 3rd field."+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
}

#--------------------------------------------------------------------------------------------------------------------------------

Function Enable_User_ButtonChecks     
{	
If (!$user_to_manage_textBox.text) # If User box is empty:
    {
	$richTextBox1.Appendtext("User to Administer field is empty! Please enter a user name to enable and try again."+[char]13+[char]10)
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	}
Else
	{
	EnableUser
	}			
} 									
					
#--------------------------------------------------------------------------------------------------------------------------------

Function EnableUser 
{
If (!$ipaddress_textBox3.text) # If the contents of the IP address box is empty or NULL then use CSV file
	{ 
	$list = Import-Csv ($csv_textBox.Text)
	Foreach ($entry in $list)
		{ 
		$server = $entry.RemoteHost 
		$user_details = psexec.exe ('\\{0}' -f $server) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net user ('"{0}"' -f $user_to_manage_textBox.text) /ACTIVE:YES 
		If ($lastexitcode -eq "1326") # User name or password incorrect.
			{
			$richTextBox1.Appendtext($server+": ERROR: Could not connect to "+$server+", unknown user name or bad password."+[char]13+[char]10)
			}
		If ($lastexitcode -eq "0") # Success
			{
			$richTextBox1.Appendtext($server+": User "+$user_to_manage_textBox.text+" successfully enabled on host "+$server+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			Foreach ($line in $user_details)
				{
				$richTextBox1.Appendtext($line+[char]13+[char]10)
				}
			}
		If ($lastexitcode -eq "2") 	# User could not be found.
			{
			$richTextBox1.Appendtext($server+": ERROR: The user could not be found."+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		If ($lastexitcode -eq "5") 	# Access denied.
			{
			$richTextBox1.Appendtext($server+": The command could not be run on the remote host: " +$server+[char]13+[char]10)
			$richTextBox1.Appendtext($server+": Access was denied. Please verify that the computer is online, and that your credentials are correct."+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		}
	} 
Else 	# Use the single IP Address or Host name rather than the CSV
	{ 
	$user_details = psexec.exe ('\\{0}' -f $ipaddress_textBox3.text) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net user ('"{0}"' -f $user_to_manage_textBox.text) /ACTIVE:YES
	If ($lastexitcode -eq "1326") # User name or password incorrect.
		{
		$richTextBox1.Appendtext("ERROR: Could not connect to "+$ipaddress_textBox3.text+", unknown user name or bad password."+[char]13+[char]10)
		}
	If ($lastexitcode -eq "0") # Success
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": User "+$user_to_manage_textBox.text+" successfully enabled on host "+$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		Foreach ($line in $user_details) 
			{
			$richTextBox1.Appendtext($line+[char]13+[char]10)
			}
		}
	If ($lastexitcode -eq "2") 	# User could not be found.
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": ERROR: The user could not be found."+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		}
	If ($lastexitcode -eq "5") 	# Access denied.
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": The command could not be run on the remote host: " +$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": Access was denied. Please verify that the computer is online, and that your credentials are correct."+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		}
	}
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}

#--------------------------------------------------------------------------------------------------------------------------------

Function PingHost_ButtonChecks
{
If (!$ipaddress_textBox3.text) # If User box is empty:
    {
	$richTextBox1.Appendtext("Please enter a hostname or IP Address to PING and try again."+[char]13+[char]10)
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	}
Else
	{
	PingHost
	}
}

#------------------------------------------------------------------------------------------------------------

Function PingHost
{
$PING_Result = Ping ($ipaddress_textBox3.text)
If ($lastexitcode -ne "0")
	{
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	$richTextBox1.Appendtext("Couldn't ping host "+($ipaddress_textBox3.text)+[char]13+[char]10)
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
	}
Else 
	{
	Foreach ($line in $PING_Result) 	
		{
		$richTextBox1.Appendtext($line+[char]13+[char]10)
		}
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
	}
}

#--------------------------------------------------------------------------------------------------------------------------------

Function disable_user_ButtonChecks
{
If (!$user_to_manage_textBox.text)
    {
	$richTextBox1.Appendtext("User to Administer field is empty! Please enter a username to disable and try again."+[char]13+[char]10)
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	}
Else
	{
	disable_user
	}
}	
					
#------------------------------------------------------------------------------------------------------------

Function disable_user 
{
# First we must detect if there is a Host name or IP Address in the box or not:
If (!$ipaddress_textBox3.text) # If the contents of the IP address box is empty or NULL then use CSV file:
	{
	$list = Import-Csv ($csv_textBox.Text) 
	Foreach ($entry in $list) 
		{
		$server = $entry.RemoteHost 
		$user_details = psexec.exe ('\\{0}' -f $server) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net user ('"{0}"' -f $user_to_manage_textBox.text) /ACTIVE:NO 
		
		If ($lastexitcode -eq "1326") # User name or Password incorrect:
			{
			$richTextBox1.Appendtext($server+": ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
			}
		If ($lastexitcode -eq "0")	# Successful:
			{
			$richTextBox1.Appendtext($server+": User "+$user_to_manage_textBox.text+" successfully disabled on host "+$server+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			Foreach ($line in $user_details) #For each entry stored in $user_details (which is the results of the psexec command run on the remote machine)
				{ 
				$richTextBox1.Appendtext($line+[char]13+[char]10) #Display each line in the richtextbox of the GUI.
				} 
			}
		If ($lastexitcode -eq "2") 	# User cannot be found
			{
			$richTextBox1.Appendtext($server+": ERROR: The user name could not be found. " +$server+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}	
		If ($lastexitcode -eq "5") 	# Access denied:
			{
			$richTextBox1.Appendtext($server+": The command could not be run on the remote host: " +$server+[char]13+[char]10)
			$richTextBox1.Appendtext($server+": Access was denied. Please verify that the computer is online, and that your credentials are correct."+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		}
	}
Else 
# Use the single IP Address or Host name rather than the CSV:
	{ 
	$user_details = psexec.exe ('\\{0}' -f $ipaddress_textBox3.text) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net user ('"{0}"' -f $user_to_manage_textBox.text) /ACTIVE:NO
	If ($lastexitcode -eq "1326") # User name or password incorrect.
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
		}
	If ($lastexitcode -eq "2") 	# User cannot be found
			{
			$richTextBox1.Appendtext($ipaddress_textBox3.text+": ERROR: The user name could not be found. " +$ipaddress_textBox3.text+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}		
	If ($lastexitcode -eq "0") # Success
		{ 
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": User "+$user_to_manage_textBox.text+" successfully disabled."+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		} 
	If ($lastexitcode -eq "5") # Access Denied!
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": The command could not be run on the remote host: " +$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": Access was denied. Please verify that the computer is online, and that your credentials are correct."+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		}
	} 
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}

#--------------------------------------------------------------------------------------------------------------------------------

Function tracert_host_ButtonChecks
{
If (!$ipaddress_textBox3.text)
    {
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	$richTextBox1.Appendtext("Please enter a hostname or IP Address to trace route to, and try again."+[char]13+[char]10)
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	}
Else
	{
	TraceRoute
	}
}

#------------------------------------------------------------------------------------------------------------

Function TraceRoute
{
$richTextBox1.Appendtext("Please wait, tracing host..."+[char]13+[char]10)
$TRACERT_Result = Tracert $ipaddress_textBox3.text
If ($lastexitcode -ne "0")
	{
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	$richTextBox1.Appendtext("Couldn't trace the route to the host "+($ipaddress_textBox3.text)+[char]13+[char]10)
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
	}
Else 
	{
	Foreach ($line in $TRACERT_Result) 	
		{
		$richTextBox1.Appendtext($line+[char]13+[char]10)
		}
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
	}
}

#--------------------------------------------------------------------------------------------------------------------------------

Function delete_user_ButtonChecks
{
If (!$user_to_manage_textBox.text)
    {
	$richTextBox1.Appendtext("User to Administer field is empty! Please enter the user name to delete and try again."+[char]13+[char]10)
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	}
Else
	{
	delete_user
	}
}

#--------------------------------------------------------------------------------------------------------------------------------

Function delete_user 
{
# First we must detect if there is a Host name or IP Address in the box or not:
If (!$ipaddress_textBox3.text) # Contents of the IP address box is empty or NULL then use CSV file
	{
	$list = Import-Csv ($csv_textBox.Text)
	foreach ($entry in $list)
		{
		$server = $entry.RemoteHost 
		$user_details = psexec.exe ('\\{0}' -f $server) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net user ('"{0}"' -f $user_to_manage_textBox.text) /DELETE
		If ($lastexitcode -eq "1326") # User name or password incorrect.
			{
			$richTextBox1.Appendtext($server+": ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
			}
		If ($lastexitcode -eq "0") # Success
			{
			$richTextBox1.Appendtext($server+" : User "+$user_to_manage_textBox.text+" was successfully deleted on host "+$server+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		If ($lastexitcode -eq "5") # Access denied"
			{
			$richTextBox1.Appendtext($server+" : The command could not be run on the remote host: " +$server+[char]13+[char]10)
			$richTextBox1.Appendtext($server+" : Access was denied. Please verify that the computer is online, and that your credentials are correct."+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		If ($lastexitcode -eq "2") # User does not exist
			{
			$richTextBox1.Appendtext($server+": ERROR: User "+$user_to_manage_textBox.text+" does not exist."+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		}
	}
Else # Use the single IP Address or Host name rather than the CSV
	{ 
	$user_details = psexec.exe ('\\{0}' -f $ipaddress_textBox3.text) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net user ('"{0}"' -f $user_to_manage_textBox.text) /DELETE
	If ($lastexitcode -eq "1326") # User name or password incorrect.
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
		}
	If ($lastexitcode -eq "0") # Success
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : User "+$user_to_manage_textBox.text+" was successfully deleted on host "+$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		}
	If ($lastexitcode -eq "2") # User doesn't exist:
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": ERROR: User doesn't exist."+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		}
	If ($lastexitcode -eq "5") # Access denied"
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": ERROR: The command could not be run on the remote host: " +$server+[char]13+[char]10)
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": ERROR: Access was denied. Please verify that the computer is online, and that your credentials are correct."+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		}
	}
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)	
}

#--------------------------------------------------------------------------------------------------------------------------------

Function create_user_ButtonChecks 
{
If (!$user_to_manage_textBox.text) # If User box is empty
    {
	$richTextBox1.Appendtext("User to Administer field is empty! Please enter the username to create and try again."+[char]13+[char]10)
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	}
Else
	{
	create_user
	}
}

#------------------------------------------------------------------------------------------------------------

Function create_user 
{
# First we must detect if there is a Host name or IP Address in the box or not:
If (!$ipaddress_textBox3.text) # If the contents of the IP address box is empty or NULL then use CSV file
	{
	$list = Import-Csv ($csv_textBox.Text)
	Foreach ($entry in $list)
		{
		$server = $entry.RemoteHost 
		$user_details = psexec.exe ('\\{0}' -f $server) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net user ('"{0}"' -f $user_to_manage_textBox.text) /ADD
		If ($lastexitcode -eq "1326") # User name or password incorrect.
			{
			$richTextBox1.Appendtext($server+" : User "+$user_to_manage_textBox.text+" was not created."+[char]13+[char]10)
			$richTextBox1.Appendtext("ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
			}
		If ($lastexitcode -eq "0") # Command successful:
			{
			$richTextBox1.Appendtext($server+" : User "+$user_to_manage_textBox.text+" was successfully created on host "+$server+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		If ($lastexitcode -eq "5") 	# Access denied by remote host:
			{ 
			$richTextBox1.Appendtext($server+" : The command could not be run on the remote host: " +$server+[char]13+[char]10)
			$richTextBox1.Appendtext($server+" : Access was denied. Please verify that the computer is online, and that your credentials are correct."+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		If ($lastexitcode -eq "2") # User already exists:
			{														
			$richTextBox1.Appendtext($server+" : User "+$user_to_manage_textBox.text+" already exists on host "+$server+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		}
	}
ELSE
	{# Use the single IP Address or Host name rather than the CSV
	$user_details = psexec.exe ('\\{0}' -f $ipaddress_textBox3.text) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net user ('"{0}"' -f $user_to_manage_textBox.text) /ADD
	# ('\\{0}' -f $ipaddress_textBox3.text) means to insert the double backslash before the contents of $ipaddress_textbox3
	If ($lastexitcode -eq "1326") # User name or password incorrect.
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": ERROR: User "+$user_to_manage_textBox.text+" was not created."+[char]13+[char]10)
		}
	If ($lastexitcode -eq "0") # Command successful:
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : User "+$user_to_manage_textBox.text+" was successfully created on host "+$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		}
	If ($lastexitcode -eq "5") 	# Access denied by remote host:
		{ 
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": ERROR: Access denied. Please verify that the computer is online, and that your credentials are correct."+[char]13+[char]10)
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": ERROR: User "+$user_to_manage_textBox.text+" was not created."+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		}
	If ($lastexitcode -eq "2") # User already exists:
		{														
		# Display error message
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : User "+$user_to_manage_textBox.text+" already exists on host "+$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		}
	}	
	#set user password to never expire
	###$pwd_expiry = psexec.exe ('\\{0}' -f $server) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C WMIC USERACCOUNT WHERE 'Name="$tmp"' SET PasswordExpires=FALSE > "%temp%\psexeclog.txt" 2>&1
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)	
}

#--------------------------------------------------------------------------------------------------------------------------------

Function nslookup_Host_ButtonChecks
{
If (!$ipaddress_textBox3.text) # If User box is empty:
    {
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	$richTextBox1.Appendtext("Please enter a host name or IP Address to look up via DNS on the network, and try again."+[char]13+[char]10)
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	}
Else
	{
	nslookup_Host
	}
}
					
#------------------------------------------------------------------------------------------------------------

Function nslookup_Host 
{
$richTextBox1.Appendtext("Please wait, looking up host..."+[char]13+[char]10)
$NSLOOKUP_Result = nslookup $ipaddress_textBox3.text
If ($lastexitcode -ne "0")
	{
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	$richTextBox1.Appendtext("Couldn't find a DNS entry for the host "+($ipaddress_textBox3.text)+[char]13+[char]10)
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	}
Else 
	{
	Foreach ($line in $NSLOOKUP_Result) 	
		{
		$richTextBox1.Appendtext($line+[char]13+[char]10)
		}
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	}
}

#--------------------------------------------------------------------------------------------------------------------------------

Function check_group_membership_ButtonChecks 
{
If (!$group_textBox.text) # If Group box is empty
    {
   	$richTextBox1.Appendtext("Group to Manage field is empty! Please enter the group name to manage and try again."+[char]13+[char]10)
    $richTextBox1.Appendtext(""+[char]13+[char]10)
	}
Else
	{
	check_group_membership
	}
}

#------------------------------------------------------------------------------------------------------------

Function check_group_membership
{
#First we must detect if there is a Host name or IP Address in the box or not:
If (!$ipaddress_textBox3.text) #If the contents of the IP address box is empty or NULL then use CSV file
	{
	$list = Import-Csv ($csv_textBox.Text)
	Foreach ($entry in $list)
		{
		$server = $entry.RemoteHost 							
		$user_details = psexec.exe ('\\{0}' -f $Server) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net localgroup ('"{0}"' -f $group_textBox.text)
		If ($lastexitcode -eq "1326") # User name or password incorrect.
			{
			$richTextBox1.Appendtext($server+": ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
			}
		If ($lastexitcode -eq "1376") # Group Doesn't exist.
			{
			$richTextBox1.Appendtext($server+": ERROR: Couldn't retrieve list of group members for group "+$group_textBox.text+" on host "+$server+[char]13+[char]10)
			$richTextBox1.Appendtext($server+": ERROR: The specified local group does not exist."+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		If ($lastexitcode -eq "0") # Success.
			{
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			$richTextBox1.Appendtext($server+": List of group members for the local group "+$group_textBox.text+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			Foreach ($line in $user_details)
				{
				$richTextBox1.Appendtext($Server+" : "+$line+[char]13+[char]10)
				}
			}
		If ($lastexitcode -eq "5") 	# Access denied" by the remote host.
			{
			$richTextBox1.Appendtext($Server+" : ERROR: The command could not be run on the remote host: " +$server+[char]13+[char]10)
			$richTextBox1.Appendtext($Server+" : ERROR: Access was denied. Please verify that the remote host is online, and that your credentials are correct.")
			}
		If ($lastexitcode -eq "2") 	# Group does not exist
			{
			$richTextBox1.Appendtext($Server+" : ERROR: The specified local group does not exist."+[char]13+[char]10)
			}
		}
	}
Else
# There is an IP Address or Host name in the box, so no CSV file requirements:
	{
	$user_details = psexec.exe ('\\{0}' -f $ipaddress_textBox3.text) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net localgroup ('"{0}"' -f $group_textBox.text)
	If ($lastexitcode -eq "1326") # User name or password incorrect.
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
		}
	If ($lastexitcode -eq "1376") # Group Doesn't exist.
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": ERROR: Couldn't retrieve list of group members for group "+$group_textBox.text+" on host "+$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": ERROR: The specified local group does not exist."+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		}
	If ($lastexitcode -eq "0") # Success.
		{
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": List of group members for the local group "+$group_textBox.text+" on host "+$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		Foreach ($line in $user_details)
			{
			$richTextBox1.Appendtext($ipaddress_textBox3.text+" : "+$line+[char]13+[char]10)
			}
		}
	If ($lastexitcode -eq "2") 	# Group does not exist
			{
			$richTextBox1.Appendtext($ipaddress_textBox3.text+" : The specified local group does not exist."+[char]13+[char]10)
			}
	If ($lastexitcode -eq "5") # Access denied.
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : The command could not be run on the remote host: " +$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : Access was denied. Please verify that the remote host is online, and that your credentials are correct.")
		}
	}				
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}

#------------------------------------------------------------------------------------------------------------

Function delete_group_ButtonChecks
{
If (!$group_textBox.text) # If Group box is empty:
    {
    $richTextBox1.Appendtext("Group to Manage field is empty! Please enter the group name to manage and try again."+[char]13+[char]10)
    $richTextBox1.Appendtext(""+[char]13+[char]10)
	}
Else
	{
	delete_group
	}
}

#------------------------------------------------------------------------------------------------------------

Function delete_group
{
# First we must detect if there is a Host name or IP Address in the box or not:
If (!$ipaddress_textBox3.text) #If the contents of the IP address box is empty
	{
	$list = Import-Csv ($csv_textBox.Text)
	Foreach ($entry in $list)
		{
		$server = $entry.RemoteHost 
		# ( '"{0}"' -f $VARIABLE ) means to wrap the contents of $VARIABLE with double quotes.
		$user_details = psexec.exe ('\\{0}' -f $server) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net localgroup('"{0}"' -f $group_textBox.Text) /DELETE
		If ($lastexitcode -eq "1326") # User name or password incorrect.
			{
			$richTextBox1.Appendtext($server+": ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
			}		
		If ($lastexitcode -eq "2") # Group Doesn't exist.
			{
			$richTextBox1.Appendtext($server+": ERROR: The specified local group does not exist."+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		If ($lastexitcode -eq "0") # Success.
			{
			$richTextBox1.Appendtext($server+": Group "+$group_textBox.Text+" was successfully deleted from host "+$server+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		If ($lastexitcode -eq "5") 	# Access denied" 
			{
			$richTextBox1.Appendtext($Server+" : The command could not be run on the remote host: " +$server+[char]13+[char]10)
			$richTextBox1.Appendtext($Server+" : Access was denied. Please verify that the computer is online, and that your credentials are correct.")
			}						
		}
	}
Else
	# There is an IP Address or Host name in the box, so no CSV file requirements:
	{
	$user_details = psexec.exe ('\\{0}' -f $ipaddress_textBox3.text) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net localgroup('"{0}"' -f $group_textBox.Text) /DELETE
	If ($lastexitcode -eq "1326") # User name or password incorrect.
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
		}		
	If ($lastexitcode -eq "2") # Group Doesn't exist.
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : ERROR: The specified local group does not exist."+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		}
	If ($lastexitcode -eq "0") # Success.
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : Group "+$group_textBox.Text+" was successfully deleted from host "+$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		}
	If ($lastexitcode -eq "5") # Access denied" 
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : The command could not be run on the remote host: " +$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : Access was denied. Please verify that the computer is online, and that your credentials are correct.")
		}						
	}
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}

#--------------------------------------------------------------------------------------------------------------------------------

Function create_group_ButtonChecks 
{
If (!$group_textBox.text) # If Group box is empty
    {
    $richTextBox1.Appendtext("Group to Manage field is empty! Please enter the group name to manage and try again."+[char]13+[char]10)
    $richTextBox1.Appendtext(""+[char]13+[char]10)
	}
Else
	{
	create_group
	}
}

#--------------------------------------------------------------------------------------------------------------------------------

Function create_group
{
# First we must detect if there is a Host name or IP Address in the box or not:
If (!$ipaddress_textBox3.text) # If the contents of the IP address box is empty or NULL then use CSV file
	{
	$list = Import-Csv ($csv_textBox.Text)
	Foreach ($entry in $list)
		{
		$server = $entry.RemoteHost
		$user_details = psexec.exe ('\\{0}' -f $server) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net localgroup('"{0}"' -f $group_textBox.Text) /ADD
		If ($lastexitcode -eq "1326") # User name or password incorrect.
			{
			$richTextBox1.Appendtext($server+": ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
			}	
		If ($lastexitcode -eq "0") # Success
			{
			$richTextBox1.Appendtext($Server+" : The "+$group_textBox.Text+" local group was successfully created on host "+$server+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}		
		If ($lastexitcode -eq "2") # Group already exists,
			{
			$richTextBox1.Appendtext($Server+" : An object called "+$group_textBox.text+" already exists on host "+$server+[char]13+[char]10)
			$richTextBox1.Appendtext($Server+" : It could either be a user object OR a group object. Please change the name and try again."+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		If ($lastexitcode -eq "5") # Access denied" by the remote host.
			{
			$richTextBox1.Appendtext($Server+" : The command could not be run on the remote host: " +$server+[char]13+[char]10)
			$richTextBox1.Appendtext($Server+" : Access was denied. Please verify that the computer is online, and that your credentials are correct.")
			}
		}
	}
Else
	{
	$user_details = psexec.exe ('\\{0}' -f $ipaddress_textBox3.text) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net localgroup('"{0}"' -f $group_textBox.Text) /ADD
	If ($lastexitcode -eq "1326") # User name or password incorrect.
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
		}	
	If ($lastexitcode -eq "0") # Success
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : The "+$group_textBox.Text+" local group was successfully created on host "+$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		}	
	If ($lastexitcode -eq "2") # If the value in $lastexitcode is 2 then it means that the object you're trying to create already exists, display error:
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : An object called "+$group_textBox.text+" already exists on host "+$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : It could either be a user object OR a group object. Please change the name and try again."+[char]13+[char]10)
		}
	If ($lastexitcode -eq "5") 	# access denied" by the remote host.
		{ 
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : The command could not be run on the remote host: " +$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : Access was denied. Please verify that the computer is online, and that your credentials are correct.")
		}
	}
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}


#--------------------------------------------------------------------------------------------------------------------------------

Function list_groups
{
# First we must detect if there is a Host name or IP Address in the box or not:
If (!$ipaddress_textBox3.text) #if the contents of the IP address box is empty or NULL then use CSV file
	{
	$list = Import-Csv ($csv_textBox.Text)
	Foreach ($entry in $list)
		{
		$server = $entry.RemoteHost
		$user_details = psexec.exe ('\\{0}' -f $server) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C "net localgroup"
		If ($lastexitcode -eq "1326") # User name or password incorrect.
			{
			$richTextBox1.Appendtext($Server+" : ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
			}	
		If ($lastexitcode -eq "0") # Success
			{
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			$richTextBox1.Appendtext($Server+" : List of groups for host "+$server+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			Foreach ($line in $user_details)
				{
				$richTextBox1.Appendtext($Server+" : "+$line+[char]13+[char]10)
				}
			}
		If ($lastexitcode -eq "5") 	# Access denied.
			{
			$richTextBox1.Appendtext($Server+" : The command could not be run on the remote host: " +$server+[char]13+[char]10)
			$richTextBox1.Appendtext($Server+" : Access was denied. Please verify that the computer is online, and that your credentials are correct.")
			}
		}
	}
Else
	{
	$user_details = psexec.exe ('\\{0}' -f $ipaddress_textBox3.text) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C "NET LOCALGROUP"
	If ($lastexitcode -eq "1326") # User name or password incorrect.
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
		}	
	If ($lastexitcode -eq "0") # Success
		{
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		$richTextBox1.Appendtext("List of groups for host "+$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		Foreach ($line in $user_details)
			{
			$richTextBox1.Appendtext($ipaddress_textBox3.text+" : "+$line+[char]13+[char]10)
			}
		}
	If ($lastexitcode -eq "5") 	# Access denied.
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : The command could not be run on the remote host: " +$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : Access was denied. Please verify that the computer is online, and that your credentials are correct.")
		}
	}
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}

#--------------------------------------------------------------------------------------------------------------------------------

Function Add_User_To_Group_ButtonChecks
{
If (!$group_textBox.text)
    {
    $richTextBox1.Appendtext("Group to Manage field is empty! Please enter the group name to manage and try again."+[char]13+[char]10)
    $richTextBox1.Appendtext(""+[char]13+[char]10)
	}
ElseIf (!$user_to_manage_textBox.text)
    {
	$richTextBox1.Appendtext("User to Manage field is empty! Please enter the user name to manage and try again."+[char]13+[char]10)
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	}
Else
	{
	add_user_to_group
	}
}

#--------------------------------------------------------------------------------------------------------------------------------

Function add_user_to_group
{
# First we must detect if there is a Host name or IP Address in the box or not:
If (!$ipaddress_textBox3.text) # If the contents of the IP address box is empty or NULL then use CSV file
	{
	$list = Import-Csv ($csv_textBox.Text)
	Foreach ($entry in $list)
		{
		$server = $entry.RemoteHost 
		$user_details = psexec.exe ('\\{0}' -f $server) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net localgroup ('"{0}"' -f $group_textBox.text) ('"{0}"' -f $user_to_manage_textBox.text) /ADD
		If ($lastexitcode -eq "1326") # User name or password incorrect.
			{
			$richTextBox1.Appendtext($Server+" : ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
			}	
		If ($lastexitcode -eq "0") # Success
			{
			$richTextBox1.Appendtext($Server+" : User "+($user_to_manage_textBox.text)+" was added to Group "+$group_textBox.text+" on host "+$server+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		If ($lastexitcode -eq "5") 	# Access denied
			{
			$richTextBox1.Appendtext($Server+" : ERROR : The command could not be run on the remote host " +$server+[char]13+[char]10)
			$richTextBox1.Appendtext($Server+" : ERROR : Access was denied. Please verify that the computer is online, and that your credentials are correct.")
			}
		If ($lastexitcode -eq "1") 	# User or Group does not exist
			{
			$richTextBox1.Appendtext($Server+" : ERROR : User or Group does not exist.")
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}	
		If ($lastexitcode -eq "2") 	# User is already a Member of the group
			{
			$richTextBox1.Appendtext($Server+" : ERROR: User could not be added to the group, because either the group does not exist, or the user is already a member."+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		}
	}
Else
#There is an IP Address to use, so no CSV file:
	{
	$user_details = psexec.exe ('\\{0}' -f $ipaddress_textBox3.text) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net localgroup ('"{0}"' -f $group_textBox.text) ('"{0}"' -f $user_to_manage_textBox.text) /ADD
	If ($lastexitcode -eq "1326") # User name or password incorrect.
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
		}	
	If ($lastexitcode -eq "0") # Success
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : User "+($user_to_manage_textBox.text)+" was added to Group "+$group_textBox.text+" on host "+$server+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		}
	If ($lastexitcode -eq "5") 	# Access denied
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : ERROR: The command could not be run on the remote host " +$server+[char]13+[char]10)
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : ERROR: Access was denied. Please verify that the computer is online, and that your credentials are correct.")
		}
	If ($lastexitcode -eq "2") 	# User is already a Member of the group
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : ERROR: User could not be added to the group, because either the group does not exist, or the user is already a member."+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		}
	If ($lastexitcode -eq "1") 	# User or Group does not exist
			{
			$richTextBox1.Appendtext($Server+" : ERROR : User or Group does not exist.")
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}		
	}
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}

#--------------------------------------------------------------------------------------------------------------------------------

Function Delete_User_From_Group_ButtonChecks
{
If (!$group_textBox.text)
    {
    $richTextBox1.Appendtext("Group to Manage field is empty! Please enter the group name to manage and try again."+[char]13+[char]10)
    $richTextBox1.Appendtext(""+[char]13+[char]10)
	}
ElseIf (!$user_to_manage_textBox.text)
    {
	$richTextBox1.Appendtext("User to Manage field is empty! Please enter the user name to manage and try again."+[char]13+[char]10)
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	}
Else
	{
	Delete_User_From_Group
	}
}
					
#--------------------------------------------------------------------------------------------------------------------------------

Function Delete_User_From_Group
{
# Then we must detect if there is a Host name or IP Address in the box or not:
If (!$ipaddress_textBox3.text) #if the contents of the IP address box is empty or NULL then use CSV file
	{
	$list = Import-Csv ($csv_textBox.Text)
	Foreach ($entry in $list)
		{
		$server = $entry.RemoteHost
		$user_details = psexec.exe ('\\{0}' -f $server) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net localgroup ('"{0}"' -f $group_textBox.text) ('"{0}"' -f $user_to_manage_textBox.text) /DELETE
		If ($lastexitcode -eq "1326") # User name or password incorrect.
			{
			$richTextBox1.Appendtext($Server+" : ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
			}	
		If ($lastexitcode -eq "0") # Success
			{
			$richTextBox1.Appendtext($Server+" : User "+$user_to_manage_textBox.text+" was deleted from group "+$group_textBox.text+" on host "+$server+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		If ($lastexitcode -eq "5") 	# Access denied
			{
			$richTextBox1.Appendtext($Server+" : The command could not be run on the remote host: " +$server+[char]13+[char]10)
			$richTextBox1.Appendtext($Server+" : Access was denied. Please verify that the computer is online, and that your credentials are correct.")
			}
		If ($lastexitcode -eq "2") 	# User is already a Member of the group
			{
			$richTextBox1.Appendtext($Server+" : ERROR: User was not removed from the group because either the group does not exist or the user is not a member."+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		If ($lastexitcode -eq "1") 	# User or Group does not exist
			{
			$richTextBox1.Appendtext($Server+" : ERROR : User or Group does not exist.")
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		}
	} 
Else
# There is an IP Address to use, so no CSV file:
	{
	$user_details = psexec.exe ('\\{0}' -f $ipaddress_textBox3.text) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net localgroup ('"{0}"' -f $group_textBox.text) ('"{0}"' -f $user_to_manage_textBox.text) /DELETE
	If ($lastexitcode -eq "1326") # User name or password incorrect.
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
		}	
	If ($lastexitcode -eq "0") # Success
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : User "+$user_to_manage_textBox.text+" was deleted from group "+$group_textBox.text+" on host "+$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		}
	If ($lastexitcode -eq "5") 	# Access denied
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : The command could not be run on the remote host: " +$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : Access was denied. Please verify that the computer is online, and that your credentials are correct.")
		}
	If ($lastexitcode -eq "2") 	# User is already a Member of the group
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : ERROR: User was not removed from the group because either the group does not exist or the user is not a member."+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		}
	If ($lastexitcode -eq "1") 	# User or Group does not exist
			{
			$richTextBox1.Appendtext($Server+" : ERROR : User or Group does not exist.")
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
	}
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}

#--------------------------------------------------------------------------------------------------------------------------------

Function find_user 
{
If (!$user_to_manage_textBox.text) #If the "User to Administer" text box is empty do:
	{
	# First we must detect if there is a Hostname or IP Address in the box or not:
	If (!$ipaddress_textBox3.text) #if the contents of the ip address box is empty or NULL then use CSV file
		{
		$list = Import-Csv ($csv_textBox.Text)
		Foreach ($entry in $list)
			{
			$server = $entry.RemoteHost
			$user_details = psexec.exe ('\\{0}' -f $server) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C "net user" ($user_to_manage_textBox.text)
			If ($lastexitcode -eq "1326") # User name or password incorrect.
				{
				$richTextBox1.Appendtext($Server+" : ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
				}	
			If ($lastexitcode -eq "2") # Handle is invalid.
				{
				$richTextBox1.Appendtext($Server+" : ERROR: User not found on remote host."+[char]13+[char]10)
				}	
			If ($lastexitcode -eq "0") # Success
				{	
				# Insert a break between the outputs for each remote host, otherwise it'll be a real mess to read.
				$richTextBox1.Appendtext(""+[char]13+[char]10)
				$richTextBox1.Appendtext("--------------------------------------------------------- "+$server+" -------------------------------------------------"+[char]13+[char]10)
				$richTextBox1.Appendtext(""+[char]13+[char]10)
				# Reformat the user list stored in $user_details from previous step to be more readable:
				# Replacing a "double space" with a carriage return.
				$user_details -Replace ("  ", [char]13)
				Foreach ($line in $user_details) 	
					{
					$richTextBox1.Appendtext($line+[char]13+[char]10)
					}
				}
			If ($lastexitcode -eq "5") # Access denied
				{
				$richTextBox1.Appendtext($server+" : The command could not be run on the remote host: " +$server+[char]13+[char]10)
				$richTextBox1.Appendtext($server+" : Access was denied. Please verify that the computer is online, and that your credentials are correct."+[char]13+[char]10)
				$richTextBox1.Appendtext(""+[char]13+[char]10)
				}
			}
		}
	# Else Loop IP Box Not Empty
	Else
		{
		$user_details = psexec.exe ('\\{0}' -f $ipaddress_textBox3.text) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C "net user" ($user_to_manage_textBox.text)
		If ($lastexitcode -eq "2")
			{
			$richTextBox1.Appendtext($ipaddress_textBox3.text+" : User "+$user_to_manage_textBox.text+" not found on host "+$ipaddress_textBox3.text+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		If ($lastexitcode -eq "1326") # User name or password incorrect.
			{
			$richTextBox1.Appendtext($ipaddress_textBox3.text+" : ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
			}	
		If ($lastexitcode -eq "0") # Success
				{	
				# Insert a break between the outputs for each remote host, otherwise it'll be a real mess to read.
				$richTextBox1.Appendtext(""+[char]13+[char]10)
				$richTextBox1.Appendtext("--------------------------------------------------------- "+$server+" -------------------------------------------------"+[char]13+[char]10)
				$richTextBox1.Appendtext(""+[char]13+[char]10)
				# Reformat the user list stored in $user_details from previous step to be more readable:
				# Replacing a "double space" with a carriage return.
				$user_details -Replace ("  ", [char]13)
				Foreach ($line in $user_details) 	
					{
					$richTextBox1.Appendtext($line+[char]13+[char]10)
					}
				}
		If ($lastexitcode -eq "5") 	# Access Denied
			{
			$richTextBox1.Appendtext($ipaddress_textBox3.text+" : The command could not be run on the remote host: " +$ipaddress_textBox3.text+[char]13+[char]10)
			$richTextBox1.Appendtext($ipaddress_textBox3.text+" : Access was denied. Please verify that the computer is online, and that your credentials are correct."+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		}
	}
Else #The "User to Administer" text box is NOT empty, so do:
	{
	# First we must detect if there is a Host name or IP Address in the box or not:
	If (!$ipaddress_textBox3.text) # If the contents of the IP address box is empty or NULL then use CSV file
		{
		$list = Import-Csv ($csv_textBox.Text)
			Foreach ($entry in $list)
			{
			$server = $entry.RemoteHost 
			$user_details = psexec.exe ('\\{0}' -f $server) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net user ('"{0}"' -f $user_to_manage_textBox.text)
			If ($lastexitcode -eq "2")
				{
				$richTextBox1.Appendtext($server+" : User "+$user_to_manage_textBox.text+" not found on host "+$server+[char]13+[char]10)
				$richTextBox1.Appendtext(""+[char]13+[char]10)
				}
			If ($lastexitcode -eq "1326") # User name or password incorrect.
				{
				$richTextBox1.Appendtext($server+" : ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
				}	
			If ($lastexitcode -eq "0") # Success
				{# Start Loop C4
				#Insert a break between the outputs for each remote host, otherwise it'll be a real mess to read.
				$richTextBox1.Appendtext(""+[char]13+[char]10)
				$richTextBox1.Appendtext("--------------------------------------------------------- "+$server+" -------------------------------------------------"+[char]13+[char]10)
				$richTextBox1.Appendtext(""+[char]13+[char]10)
				# Reformat the user list stored in $user_details from previous step to be more readable:
				# Replacing a "double space" with a carriage return.
				$user_details -Replace ("  ", [char]13)
				# Parse each line of the result, add a linebreak and append it to the RichTextBox
				Foreach ($line in $user_details) 	
					{
					$richTextBox1.Appendtext($line+[char]13+[char]10)
					}
				}
			If ($lastexitcode -eq "5") 	# Access Denied by the remote host.
				{
				$richTextBox1.Appendtext($server+" : The command could not be run on the remote host: " +$server+[char]13+[char]10)
				$richTextBox1.Appendtext($server+" : Access was denied. Please verify that the computer is online, and that your credentials are correct."+[char]13+[char]10)
				$richTextBox1.Appendtext(""+[char]13+[char]10)
				}
			}
		}
	#Else Loop for IPbox not empty
	Else
		{
		$user_details = psexec.exe ('\\{0}' -f $ipaddress_textBox3.text) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net user ('"{0}"' -f $user_to_manage_textBox.text)
		If ($lastexitcode -eq "2")
			{
			$richTextBox1.Appendtext($ipaddress_textBox3.text+" : User "+$user_to_manage_textBox.text+" not found on host "+$server+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		If ($lastexitcode -eq "1326") # User name or password incorrect.
			{
				$richTextBox1.Appendtext($ipaddress_textBox3.text+" : ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
			}	
		If ($lastexitcode -eq "0") # Success
			{
			# Insert a break between the outputs for each remote host, otherwise it'll be a real mess to read.
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			$richTextBox1.Appendtext("--------------------------------------------------------- "+$server+" -------------------------------------------------"+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			# Reformat the user list stored in $user_details from previous step to be more readable:
			# Replacing a "double space" with a carriage return.
			$user_details -Replace ("  ", [char]13)
			# Parse each line of the result, add a linebreak and append it to the RichTextBox
			Foreach ($line in $user_details) 	
				{
				$richTextBox1.Appendtext($line+[char]13+[char]10)
				}
			}
		If ($lastexitcode -eq "5") 	# Access Denied by the remote host.
			{
			$richTextBox1.Appendtext($ipaddress_textBox3.text+" : The command could not be run on the remote host: " +$server+[char]13+[char]10)
			$richTextBox1.Appendtext($ipaddress_textBox3.text+" : Access was denied. Please verify that the computer is online, and that your credentials are correct."+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}
		}
	}
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}

#------------------------------------------------------------------------------------------------------------

Function reset_password_ButtonChecks
{
If (!$user_to_manage_textBox.text)
    {
    $richTextBox1.Appendtext("Reset Password field is empty! Please enter the new password and try again."+[char]13+[char]10)
    $richTextBox1.Appendtext(""+[char]13+[char]10)
	}
ElseIf (!$password_reset_textBox.text)
    {
	$richTextBox1.Appendtext("Reset Password to box is empty! Please enter the new password and try again."+[char]13+[char]10)
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	}
Else
	{
	reset_password
	}
}

#------------------------------------------------------------------------------------------------------------

Function reset_password 
{
# First we must detect if there is a Host name or IP Address in the box or not:
If (!$ipaddress_textBox3.text) #if the contents of the IP address box is empty or NULL then use CSV file
	{
	$list = Import-Csv ($csv_textBox.Text)
	Foreach ($entry in $list)
		{
		$server = $entry.RemoteHost 
		$user_details = psexec.exe ('\\{0}' -f $server) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net user ('"{0}"' -f $user_to_manage_textBox.text) ($password_reset_textBox.text)
		If ($lastexitcode -eq "1326") # User name or password incorrect.
			{
			$richTextBox1.Appendtext($server+" : ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
			}	
		If ($lastexitcode -eq "2")	# Error User not found
		{ 
		$richTextBox1.Appendtext($server+" : ERROR: User not found."+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		} 
		If ($lastexitcode -eq "0") # Success
			{
			$richTextBox1.Appendtext($server+" : Password for user "+$user_to_manage_textBox.text+" was successfully set to "+$password_reset_textBox.text+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			Foreach ($line in $user_details)
				{
				$richTextBox1.Appendtext($line+[char]13+[char]10) #Display each line in the richtextbox of the GUI.
				}
			}
		If ($lastexitcode -eq "5") # Access denied
			{
			$richTextBox1.Appendtext($server+" : The command could not be run on the remote host: " +$server+[char]13+[char]10)
			$richTextBox1.Appendtext($server+" : Access was denied. Please verify that the computer is online, and that your credentials are correct.")
			}
		} 
	}
Else 	# Use the single IP Address or Hostname rather than the CSV
	{ # Start Loop B1
	$user_details = psexec.exe ('\\{0}' -f $ipaddress_textBox3.text) -u ($adminuser_textBox1.text) -p ($password_textBox2.text) CMD /C net user ('"{0}"' -f $user_to_manage_textBox.text) ($password_reset_textBox.text)
	If ($lastexitcode -eq "1326") # User name or password incorrect.
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": ERROR: Could not connect to remote system, unknown user name or bad password."+[char]13+[char]10)
		}	
	If ($lastexitcode -eq "2")	# Error User not found
		{ 
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": ERROR: User not found."+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		} 
	If ($lastexitcode -eq "0") # Success
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+": Password for user "+$user_to_manage_textBox.text+" was successfully set to "+$password_reset_textBox.text+[char]13+[char]10)
		$richTextBox1.Appendtext(""+[char]13+[char]10)
		Foreach ($line in $user_details)
			{
			$richTextBox1.Appendtext($line+[char]13+[char]10) #Display each line in the richtextbox of the GUI.
			}
		}
	If ($lastexitcode -eq "5") # Access denied
		{
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : The command could not be run on the remote host: " +$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext($ipaddress_textBox3.text+" : Access was denied. Please verify that the computer is online, and that your credentials are correct.")
		}
	}
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}

#--------------------------------------------------------------------------------------------------------------------------------

Function PSTOOLS
{
# Function to perform action <test if PSTools exists or not.> on button click.
# Store result of file exists check to $pstools_test
$pstools_test = [System.IO.File]::Exists("C:\Program Files (x86)\Sysinternals\PSTools\psexec.exe"+[char]13+[char]10)
If ($pstools_test -eq "True") 
	{
	$richTextBox1.Appendtext("PS Tools exists in C:\Program Files (x86)\Sysinternals\PSTools"+[char]13+[char]10)
	$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
	}
Else 
	{
	$richTextBox1.Appendtext("PS Tools is not installed. "+[char]13+[char]10)
	$richTextBox1.Appendtext("Please wait while we check to see if Internet access is available so that we can download & install PSTools..."+[char]13+[char]10)
	CheckInternetAccess
	}
}

#------------------------------------------------------------------------------------------------------------

Function CheckInternetAccess 
{
# Function to check that the Internet is accessible
$richTextBox1.Appendtext("Checking Internet access is working..."+[char]13+[char]10)
$nettest = ([Activator]::CreateInstance([Type]::GetTypeFromCLSID([Guid]‘{DCB00C01-570F-4A9B-8D69-199FDBA5723B}’)).IsConnectedToInternet)
If ($nettest = "True")
	{
	$richTextBox1.Appendtext("Internet access is working!"+[char]13+[char]10)
	Diskspace
	}
Else 
	{
	$richTextBox1.Appendtext("There seems to be a problem connecting to the Internet."+[char]13+[char]10)
	$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
	}
}

#------------------------------------------------------------------------------------------------------------	

Function Diskspace
{
# Display message that says checking for Temporary folder on C:
$richTextBox1.Appendtext("Checking that there is sufficient free diskspace on drive C: "+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
# Check drive C: disk size:
$disksize = (Get-WmiObject Win32_LogicalDisk -Filter "DeviceID='C:'" | Foreach-Object {$_.Size})
# 1gb = 1073741824
$cdrive = ($disksize / 1073741824)
# Round the disksize to a whole number.
$c=[Math]::floor($cdrive)
# Display Capacity of Drive C:
$richTextBox1.Appendtext("Capacity of Drive C: is : "+$c+" Gigabytes."+[char]13+[char]10)
# -----
# Check free disk space on C:
$disk = Get-WmiObject Win32_LogicalDisk -Filter "DeviceID='C:'" | Foreach-Object {$_.FreeSpace}
# 1gb = 1073741824
$freediskspace = ($disk / 1073741824)
# Round the free disk space to a whole number.
$d=[Math]::floor($freediskspace)
# Display current free space on drive C:
$richTextBox1.Appendtext("Current free space on Drive C: is : "+$d+" Gigabytes."+[char]13+[char]10)
# Conditional = check that free disk space on C: = greater than 1Gb. This means that there is sufficient disk space to install PSTools
If ($d -gt 1)
	{
	$richTextBox1.Appendtext("There is sufficient free disk space on drive C: to install PSTools..."+[char]13+[char]10)
	# Continue to download PSTools function
	DownloadPSTools
	}
Else # There is insufficient space... (Display error, then exit loop/script)
	{
	$richTextBox1.Appendtext("There is insufficient free disk space on drive C: to install PSTools..."+[char]13+[char]10)
	$richTextBox1.Appendtext("Please clear at least 10mb of free space on drive C: and then try again."+[char]13+[char]10)
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	}
}

#------------------------------------------------------------------------------------------------------------

Function DownloadPSTools {
# Function to download PSTools from the SysInternals website
$richTextBox1.Appendtext("Checking that C:\Temporary exists..."+[char]13+[char]10)
$TemporaryExists = (Test-Path C:\Temporary -pathType container)
If ($TemporaryExists -ne "True") 
	{
	$richTextBox1.Appendtext("C:\Temporary doesn't exist... creating folder."+[char]13+[char]10)
	md c:\Temporary
	$TemporaryExists = (Test-Path C:\Temporary -pathType container)
	If ($TemporaryExists -ne "False") 
		{
		$richTextBox1.Appendtext("Could not create C:\Temporary. Please check that you have sufficient security permission to create a folder on the root of the C drive."+[char]13+[char]10)
		}
	Else 
		{
		}
	} 
Else
	{
	}
$richTextBox1.Appendtext("PS Tools is being downloaded to C:\Temporary."+[char]13+[char]10)
$richTextBox1.Appendtext("Please Wait..."+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
# Set Download destination
$storageDir = "C:\Temporary"
$webclient = New-Object System.Net.WebClient
# Set Download target URL
$url = "http://download.sysinternals.com/files/PSTools.zip"
# Set Downloaded file location
$file = "$storageDir\PSTools.zip"
# Initiate download of file, saving to specified location
$download = $webclient.DownloadFile($url,$file)
# Check that the file exists after it was downloaded...
# Set Downloaded file location
$zipfile = "C:\Temporary\PSTools.zip"
# Check for the PSTools.zip
$Downloaded = (Test-Path $zipfile -PathType Leaf)
# Downloaded file exists, so report to the console, then progress to Install function:
If ($Downloaded -eq "True") 
	{
	$richTextBox1.Appendtext("PS Tools has been downloaded to C:\Temporary."+[char]13+[char]10)
	$richTextBox1.Appendtext("You may now proceed to install PSTools by clicking on the Install PSTools button."+[char]13+[char]10)
	# Go to Install PSTools Function	
	InstallPSTools 
	}
# File not downloaded... display error, and try again.
Else 
	{
	$richTextBox1.Appendtext("There was a problem downloading PS Tools. It has NOT been downloaded."+[char]13+[char]10)
	#Try downloading the file again... restart DownloadPSTools function again!
	DownloadPSTools
	}
}

#------------------------------------------------------------------------------------------------------------

Function InstallPSTools 
{
#Check that The file has been downloaded before running:
$Check = (Test-Path C:\Temporary\PSTools.zip -pathType leaf)
# If C:\Temporary\PSTools.zip doesn't exist, download it first:
If ($Check -ne "True") 
	{
	$richTextBox1.Appendtext("PSTools.zip has not been downloaded yet. Downloading..."+[char]13+[char]10)
	DownloadPSTools
	}
Else
	{
	# Part of the Zip Extracter functions for installing PSTools to C:\Program Files (x86)\Sysinternals 
	$zipFiles = Get-ChildItem -Path $zips -Recurse -Filter "*.zip" | % { $_.DirectoryName + "\$_" } 
	ForEach ($zipFile In $zipFiles) 
		{
		$split = $zipFile.Split("\")[-1] 
		$richTextBox1.Appendtext("Found zip-file : $split"+[char]13+[char]10)
		GetZipFileItems $zipFile 
		}
	}
#PathAndCleanUp  
}

#--------------------------------------------------------------------------------------------------------------------------------

Function EditCSVFile_ButtonChecks
{
If (!$csv_textBox.Text)
    {
	$richTextBox1.Appendtext("Path to CSV File field is empty! Please enter the path to the CSV file and try again."+[char]13+[char]10)
	$richTextBox1.Appendtext(""+[char]13+[char]10)
	}
Else
	{
	EditCSVFile
	}
}

#--------------------------------------------------------------------------------------------------------------------------------

Function EditCSVFile 
{ 
invoke-command -scriptblock { c:\windows\notepad.exe $csv_textBox.Text }
$x = "notepad"
$check=Get-Process notepad -ErrorAction SilentlyContinue
While ($x -eq "notepad") 
	{
	$check=Get-Process notepad -ErrorAction SilentlyContinue
	If ($check.ProcessName -ne "notepad") 
		{ # Notepad is closed
		$richTextBox1.Appendtext("Finished editing the CSV file, did you save it?"+[char]13+[char]10)
		$richTextBox1.Appendtext("Ready for next task."+[char]13+[char]10)
		$x=0 # exits the while loop
		}
	}
}

#--------------------------------------------------------------------------------------------------------------------------------

#Add the location of PSTools to the environment shell for the duration of this script
$env:Path = $env:Path + ";C:\Program Files (x86)\Sysinternals\PSTools"

#Call the Function
GenerateForm
