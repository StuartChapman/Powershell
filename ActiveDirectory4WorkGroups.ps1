function GenerateForm {
# Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null

#Create the Form Object
$form1 = New-Object System.Windows.Forms.Form
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState

# Remove the maximize button.
$form1.MaximizeBox = $false
# Remove the minimize button.
$form1.MinimizeBox = $false

# Set window title
$form1.Text = "Active Directory for Workgroups"

# Set Window size
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 708
$System_Drawing_Size.Width = 777
$form1.ClientSize = $System_Drawing_Size

# Disable resize of window:
$form1.FormBorderStyle = 3
$form1.DataBindings.DefaultDataSourceUpdateMode = 0
$form1.Name = "form1"

#Correct the initial state of the form to prevent the .Net maximized form issue
$OnLoadForm_StateCorrection=
{
	$form1.WindowState = $InitialFormWindowState
}

#Create the Group-Box objects:
$Console_Box = New-Object System.Windows.Forms.GroupBox
$GroupManagementBox = New-Object System.Windows.Forms.GroupBox
$InputDetailsgroupBox = New-Object System.Windows.Forms.GroupBox
$Tools_Box = New-Object System.Windows.Forms.GroupBox
$UserManagementBox = New-Object System.Windows.Forms.GroupBox

#Create the Text-Box objects:
#$adminuser_textBox1 = New-Object System.Windows.Forms.TextBox
$csv_textBox = New-Object System.Windows.Forms.TextBox
$group_textBox = New-Object System.Windows.Forms.TextBox
$ipaddress_textBox3 = New-Object System.Windows.Forms.TextBox
#$password_textBox2 = New-Object System.Windows.Forms.TextBox
$password_reset_textBox = New-Object System.Windows.Forms.TextBox
$richTextBox1 = New-Object System.Windows.Forms.RichTextBox
$user_to_manage_textBox = New-Object System.Windows.Forms.TextBox

#Create the Button objects:
#[User Management]
$Create_User_button = New-Object System.Windows.Forms.Button
$delete_user_button = New-Object System.Windows.Forms.Button
$disable_user_button = New-Object System.Windows.Forms.Button
$enable_user_button = New-Object System.Windows.Forms.Button
$find_user_button = New-Object System.Windows.Forms.Button
$reset_password_button = New-Object System.Windows.Forms.Button

#[Group Management]
$add_user_to_group_button = New-Object System.Windows.Forms.Button
$Create_Group_button = New-Object System.Windows.Forms.Button
$delete_group_button = New-Object System.Windows.Forms.Button
$Delete_User_From_Group_button = New-Object System.Windows.Forms.Button
$group_membership_button = New-Object System.Windows.Forms.Button
$list_groups_button = New-Object System.Windows.Forms.Button

#[Tools]
$clear_button = New-Object System.Windows.Forms.Button
$csv_button = New-Object System.Windows.Forms.Button
$help_button = New-Object System.Windows.Forms.Button
$NSLookup_button = New-Object System.Windows.Forms.Button
$PING_button = New-Object System.Windows.Forms.Button
$break_button = New-Object System.Windows.Forms.Button
$tracert_button = New-Object System.Windows.Forms.Button

#Create the Label objects:
#$admin_label = New-Object System.Windows.Forms.Label
$csv_label = New-Object System.Windows.Forms.Label
$group_label = New-Object System.Windows.Forms.Label
$ipaddress_label = New-Object System.Windows.Forms.Label
#$password_label = New-Object System.Windows.Forms.Label
$reset_password_label = New-Object System.Windows.Forms.Label
$user_to_manage_label = New-Object System.Windows.Forms.Label

#region
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
#endregion

#region
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
$richTextBox1.font = "Arial"
$Console_Box.Controls.Add($richTextBox1)
#endregion

#region
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
#endregion
#region - Leaving removed <textbox/button/label> positions here in case they need to be replaced in the future.
#$NSLookup_button.Anchor = 15
#$NSLookup_button.DataBindings.DefaultDataSourceUpdateMode = 0
#$System_Drawing_Point = New-Object System.Drawing.Point
#$System_Drawing_Point.X = 208
#$System_Drawing_Point.Y = 79
#$NSLookup_button.Location = $System_Drawing_Point
#$NSLookup_button.Name = "NSLookup_button"
#$System_Drawing_Size = New-Object System.Drawing.Size
#$System_Drawing_Size.Height = 25
#$System_Drawing_Size.Width = 182
#$NSLookup_button.Size = $System_Drawing_Size
#$NSLookup_button.TabIndex = 36
#$NSLookup_button.Text = "NSLookup"
#$NSLookup_button.UseVisualStyleBackColor = $True
#$NSLookup_button.add_Click({nslookup_Host})
#$Tools_Box.Controls.Add($NSLookup_button)
#endregion
#region
$break_button.Anchor = 15
$break_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 18
$break_button.Location = $System_Drawing_Point
$break_button.Name = "Break_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 25
$System_Drawing_Size.Width = 182
$break_button.Size = $System_Drawing_Size
$break_button.TabIndex = 31
$break_button.Text = "Break Current Operation"
$break_button.UseVisualStyleBackColor = $True
$break_button.add_Click({break_current_operation})
$Tools_Box.Controls.Add($break_button)
#endregion
#region
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
#endregion
#region
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
#endregion
#region - Leaving removed <textbox/button/label> positions here in case they need to be replaced in the future.
#$tracert_button.Anchor = 15
#$tracert_button.DataBindings.DefaultDataSourceUpdateMode = 0
#$System_Drawing_Point = New-Object System.Drawing.Point
#$System_Drawing_Point.X = 6
#$System_Drawing_Point.Y = 79
#$tracert_button.Location = $System_Drawing_Point
#$tracert_button.Name = "tracert_button"
#$System_Drawing_Size = New-Object System.Drawing.Size
#$System_Drawing_Size.Height = 25
#$System_Drawing_Size.Width = 182
#$tracert_button.Size = $System_Drawing_Size
#$tracert_button.TabIndex = 35
#$tracert_button.Text = "Trace Route"
#$tracert_button.UseVisualStyleBackColor = $True
#$tracert_button.add_Click()
#$Tools_Box.Controls.Add($tracert_button)
#endregion
#region - Leaving removed <textbox/button/label> positions here in case they need to be replaced in the future.
#$PING_button.Anchor = 15
#$PING_button.DataBindings.DefaultDataSourceUpdateMode = 0
#$System_Drawing_Point = New-Object System.Drawing.Point
#$System_Drawing_Point.X = 6
#$System_Drawing_Point.Y = 49
#$PING_button.Location = $System_Drawing_Point
#$PING_button.Name = "PING_button"
#$System_Drawing_Size = New-Object System.Drawing.Size
#$System_Drawing_Size.Height = 25
#$System_Drawing_Size.Width = 182
#$PING_button.Size = $System_Drawing_Size
#$PING_button.TabIndex = 33
#$PING_button.Text = "Ping Host"
#$PING_button.UseVisualStyleBackColor = $True
#$PING_button.add_Click({})
#$Tools_Box.Controls.Add($PING_button)
#endregion
#region
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
#endregion
#region
$csv_button.Anchor = 15
$csv_button.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 173
$csv_button.Location = $System_Drawing_Point
$csv_button.Name = "csv_button"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 24
$System_Drawing_Size.Width = 150
$csv_button.Size = $System_Drawing_Size
$csv_button.TabIndex = 29
$csv_button.Text = "Edit CSV File"
$csv_button.UseVisualStyleBackColor = $True
$csv_button.add_Click({EditCSVFile})
$InputDetailsgroupBox.Controls.Add($csv_button)
#endregion
#region
$csv_textBox.Anchor = 15
$csv_textBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 162
$System_Drawing_Point.Y = 137
$csv_textBox.Location = $System_Drawing_Point
$csv_textBox.Name = "csv_textBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 181
$csv_textBox.Size = $System_Drawing_Size
$csv_textBox.TabIndex = 28
$csv_textBox.Text = "D:\Serverlist.csv"
$InputDetailsgroupBox.Controls.Add($csv_textBox)
#endregion
#region
$password_reset_textBox.Anchor = 15
$password_reset_textBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 162
$System_Drawing_Point.Y = 108
$password_reset_textBox.Location = $System_Drawing_Point
$password_reset_textBox.Name = "password_reset_textBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 181
$password_reset_textBox.Size = $System_Drawing_Size
$password_reset_textBox.TabIndex = 26
$InputDetailsgroupBox.Controls.Add($password_reset_textBox)
#endregion
#region
$csv_label.Anchor = 15
$csv_label.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 143
$csv_label.Location = $System_Drawing_Point
$csv_label.Name = "csv_label"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 130
$csv_label.Size = $System_Drawing_Size
$csv_label.TabIndex = 27
$csv_label.Text = "Path to CSV file:"
$InputDetailsgroupBox.Controls.Add($csv_label)
#endregion
#region
$group_label.Anchor = 15
$group_label.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 84
$group_label.Location = $System_Drawing_Point
$group_label.Name = "group_label"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 18
$System_Drawing_Size.Width = 112
$group_label.Size = $System_Drawing_Size
$group_label.TabIndex = 23
$group_label.Text = "Group to Administer:"
$InputDetailsgroupBox.Controls.Add($group_label)
#endregion
#region - Leaving removed <textbox/button/label> positions here in case they need to be replaced in the future.
#$adminuser_textBox1.Anchor = 15
#$adminuser_textBox1.DataBindings.DefaultDataSourceUpdateMode = 0
#$System_Drawing_Point = New-Object System.Drawing.Point
#$System_Drawing_Point.X = 162
#$System_Drawing_Point.Y = 18
#$adminuser_textBox1.Location = $System_Drawing_Point
#$adminuser_textBox1.Name = "adminuser_textBox1"
#$System_Drawing_Size = New-Object System.Drawing.Size
#$System_Drawing_Size.Height = 20
#$System_Drawing_Size.Width = 181
#$adminuser_textBox1.Size = $System_Drawing_Size
#$adminuser_textBox1.TabIndex = 16
#$adminuser_textBox1.Text = "Administrator"
#$InputDetailsgroupBox.Controls.Add($adminuser_textBox1)
#endregion
#region - Leaving removed <textbox/button/label> positions here in case they need to be replaced in the future.
#$admin_label.Anchor = 15
#$admin_label.DataBindings.DefaultDataSourceUpdateMode = 0
#$System_Drawing_Point = New-Object System.Drawing.Point
#$System_Drawing_Point.X = 6
#$System_Drawing_Point.Y = 24
#$admin_label.Location = $System_Drawing_Point
#$admin_label.Name = "admin_label"
#$System_Drawing_Size = New-Object System.Drawing.Size
#$System_Drawing_Size.Height = 18
#$System_Drawing_Size.Width = 131
#$admin_label.Size = $System_Drawing_Size
#$admin_label.TabIndex = 15
#$admin_label.Text = "Administrator Account:"
#$InputDetailsgroupBox.Controls.Add($admin_label)
#endregion
#region
$user_to_manage_label.Anchor = 15
$user_to_manage_label.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 54
$user_to_manage_label.Location = $System_Drawing_Point
$user_to_manage_label.Name = "user_to_manage_label"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 18
$System_Drawing_Size.Width = 100
$user_to_manage_label.Size = $System_Drawing_Size
$user_to_manage_label.TabIndex = 21
$user_to_manage_label.Text = "User to Administer:"
$InputDetailsgroupBox.Controls.Add($user_to_manage_label)
#endregion
#region
$group_textBox.Anchor = 15
$group_textBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 162
$System_Drawing_Point.Y = 78
$group_textBox.Location = $System_Drawing_Point
$group_textBox.Name = "group_textBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 181
$group_textBox.Size = $System_Drawing_Size
$group_textBox.TabIndex = 24
$InputDetailsgroupBox.Controls.Add($group_textBox)
#endregion
#region
$ipaddress_label.Anchor = 15
$ipaddress_label.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 24
$ipaddress_label.Location = $System_Drawing_Point
$ipaddress_label.Name = "ipaddress_label"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 14
$System_Drawing_Size.Width = 151
$ipaddress_label.Size = $System_Drawing_Size
$ipaddress_label.TabIndex = 19
$ipaddress_label.Text = "Remote Host or IP Address:"
$InputDetailsgroupBox.Controls.Add($ipaddress_label)
#endregion
#region - Leaving removed <textbox/button/label> positions here in case they need to be replaced in the future.
#$password_textBox2.Anchor = 15
#$password_textBox2.DataBindings.DefaultDataSourceUpdateMode = 0
#$System_Drawing_Point = New-Object System.Drawing.Point
#$System_Drawing_Point.X = 162
#$System_Drawing_Point.Y = 48
#$password_textBox2.Location = $System_Drawing_Point
#$password_textBox2.Name = "password_textBox2"
#$System_Drawing_Size = New-Object System.Drawing.Size
#$System_Drawing_Size.Height = 20
#$System_Drawing_Size.Width = 181
#$password_textBox2.Size = $System_Drawing_Size
#$password_textBox2.TabIndex = 18
#$password_textBox2.Text = "Sp4mBurg3r"
#$InputDetailsgroupBox.Controls.Add($password_textBox2)
#endregion
#region - Leaving removed <textbox/button/label> positions here in case they need to be replaced in the future.
#$password_label.Anchor = 15
#$password_label.DataBindings.DefaultDataSourceUpdateMode = 0
#$System_Drawing_Point = New-Object System.Drawing.Point
#$System_Drawing_Point.X = 6
#$System_Drawing_Point.Y = 54
#$password_label.Location = $System_Drawing_Point
#$password_label.Name = "password_label"
#$System_Drawing_Size = New-Object System.Drawing.Size
#$System_Drawing_Size.Height = 18
#$System_Drawing_Size.Width = 135
#$password_label.Size = $System_Drawing_Size
#$password_label.TabIndex = 17
#$password_label.Text = "Administrator Password:"
#$InputDetailsgroupBox.Controls.Add($password_label)
#endregion
#region
$ipaddress_textBox3.Anchor = 15
$ipaddress_textBox3.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 162
$System_Drawing_Point.Y = 18
$ipaddress_textBox3.Location = $System_Drawing_Point
$ipaddress_textBox3.Name = "ipaddress_textBox3"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 181
$ipaddress_textBox3.Size = $System_Drawing_Size
$ipaddress_textBox3.TabIndex = 20
$ipaddress_textBox3.Text = ""
$InputDetailsgroupBox.Controls.Add($ipaddress_textBox3)
#endregion
#Region
$user_to_manage_textBox.Anchor = 15
$user_to_manage_textBox.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 162
$System_Drawing_Point.Y = 48
$user_to_manage_textBox.Location = $System_Drawing_Point
$user_to_manage_textBox.Name = "user_to_manage_textBox"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 181
$user_to_manage_textBox.Size = $System_Drawing_Size
$user_to_manage_textBox.TabIndex = 22
$InputDetailsgroupBox.Controls.Add($user_to_manage_textBox)
#EndRegion
#region
$reset_password_label.Anchor = 15
$reset_password_label.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 114
$reset_password_label.Location = $System_Drawing_Point
$reset_password_label.Name = "reset_password_label"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 18
$System_Drawing_Size.Width = 134
$reset_password_label.Size = $System_Drawing_Size
$reset_password_label.TabIndex = 25
$reset_password_label.Text = "Reset Password to:"
$InputDetailsgroupBox.Controls.Add($reset_password_label)
#endregion
#region
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
#endregion
#region
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
$delete_group_button.add_Click({delete_group})
$GroupManagementBox.Controls.Add($delete_group_button)
#endregion
#region
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
$Delete_User_From_Group_button.add_Click({Delete_User_From_Group})
$GroupManagementBox.Controls.Add($Delete_User_From_Group_button)
#endregion
#region
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
$Create_Group_button.add_Click({create_group})
$GroupManagementBox.Controls.Add($Create_Group_button)
#endregion
#region
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
$group_membership_button.add_Click({check_group_membership})
$GroupManagementBox.Controls.Add($group_membership_button)
#endregion
#region
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
#endregion
#region
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
$add_user_to_group_button.add_Click({Add_User_To_Group})
$GroupManagementBox.Controls.Add($add_user_to_group_button)
#endregion
#region
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
#endregion
#region
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
$disable_user_button.add_Click({disable_user})
$UserManagementBox.Controls.Add($disable_user_button)
#endregion
#region
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
$Create_User_button.add_Click({create_user})
$UserManagementBox.Controls.Add($Create_User_button)
#endregion
#region
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
$enable_user_button.add_Click({enable_user})
$UserManagementBox.Controls.Add($enable_user_button)
#endregion
#region
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
$delete_user_button.add_Click({delete_user})
$UserManagementBox.Controls.Add($delete_user_button)
#endregion
#region
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
$reset_password_button.add_Click({reset_password})
$UserManagementBox.Controls.Add($reset_password_button)
#endregion
#region
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
#endregion

#Save the initial state of the form
$InitialFormWindowState = $form1.WindowState
#Init the OnLoad event to correct the initial state of the form
$form1.add_Load($OnLoadForm_StateCorrection)
#Run the Form
$form1.ShowDialog()| Out-Null

} #End Function

#--------------------------------------------------------------------------------------------------------------------------------

Function Help
{
$richTextBox1.Appendtext("-[About - 12/08/2016]-"+[char]13+[char]10)
$richTextBox1.Appendtext("You can either apply LOCAL User or LOCAL Group changes to a single, Windows-based host, or to multiple Windows-based hosts, using this program. Or you can use it to check a user exists, or check group memberships."+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext("-[WinRM]-"+[char]13+[char]10)
$richTextBox1.Appendtext("Currently, this program just uses WinRM over HTTP to communicate with Windows based machines. "+[char]13+[char]10)
$richTextBox1.Appendtext("Eventually, it will use WinRM over HTTPS to communicate with Windows based machines. So a pre-requisite for this program is that WinRM has been configured on the remote hosts to allow scripts/commands to be run."+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext("-[Credentials]-"+[char]13+[char]10)
$richTextBox1.Appendtext("For each operation, you'll be prompted for the credentials to use to connect to all of the remote hosts you want to apply changes to."+[char]13+[char]10)
$richTextBox1.Appendtext("Ensure that the credentials you're using to connect to the remote hosts are the same, or you may encounter access denied errors."+[char]13+[char]10)
$richTextBox1.Appendtext("The credentials that you enter when prompted to, are stored securely, and won't be found in the script that creates this GUI."+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext("-[Single Host, Muliple Hosts, and the use of a CSV file]-"+[char]13+[char]10)
$richTextBox1.Appendtext("For a single host, you can either use an IP address or a FQDN hostname. For multiple hosts, you can specify a path to a csv file. The first line of the csv should have RemoteHost in it. Each line after that should have the IP address or FQDN of 1 host only."+[char]13+[char]10)
$richTextBox1.Appendtext("If you leave both the single host and the path to csv fields populated with data, you'll get an error message informing you to clear one of them. "+[char]13+[char]10)
$richTextBox1.Appendtext("To see if I was lying, you just tested it didn't you?"+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext("-[Users]-"+[char]13+[char]10)
$richTextBox1.Appendtext("To do something to a User account, enter the user name, and then click the button for what you want to do: Create or Delete."+[char]13+[char]10)
$richTextBox1.Appendtext("If you don't enter a user name, but click on the list users button, it will list all of the user accounts on the remote host (or hosts)."+[char]13+[char]10)
$richTextBox1.Appendtext("However, if you do enter a user name, it will check that the user exists, and will give you some basic information about the group."+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext("-[Groups]-"+[char]13+[char]10)
$richTextBox1.Appendtext("To do something to a Group account, enter the group name, and then click the button for what you want to do: Create, Delete, Check Group Membership. If you don't enter a Group Name but click the List Groups or Check Group Membership buttons, it will query ALL groups on the remote host (or hosts)."+[char]13+[char]10)
$richTextBox1.Appendtext("However, if you do enter a group name, it will check that the group exists, and will give you the members of the group."+[char]13+[char]10)
$richTextBox1.Appendtext(""+[char]13+[char]10)
$richTextBox1.Appendtext("-[Logging]-"+[char]13+[char]10)
$richTextBox1.Appendtext("All logging is currently written to this console box within the GUI."+[char]13+[char]10)
$richTextBox1.Appendtext("Additional logging will be added to write any changes made to a logfile which will be stored in c:\windows\logs\ad4w\ad4w.log"+[char]13+[char]10)
}
#--------------------------------------------------------------------------------------------------------------------------------
Function break_current_operation
{
$richTextBox1.Appendtext("User cancelled operation."+[char]13+[char]10)
Return
#Not sure how to do this yet.
}
#--------------------------------------------------------------------------------------------------------------------------------
Function Enable_User #FINISHED. 30/06/2016
{
#Check for a username
If (!$user_to_manage_textBox.text){
	$richTextBox1.Appendtext("No user to manage, canceling operation."+[char]13+[char]10)
	return
	}
If ((!$csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#both empty
	$richTextBox1.Appendtext("No hostname or path to csv entered, canceling operation."+[char]13+[char]10)
	return
	}
If (($csv_textBox.Text) -AND ($ipaddress_textBox3.text)){#both have data
	$richTextBox1.Appendtext("Both the hostname and path to csv have data. Please clear one, canceling operation."+[char]13+[char]10)
	return
	}
If (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text))#If CSV is populated and IP is empty - use a CSV
	{
	$richTextBox1.Appendtext("User has specified a multiple server operation, using a csv file."+[char]13+[char]10)
	#Check for CSV file
	$richTextBox1.Appendtext("Checking for "+$csv_textBox.Text+"..."+[char]13+[char]10)
	$test1 = Test-Path $csv_textBox.Text
	If ($Test1 -eq $false){
		$richTextBox1.Appendtext("CSV File doesn't exist."+[char]13+[char]10)
		Return
		}
	Else{
		$richTextBox1.Appendtext($csv_textBox.Text+" exists."+[char]13+[char]10)
		#Import the csv
		$list = Import-Csv ($csv_textBox.Text) 
		$entries = $list | measure-object | select-object -property count
		$richTextBox1.Appendtext("Importing CSV File..."+[char]13+[char]10)
		$richTextBox1.Appendtext("Number of remote servers in "+$csv_textBox.Text+" : "+$entries.count+[char]13+[char]10)
		$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
		Try{
			$Credential = Get-Credential -Credential "localhost\administrator"
		}
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Break
		}	
		Finally{	
			#Write error to console
			$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
			$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		}
		$richTextBox1.Appendtext("LocalHost\Administrator credentials stored ok."+[char]13+[char]10)
		#Loop through entries in the csv file and enable the user on each host
		Foreach ($entry in $list){
			$server = $entry.RemoteHost
			$richTextBox1.Appendtext("Checking that the user "+$user_to_manage_textBox.text+" exists on "+$server+[char]13+[char]10)
			#Checking that the user exists on the server:
			Try{
				$richTextBox1.Appendtext("Connecting to "+$server+[char]13+[char]10)
				$session0 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
				net user $($args)}-ArgumentList $user_to_manage_textBox.text -ErrorAction Stop
			}
			Catch{
				$ErrorMessage = $_.Exception.Message
				$FailedItem = $_.Exception.ItemName
				Return
			}
			Finally{
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
				}
			If ($session0 -Match "success"){
				#User exists on server
				$richTextBox1.Appendtext("Confirmed that "+$user_to_manage_textBox.text+" exists on "+$server+[char]13+[char]10)
				}
			Try{
				$richTextBox1.Appendtext("Trying to enable user: "+$user_to_manage_textBox.text+" on "+$server+"..."+[char]13+[char]10)
				$session = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
				net user $($args) /ACTIVE:YES }-ArgumentList $user_to_manage_textBox.text -ErrorAction Stop
			}
			Catch{
				$ErrorMessage = $_.Exception.Message
				$FailedItem = $_.Exception.ItemName
				Break
			}
			Finally{
				#Write error to console
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
				If ($ErrorMessage -match "1326"){
					$richTextBox1.Appendtext("unknown user name or bad password."+[char]13+[char]10)
				}
				If ($ErrorMessage -eq "5"){
					$richTextBox1.Appendtext("Access denied."+[char]13+[char]10)
				}
			}
			If ($session -ccontains "The command completed successfully."){
				$richTextBox1.Appendtext("User "+$user_to_manage_textBox.text+" is enabled on $server."+[char]13+[char]10)
			}
		}#ForEach
	}#Else
}#IF
IF ((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text)){#If CSV is empy and IPaddress is populated - use a CSV. 
	$richTextBox1.Appendtext("User has specified a single host operation, using: "+$ipaddress_textBox3.text+" as server to connect to."+[char]13+[char]10)
	#Get credentials
	$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
	Try{
		$Credential = Get-Credential -Credential "localhost\administrator"
	}	
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
		Return
	}		
	Finally{	
		#Write error to console
		$richTextBox1.Appendtext("Error storing credentials."+[char]13+[char]10)
		$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
		$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
	}
	$richTextBox1.Appendtext("Remote server's local Administrator credentials stored ok."+[char]13+[char]10)
	$richTextBox1.Appendtext("Connecting to "+$ipaddress_textBox3.text+[char]13+[char]10)
	$richTextBox1.Appendtext("Checking that the user "+$user_to_manage_textBox.text+" exists on "+$ipaddress_textBox3.text+[char]13+[char]10)
	#Checking that the user exists on the server:
	Try{
		$richTextBox1.Appendtext("Connecting to "+$ipaddress_textBox3.text+[char]13+[char]10)
		$session0 = Invoke-Command -ComputerName $ipaddress_textBox3.text -Credential $Credential -ScriptBlock {
		net user $($args)}-ArgumentList $user_to_manage_textBox.text -ErrorAction Stop
	}
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
		Return
	}
	Finally{
		$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
		$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
	}
	If ($session0 -Match "success"){
		#User exists on server
		$richTextBox1.Appendtext("Confirmed that "+$user_to_manage_textBox.text+" exists on "+$ipaddress_textBox3.text+[char]13+[char]10)
	}
	Try{
		$richTextBox1.Appendtext("Trying to enable user: "+$user_to_manage_textBox.text+" on "+$ipaddress_textBox3.text+"..."+[char]13+[char]10)
		$session = Invoke-Command -ComputerName $ipaddress_textBox3.text -Credential $Credential -ScriptBlock {
		net user $($args) /ACTIVE:YES }-ArgumentList $user_to_manage_textBox.text -ErrorAction Stop
	}
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
	}
	Finally{
		#Write error to console
		$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
		$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		If ($ErrorMessage -match "1326"){
			$richTextBox1.Appendtext("unknown user name or bad password."+[char]13+[char]10)
		}
		If ($ErrorMessage -eq "5"){
			$richTextBox1.Appendtext("Access denied."+[char]13+[char]10)
		}
	}
	If ($session -ccontains "The command completed successfully."){
		$richTextBox1.Appendtext("User "+$user_to_manage_textBox.text+" is enabled on "+$ipaddress_textBox3.text+[char]13+[char]10)
	}	
	#Finished operation. Notify console.
}#Close IF
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}#CLOSE FUNCTION
#------------------------------------------------------------------------------------------------------------
Function disable_user #FINISHED. 30/06/2016
{
#Check for a username
If (!$user_to_manage_textBox.text){
	$richTextBox1.Appendtext("No user to manage, canceling operation."+[char]13+[char]10)
	return
}
IF ((!$csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#both empty
	$richTextBox1.Appendtext("No IP Address, Hostname or path to csv file. Cannot continue."+[char]13+[char]10)
	Return
}
IF (($csv_textBox.Text) -AND ($ipaddress_textBox3.text)){#both populated
	$richTextBox1.Appendtext("Both the IP Address or Hostname field AND the path to csv file have data... which do you want to use? Please clear one. Cannot continue."+[char]13+[char]10)
	Return
}
If (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){# csv populated and ipaddress empty = use a CSV
	$richTextBox1.Appendtext("Operation selected: Disable user account."+[char]13+[char]10)
	$richTextBox1.Appendtext("User has specified a multiple server operation, using a csv file."+[char]13+[char]10)
	#Check for CSV file
	$richTextBox1.Appendtext("Checking for "+$csv_textBox.Text+"..."+[char]13+[char]10)
	$test1 = Test-Path $csv_textBox.Text
	If ($Test1 -eq $false){
		$richTextBox1.Appendtext("CSV File doesn't exist."+[char]13+[char]10)
	}
	Else{
		$richTextBox1.Appendtext($csv_textBox.Text+" exists."+[char]13+[char]10)
		#Import the csv
		$list = Import-Csv ($csv_textBox.Text) 
		$entries = $list | measure-object | select-object -property count
		$richTextBox1.Appendtext("Importing CSV File..."+[char]13+[char]10)
		$richTextBox1.Appendtext("Number of remote servers in "+$csv_textBox.Text+" : "+$entries.count+[char]13+[char]10)
		#Check these boxes aren't empty before running command on remote host:
		If (($user_to_manage_textBox.text -ne $null) -OR ($csv_textBox.Text -ne $null)){
			$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
			Try{
				$Credential = Get-Credential -Credential "localhost\administrator"
			}
			Catch{
				$ErrorMessage = $_.Exception.Message
				$FailedItem = $_.Exception.ItemName
			}	
			Finally{	
				#Write error to console
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
			}
			$richTextBox1.Appendtext("LocalHost\Administrator credentials stored ok."+[char]13+[char]10)
			#Loop through entries in the csv file and enable the user on each host
			Foreach ($entry in $list){ 
				$server = $entry.RemoteHost
				$richTextBox1.Appendtext("Connecting to "+$server+[char]13+[char]10)
				Try{
					$richTextBox1.Appendtext("Trying to disable user: "+$user_to_manage_textBox.text+" on "+$server+"..."+[char]13+[char]10)
					$session = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
					net user $($args) /ACTIVE:NO }-ArgumentList $user_to_manage_textBox.text -ErrorAction Stop
				}
				Catch{
					$ErrorMessage = $_.Exception.Message
					$FailedItem = $_.Exception.ItemName
					Return
				}
				Finally{
					#Write error to console
					$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
					$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
					If ($ErrorMessage -match "1326"){
						$richTextBox1.Appendtext("unknown user name or bad password."+[char]13+[char]10)
					}
				}
				If ($session -ccontains "The command completed successfully."){
					$richTextBox1.Appendtext("User "+$user_to_manage_textBox.text+" is disabled on $server."+[char]13+[char]10)
				}
			}#ForEach
		}#If empty variables
	}#Else
}#If csv
ElseIF ((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text)){ #csv empty, ipaddress populated = use single host 
	#Check there is a user in the box
	If (!$user_to_manage_textBox.text){
		$richTextBox1.Appendtext("No User account to enable, canceling operation."+[char]13+[char]10)
		return
	}
	$richTextBox1.Appendtext("Operation selected: Disable user account."+[char]13+[char]10)
	$richTextBox1.Appendtext("User has specified a single host operation, using: "+$ipaddress_textBox3.text+" as server to connect to."+[char]13+[char]10)
	#Get credentials
	$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
	Try{
		$Credential = Get-Credential -Credential "localhost\administrator"
	}
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
	}	
	Finally{	
		#Write error to console
		$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
		$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
	}
	$richTextBox1.Appendtext("Remote server's local Administrator credentials stored ok."+[char]13+[char]10)
	$richTextBox1.Appendtext("Connecting to "+$ipaddress_textBox3.text+[char]13+[char]10)
	Try{
		$session = Invoke-Command -ComputerName $ipaddress_textBox3.text -Credential $Credential -ScriptBlock {
		net user $($args) /ACTIVE:NO }-ArgumentList $user_to_manage_textBox.text -ErrorAction Stop
	}
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
	}
	Finally{
		#Write error to console
		$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
		$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		If ($ErrorMessage -match "1326"){
			$richTextBox1.Appendtext("unknown user name or bad password."+[char]13+[char]10)
			}
		}
	If ($session -ccontains "The command completed successfully."){
		$richTextBox1.Appendtext("User "+$user_to_manage_textBox.text+" is disabled on "+$ipaddress_textBox3.text+[char]13+[char]10)
		}
	}
#Finished operation. Notify console.
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}#CLOSE FUNCTION
#--------------------------------------------------------------------------------------------------------------------------------
Function delete_user{ #FINISHED. 30/06/2016
#User cock-ups		
If ((!$csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#both empty
	$richTextBox1.Appendtext("No IP Address, Hostname or path to csv file. Cannot continue."+[char]13+[char]10)
	Return
	}
If (($csv_textBox.Text) -AND ($ipaddress_textBox3.text)){#both populated
	$richTextBox1.Appendtext("Both the IP Address or Hostname field, and the path to csv file field have data. Please clear one of them. Cannot continue."+[char]13+[char]10)
	Return
	}
#Check for a username
If (!$user_to_manage_textBox.text){
	$richTextBox1.Appendtext("No user to manage, canceling operation."+[char]13+[char]10)
	return
	}
If (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#CSV populated and no IPAddress = use a CSV
	$richTextBox1.Appendtext("Operation selected: Delete user account "+$user_to_manage_textBox.text+[char]13+[char]10)
	$richTextBox1.Appendtext("User has specified a multiple server operation, using a csv file."+[char]13+[char]10)
	#Check for CSV file
	$richTextBox1.Appendtext("Checking for "+$csv_textBox.Text+"..."+[char]13+[char]10)
	$test1 = Test-Path $csv_textBox.Text
	If ($Test1 -eq $false){
		$richTextBox1.Appendtext("CSV File doesn't exist."+[char]13+[char]10)
	}
	Else{
		$richTextBox1.Appendtext($csv_textBox.Text+" exists."+[char]13+[char]10)
		#Import the csv
		$list = Import-Csv ($csv_textBox.Text) 
		$entries = $list | measure-object | select-object -property count
		$richTextBox1.Appendtext("Importing CSV File..."+[char]13+[char]10)
		$richTextBox1.Appendtext("Number of remote servers in "+$csv_textBox.Text+" : "+$entries.count+[char]13+[char]10)
		$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
		Try{
			$Credential = Get-Credential -Credential "localhost\administrator"
		}
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
		}	
		Finally{	
			#Write error to console
			$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
			$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		}
		$richTextBox1.Appendtext("LocalHost\Administrator credentials stored ok."+[char]13+[char]10)
		#Loop through entries in the csv file and enable the user on each host
		Foreach ($entry in $list){ 
			$server = $entry.RemoteHost
			$richTextBox1.Appendtext("Connecting to "+$server+[char]13+[char]10)
			Try{
				$richTextBox1.Appendtext("Trying to delete user: "+$user_to_manage_textBox.text+" on "+$server+"..."+[char]13+[char]10)
				$session = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
				net user /DELETE $($args)}-ArgumentList $user_to_manage_textBox.text -ErrorAction Stop
			}
			Catch{
				$ErrorMessage = $_.Exception.Message
				$FailedItem = $_.Exception.ItemName
			}
			Finally{
				#Write error to console
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
				If ($ErrorMessage -match "1326"){
					$richTextBox1.Appendtext("unknown user name or bad password."+[char]13+[char]10)
				}
			}
			If ($session -ccontains "The command completed successfully."){
				$richTextBox1.Appendtext("User "+$user_to_manage_textBox.text+" was deleted on $server."+[char]13+[char]10)
			}
		}#ForEach
	}#Else
}#If csv
If ((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text)){ #ipaddress populated and csv empty = single host.
	#Check there is a user in the box
	$richTextBox1.Appendtext("Operation selected: Delete user account."+[char]13+[char]10)
	$richTextBox1.Appendtext("User has specified a single host operation, using: "+$ipaddress_textBox3.text+" as server to connect to."+[char]13+[char]10)
	#Get credentials
	$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
	Try{
		$Credential = Get-Credential -Credential "localhost\administrator"
	}
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
		Return
		}	
	Finally{	
		#Write error to console
		$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
		$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
	}
	$richTextBox1.Appendtext("Remote server's local Administrator credentials stored ok."+[char]13+[char]10)
	$richTextBox1.Appendtext("Connecting to "+$ipaddress_textBox3.text+[char]13+[char]10)
	Try{
		$session = Invoke-Command -ComputerName $ipaddress_textBox3.text -Credential $Credential -ScriptBlock {
		net user /DELETE $($args)}-ArgumentList $user_to_manage_textBox.text -ErrorAction Stop
	}
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
	}
	Finally{
		#Write error to console
		$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
		$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		If ($ErrorMessage -match "1326"){
			$richTextBox1.Appendtext("unknown user name or bad password."+[char]13+[char]10)
		}
	}
	If ($session -ccontains "The command completed successfully."){
	$richTextBox1.Appendtext("User "+$user_to_manage_textBox.text+" was deleted on "+$ipaddress_textBox3.text+[char]13+[char]10)
	}
}
#Finished operation. Notify console.
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}#CLOSE FUNCTION
#------------------------------------------------------------------------------------------------------------
# - Done. 10/08/2016
Function create_user{ 
#User cock-ups		
If ((!$csv_textBox.Text) -AND (!$ipaddress_textBox3.text))#both empty
	{
	$richTextBox1.Appendtext("No IP Address, Hostname or path to csv file. Cannot continue."+[char]13+[char]10)
	Return
	}
If (($csv_textBox.Text) -AND ($ipaddress_textBox3.text))#both populated
	{
	$richTextBox1.Appendtext("Both the IP Address or Hostname field, and the path to csv file field have data. Please clear one of them. Cannot continue."+[char]13+[char]10)
	Return
	}
If (!$user_to_manage_textBox.text){
	$richTextBox1.Appendtext("No user entered. Please enter a user name. Cannot continue."+[char]13+[char]10)
	Return
}
If (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#CSV populated and no IPAddress = use a CSV
	$richTextBox1.Appendtext("Operation selected: Create user account "+$user_to_manage_textBox.text+[char]13+[char]10)
	$richTextBox1.Appendtext("User has specified a multiple server operation, using a csv file."+[char]13+[char]10)
	#Check for CSV file
	$richTextBox1.Appendtext("Checking for "+$csv_textBox.Text+"..."+[char]13+[char]10)
	$test1 = Test-Path $csv_textBox.Text
	If ($Test1 -eq $false){
		$richTextBox1.Appendtext("CSV File doesn't exist."+[char]13+[char]10)
	}
	Else{
		$richTextBox1.Appendtext($csv_textBox.Text+" exists."+[char]13+[char]10)
		#Import the csv
		$list = Import-Csv ($csv_textBox.Text) 
		$entries = $list | measure-object | select-object -property count
		$richTextBox1.Appendtext("Importing CSV File..."+[char]13+[char]10)
		$richTextBox1.Appendtext("Number of remote servers in "+$csv_textBox.Text+" : "+$entries.count+[char]13+[char]10)
		$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
		Try{
			$Credential = Get-Credential -Credential "localhost\administrator"
		}
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
		}	
		Finally{	
			#Write error to console
			$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
			$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		}
		$richTextBox1.Appendtext("LocalHost\Administrator credentials stored ok."+[char]13+[char]10)
		#Loop through entries in the csv file and enable the user on each host
		Foreach ($entry in $list){ 
			$server = $entry.RemoteHost
			$richTextBox1.Appendtext("Connecting to "+$server+[char]13+[char]10)
			Try{
				$richTextBox1.Appendtext("Trying to create user: "+$user_to_manage_textBox.text+" on "+$server+"..."+[char]13+[char]10)
				$session = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
				net user /ADD $($args) /ACTIVE:YES}-ArgumentList $user_to_manage_textBox.text -ErrorAction Stop
			}
			Catch{
				$ErrorMessage = $_.Exception.Message
				$FailedItem = $_.Exception.ItemName
			}
			Finally{
				#Write error to console
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
			}
			If ($session -ccontains "The command completed successfully."){
				$richTextBox1.Appendtext("User "+$user_to_manage_textBox.text+" was created on "+$server.+[char]13+[char]10)
			}
		}#ForEach
	}#Else
}#If csv
If ((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text)){ #ipaddress populated and csv empty = single host.
	#Check there is a user in the box
	$richTextBox1.Appendtext("Operation selected: Create user account."+[char]13+[char]10)
	$richTextBox1.Appendtext("User has specified a single host operation, using: "+$ipaddress_textBox3.text+" as server to connect to."+[char]13+[char]10)
	#Get credentials
	$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
	Try{
		$Credential = Get-Credential -Credential "localhost\administrator"
	}
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
		Return
		}	
	Finally{	
		#Write error to console
		$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
		$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
	}
	$richTextBox1.Appendtext("Remote server's local Administrator credentials stored ok."+[char]13+[char]10)
	$richTextBox1.Appendtext("Connecting to "+$ipaddress_textBox3.text+[char]13+[char]10)
	Try{
		$session = Invoke-Command -ComputerName $ipaddress_textBox3.text -Credential $Credential -ScriptBlock {
		net user /ADD $($args) /ACTIVE:YES}-ArgumentList $user_to_manage_textBox.text -ErrorAction Stop
	}
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
	}
	Finally{
		#Write error to console
		$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
		$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		If ($ErrorMessage -match "1326"){
			$richTextBox1.Appendtext("unknown user name or bad password."+[char]13+[char]10)
		}
	If ($session -ccontains "The command completed successfully."){
	$richTextBox1.Appendtext("User "+$user_to_manage_textBox.text+" was created on "+$ipaddress_textBox3.text+[char]13+[char]10)
	}
}
}
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)	
}#CLOSE FUNCTION
#------------------------------------------------------------------------------------------------------------
# Done - 10/08/2016
Function check_group_membership{
#User cock-ups		
If ((!$csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#both empty
	$richTextBox1.Appendtext("No IP Address, Hostname or path to csv file. Cannot continue."+[char]13+[char]10)
	Return
	}
If (($csv_textBox.Text) -AND ($ipaddress_textBox3.text)){#both populated
	$richTextBox1.Appendtext("Both the IP Address or Hostname field, and the path to csv file field have data. Please clear one of them. Cannot continue."+[char]13+[char]10)
	Return
	}	
If (!$group_textBox.text){#No group entered, so get all groups (and members).
	If (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#CSV populated and no IPAddress = use a CSV
		$richTextBox1.Appendtext("Operation selected: Check the members of all Local Groups."+[char]13+[char]10)
		$richTextBox1.Appendtext("User has specified a multiple server operation, using a csv file."+[char]13+[char]10)
		#Check for CSV file
		$richTextBox1.Appendtext("Checking for "+$csv_textBox.Text+"..."+[char]13+[char]10)
		$test1 = Test-Path $csv_textBox.Text
		If ($Test1 -eq $false){
			$richTextBox1.Appendtext("CSV File doesn't exist."+[char]13+[char]10)
		}
		Else{
			$richTextBox1.Appendtext($csv_textBox.Text+" exists."+[char]13+[char]10)
			#Import the csv
			$list = Import-Csv ($csv_textBox.Text) 
			$entries = $list | measure-object | select-object -property count
			$richTextBox1.Appendtext("Importing CSV File..."+[char]13+[char]10)
			$richTextBox1.Appendtext("Number of remote servers in "+$csv_textBox.Text+" : "+$entries.count+[char]13+[char]10)
			$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
			Try{
				$Credential = Get-Credential -Credential "localhost\administrator"
			}
			Catch{
				$ErrorMessage = $_.Exception.Message
				$FailedItem = $_.Exception.ItemName
				Return
			}	
			Finally{	
				#Write error to console
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
			}
			$richTextBox1.Appendtext("LocalHost\Administrator credentials stored ok."+[char]13+[char]10)
			#Loop through entries in the csv file and enable the user on each host
			Foreach ($entry in $list){ 
				$server = $entry.RemoteHost
				$richTextBox1.Appendtext("Connecting to "+$server+[char]13+[char]10)
				Try{
					$session = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {Get-WMIObject win32_group -filter "LocalAccount='True'" -computername $($args[0]) |
					Select Name,PSComputername,Status,SID,@{Name="Members";Expression={
					$_.GetRelated("win32_useraccount").Name -join ";"  }}}-ArgumentList $server -ErrorAction Stop
				}
				Catch{
					$ErrorMessage = $_.Exception.Message
					$FailedItem = $_.Exception.ItemName
					Return
				}
				Finally{	
				#Write error to console
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
				}
				$richTextBox1.Appendtext("List of local groups, and their members on "+$server+[char]13+[char]10)
				ForEach ($Entry in $session) {
					$richTextBox1.Appendtext("Group Name: "+$entry.Name+[char]13+[char]10)
					$richTextBox1.Appendtext("Members: "+$entry.Members+[char]13+[char]10)
					$richTextBox1.Appendtext("Status: "+$entry.Status+[char]13+[char]10)
					$richTextBox1.Appendtext(""+[char]13+[char]10)
					}
			}#ForEach
		}#Else
	}#If
	If ((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text)){ #ipaddress populated and csv empty = single host.
		#Check there is a user in the box
		$richTextBox1.Appendtext("Operation selected: Check the members of all local groups."+[char]13+[char]10)
		$richTextBox1.Appendtext("User has specified a single host operation, using: "+$ipaddress_textBox3.text+" as server to connect to."+[char]13+[char]10)
		#Get credentials
		$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
		Try{
			$Credential = Get-Credential -Credential "localhost\administrator"
		}
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
			}	
		Finally{	
			#Write error to console
			$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
			$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		}
		$richTextBox1.Appendtext("Remote server's local Administrator credentials stored ok."+[char]13+[char]10)
		$server = $ipaddress_textBox3.text
		Try{
			$session = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
			Get-WMIObject win32_group -filter "LocalAccount='True'" -computername $($args[0]) |
			Select Name,PSComputername,Status,SID,@{Name="Members";Expression={$_.GetRelated("win32_useraccount").Name -join ";"  }}}-ArgumentList $server -ErrorAction Stop
		}
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
		}
		Finally{	
		#Write error to console
		$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
		$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		}
		$richTextBox1.Appendtext("List of local groups, and their members on "+$server+[char]13+[char]10)
		ForEach ($Entry in $session) {
			$richTextBox1.Appendtext("Group Name: "+$entry.Name+[char]13+[char]10)
			$richTextBox1.Appendtext("Members: "+$entry.Members+[char]13+[char]10)
			$richTextBox1.Appendtext("Status: "+$entry.Status+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}#ForEach
		}#((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text))
	}#(!$group_textBox.text)
##########
If ($group_textBox.text){#Get members of a SINGLE group
	If (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#CSV populated and no IPAddress = use a CSV
			$richTextBox1.Appendtext("Operation selected: Check the members of a Group "+$group_textBox_textBox.text+[char]13+[char]10)
			$richTextBox1.Appendtext("User has specified a multiple server operation, using a csv file."+[char]13+[char]10)
			#Check for CSV file
			$richTextBox1.Appendtext("Checking for "+$csv_textBox.Text+"..."+[char]13+[char]10)
			$test1 = Test-Path $csv_textBox.Text
			If ($Test1 -eq $false){
				$richTextBox1.Appendtext("CSV File doesn't exist."+[char]13+[char]10)
			}
			Else{
				$richTextBox1.Appendtext($csv_textBox.Text+" exists."+[char]13+[char]10)
				#Import the csv
				$list = Import-Csv ($csv_textBox.Text) 
				$entries = $list | measure-object | select-object -property count
				$richTextBox1.Appendtext("Importing CSV File..."+[char]13+[char]10)
				$richTextBox1.Appendtext("Number of remote servers in "+$csv_textBox.Text+" : "+$entries.count+[char]13+[char]10)
				$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
				Try{
					$Credential = Get-Credential -Credential "localhost\administrator"
				}
				Catch{
					$ErrorMessage = $_.Exception.Message
					$FailedItem = $_.Exception.ItemName
					Return
				}	
				Finally{	
					#Write error to console
					$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
					$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
				}
				$richTextBox1.Appendtext("LocalHost\Administrator credentials stored ok."+[char]13+[char]10)
				#Loop through entries in the csv file and enable the user on each host
				Foreach ($entry in $list){ 
					$server = $entry.RemoteHost
					$richTextBox1.Appendtext("Connecting to "+$server+[char]13+[char]10)
					Try{
					$session = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
					net localgroup $($args[0])}-ArgumentList $group_textBox.text -ErrorAction Stop
					}
					Catch{
					$ErrorMessage = $_.Exception.Message
					$FailedItem = $_.Exception.ItemName
					Return
					}	
					Finally{	
						#Write error to console
						$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
						$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
					}
					$richTextBox1.Appendtext("Members of "+$group_textBox.text+" on "+$server+" are "+[char]13+[char]10)
					If ($Session){
						$x=6
						while ($x -lt $session.count){
						$richTextBox1.Appendtext($session[$x]+[char]13+[char]10)
						$x++
						}
					}
				}#ForEach
			}#Else
		}#IF (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text))
		
		
		If ((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text)){ #ipaddress populated and csv empty = single host.
		#Add single quotes to the name of the group we want to get details of.
		$group="'$group_textBox.text'"
		#Check there is a user in the box
		$richTextBox1.Appendtext("Operation selected: Check the members of group "+$group_textBox.text+[char]13+[char]10)
		$richTextBox1.Appendtext("User has specified a single host operation, using: "+$ipaddress_textBox3.text+" as server to connect to."+[char]13+[char]10)
		#Get credentials
		$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
		Try{
			$Credential = Get-Credential -Credential "localhost\administrator"
		}
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
			}	
		Finally{	
			#Write error to console
			$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
			$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		}
		$richTextBox1.Appendtext("Remote server's local Administrator credentials stored ok."+[char]13+[char]10)
		$server = $ipaddress_textBox3.text
		$richTextBox1.Appendtext("Connecting to "+$server+[char]13+[char]10)
		Try{
		$session = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
		net localgroup $($args[0])}-ArgumentList $group_textBox.text -ErrorAction Stop
		}
		Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
		Return
		}	
		Finally{	
			#Write error to console
			$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
			$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		}
		$richTextBox1.Appendtext("Members of "+$group_textBox.text+" on "+$server+" are "+[char]13+[char]10)
		If ($Session){
			$x=6
			while ($x -lt $session.count){
			$richTextBox1.Appendtext($session[$x]+[char]13+[char]10)
			$x++
			}
		}
	}#If ((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text))
}#If ($group_textBox.text)
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}#CLOSE FUNCTION
#------------------------------------------------------------------------------------------------------------
# - Done 12/08/2016
Function delete_group{
#User cock-ups		
If ((!$csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#both empty
	$richTextBox1.Appendtext("No IP Address, Hostname or path to csv file. Cannot continue."+[char]13+[char]10)
	Return
	}
If (($csv_textBox.Text) -AND ($ipaddress_textBox3.text)){#both populated
	$richTextBox1.Appendtext("Both the IP Address or Hostname field, and the path to csv file field have data. Please clear one of them. Cannot continue."+[char]13+[char]10)
	Return
	}
If (!$group_textBox.text){
	$richTextBox1.Appendtext("No group entered. Please enter a group name. Cannot continue."+[char]13+[char]10)
	Return
}
If (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#CSV populated and no IPAddress = use a CSV
	$richTextBox1.Appendtext("Operation selected: Delete group "+$group_textBox.text+[char]13+[char]10)
	$richTextBox1.Appendtext("User has specified a multiple server operation, using a csv file."+[char]13+[char]10)
	#Check for CSV file
	$richTextBox1.Appendtext("Checking for "+$csv_textBox.Text+"..."+[char]13+[char]10)
	$test1 = Test-Path $csv_textBox.Text
	If ($Test1 -eq $false){
		$richTextBox1.Appendtext("CSV File doesn't exist."+[char]13+[char]10)
	}
	Else{
		$richTextBox1.Appendtext($csv_textBox.Text+" exists."+[char]13+[char]10)
		#Import the csv
		$list = Import-Csv ($csv_textBox.Text) 
		$entries = $list | measure-object | select-object -property count
		$richTextBox1.Appendtext("Importing CSV File..."+[char]13+[char]10)
		$richTextBox1.Appendtext("Number of remote servers in "+$csv_textBox.Text+" : "+$entries.count+[char]13+[char]10)
		$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
		Try{
			$Credential = Get-Credential -Credential "localhost\administrator"
		}
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
		}	
		Finally{	
			#Write error to console
			$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
			$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		}
		$richTextBox1.Appendtext("LocalHost\Administrator credentials stored ok."+[char]13+[char]10)
		#Loop through entries in the csv file and enable the user on each host
		Foreach ($entry in $list){ 
			$server = $entry.RemoteHost
			$richTextBox1.Appendtext("Connecting to "+$server+[char]13+[char]10)
			Try
				{
					$Session1 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
					net localgroup $($args[0]) /DELETE}-ArgumentList $group_textBox.text -ErrorAction Stop
				}
			Catch
				{
					$ErrorMessage = $_.Exception.Message
					$FailedItem = $_.Exception.ItemName
					Return
				}
			Finally
				{
				#Additional error message explanation
				If (($ErrorMessage -match "error 1376") -or ($FailedItem -match "error 1379"))
					{
					$richTextBox1.Appendtext("Can't delete "+$group_textBox.text+" on "+$server+[char]13+[char]10)
					$richTextBox1.Appendtext("Because it doesn't exist on "+$server+[char]13+[char]10)
					}
				}
			If ($Session1 -match "success")
				{
				$richTextBox1.Appendtext($group_textBox.text+"  successfully deleted on "+$server+[char]13+[char]10) 
				}
		}#ForEach
	}#Else
}#If

If ((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text)){ #ipaddress populated and csv empty = single host.
	#Check there is a user in the box
	$richTextBox1.Appendtext("Operation selected: Delete group "+$group_textBox.text+[char]13+[char]10)
	$richTextBox1.Appendtext("User has specified a single host operation, using: "+$ipaddress_textBox3.text+" as server to connect to."+[char]13+[char]10)
	#Get credentials
	$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
	Try{
		$Credential = Get-Credential -Credential "localhost\administrator"
	}
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
		Return
		}	
	Finally{	
		#Write error to console
		$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
		$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
	}
	$richTextBox1.Appendtext("Remote server's local Administrator credentials stored ok."+[char]13+[char]10)
	$server = $ipaddress_textBox3.text
	Try
		{
			$Session1 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
			net localgroup $($args[0]) /DELETE}-ArgumentList $group_textBox.text -ErrorAction Stop
		}

	Catch
		{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
		}

	Finally
		{
		#Additional error message explanation
		If (($ErrorMessage -match "error 1376") -or ($FailedItem -match "error 1379"))
			{
			$richTextBox1.Appendtext("Can't delete "+$group_textBox.text+" on "+$server+[char]13+[char]10)
			$richTextBox1.Appendtext("Because it doesn't exist on "+$server+[char]13+[char]10)
			}
		}
	If ($Session1 -match "success")
			{
			$richTextBox1.Appendtext($group_textBox.text+"  successfully deleted on "+$server+[char]13+[char]10) 
			}
	}#((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text))
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}#CLOSE FUNCTION
#--------------------------------------------------------------------------------------------------------------------------------
# Done - 12/08/2016
Function create_group {
#User cock-ups		
If ((!$csv_textBox.Text) -AND (!$ipaddress_textBox3.text))#both empty
	{
	$richTextBox1.Appendtext("No IP Address, Hostname or path to csv file. Cannot continue."+[char]13+[char]10)
	Return
	}
If (($csv_textBox.Text) -AND ($ipaddress_textBox3.text))#both populated
	{
	$richTextBox1.Appendtext("Both the IP Address or Hostname field, and the path to csv file field have data. Please clear one of them. Cannot continue."+[char]13+[char]10)
	Return
	}
If	(!$group_textBox.text){
	$richTextBox1.Appendtext("No group entered. Please enter a group name. Cannot continue."+[char]13+[char]10)
	Return
}
If (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#CSV populated and no IPAddress = use a CSV
	$richTextBox1.Appendtext("Operation selected: Create group "+$group_textBox.text+[char]13+[char]10)
	$richTextBox1.Appendtext("User has specified a multiple server operation, using a csv file."+[char]13+[char]10)
	#Check for CSV file
	$richTextBox1.Appendtext("Checking for "+$csv_textBox.Text+"..."+[char]13+[char]10)
	$test1 = Test-Path $csv_textBox.Text
	If ($Test1 -eq $false){
		$richTextBox1.Appendtext("CSV File doesn't exist."+[char]13+[char]10)
	}
	Else{
		$richTextBox1.Appendtext($csv_textBox.Text+" exists."+[char]13+[char]10)
		#Import the csv
		$list = Import-Csv ($csv_textBox.Text) 
		$entries = $list | measure-object | select-object -property count
		$richTextBox1.Appendtext("Importing CSV File..."+[char]13+[char]10)
		$richTextBox1.Appendtext("Number of remote servers in "+$csv_textBox.Text+" : "+$entries.count+[char]13+[char]10)
		$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
		Try{
			$Credential = Get-Credential -Credential "localhost\administrator"
		}
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
		}	
		Finally{	
			#Write error to console
			$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
			$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		}
		$richTextBox1.Appendtext("LocalHost\Administrator credentials stored ok."+[char]13+[char]10)
		#Loop through entries in the csv file and enable the user on each host
		Foreach ($entry in $list){ 
			$server = $entry.RemoteHost
			$richTextBox1.Appendtext("Connecting to "+$server+[char]13+[char]10)
			Try
			{
				$Session1 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
				net localgroup $($args[0]) /ADD}-ArgumentList $group_textBox.text -ErrorAction Stop
			}
			Catch
			{
				$ErrorMessage = $_.Exception.Message
				$FailedItem = $_.Exception.ItemName
				Return
			}
			Finally
			{
				#Write error to console
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
				#Additional error message explanation
				If (($ErrorMessage -match "error 1379") -or ($FailedItem -match "error 1379"))
					{
					$richTextBox1.Appendtext($group_textBox.text+"  already exists on "+$server+[char]13+[char]10) 
					}
			}
			#Check to see group exists
			Try
			{
				$Session2 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
				net localgroup $($args[0])}-ArgumentList $group_textBox.text -ErrorAction Stop
			}
			Catch
			{
				$ErrorMessage = $_.Exception.Message
				$FailedItem = $_.Exception.ItemName
				#Write error to console
				Write-Host $ErrorMessage
				Write-Host $FailedItem
			}
			If ($Session2 -match $group_textBox.text)
				{
				$richTextBox1.Appendtext($group_textBox.text+"  successfully created on "+$server+[char]13+[char]10) 
				}
						
			}#ForEach
		}#Else
	}#If

If ((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text)){ #ipaddress populated and csv empty = single host.
	#Check there is a user in the box
	$richTextBox1.Appendtext("Operation selected: Create group "+$group_textBox.text+[char]13+[char]10)
	$richTextBox1.Appendtext("User has specified a single host operation, using: "+$ipaddress_textBox3.text+" as server to connect to."+[char]13+[char]10)
	#Get credentials
	$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
	Try{
		$Credential = Get-Credential -Credential "localhost\administrator"
	}
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
		Return
		}	
	Finally{	
		#Write error to console
		$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
		$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
	}
	$richTextBox1.Appendtext("Remote server's local Administrator credentials stored ok."+[char]13+[char]10)
	$server = $ipaddress_textBox3.text
	Try
		{
			$Session1 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
			net localgroup $($args[0]) /ADD}-ArgumentList $group_textBox.text -ErrorAction Stop
		}
		Catch
		{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
		}
		Finally
		{
			#Write error to console
			$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
			$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
			#Additional error message explanation
			If (($ErrorMessage -match "error 1379") -or ($FailedItem -match "error 1379"))
				{
				$richTextBox1.Appendtext($group_textBox.text+"  already exists on "+$server+[char]13+[char]10) 
				}
		}
		Try
			{
				$Session2 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
				net localgroup $($args[0])}-ArgumentList $group_textBox.text -ErrorAction Stop
			}
		Catch
		{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			#Write error to console
			Write-Host $ErrorMessage
			Write-Host $FailedItem
		}
		If ($Session2 -match $group_textBox.text)
			{
			$richTextBox1.Appendtext($group_textBox.text+"  successfully created on "+$server+[char]13+[char]10) 
			}
	}#((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text))
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}#Close Function
#--------------------------------------------------------------------------------------------------------------------------------
Function list_groups{ ############################
#User cock-ups		
If ((!$csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#both empty
	$richTextBox1.Appendtext("No IP Address, Hostname or path to csv file. Cannot continue."+[char]13+[char]10)
	Return
	}
If (($csv_textBox.Text) -AND ($ipaddress_textBox3.text)){#both populated
	$richTextBox1.Appendtext("Both the IP Address or Hostname field, and the path to csv file field have data. Please clear one of them. Cannot continue."+[char]13+[char]10)
	Return
	}	
If (!$group_textBox.text){#No group entered, so get all groups (and members).
	If (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#CSV populated and no IPAddress = use a CSV
		$richTextBox1.Appendtext("Operation selected: Check the members of all Local Groups."+[char]13+[char]10)
		$richTextBox1.Appendtext("User has specified a multiple server operation, using a csv file."+[char]13+[char]10)
		#Check for CSV file
		$richTextBox1.Appendtext("Checking for "+$csv_textBox.Text+"..."+[char]13+[char]10)
		$test1 = Test-Path $csv_textBox.Text
		If ($Test1 -eq $false){
			$richTextBox1.Appendtext("CSV File doesn't exist."+[char]13+[char]10)
		}
		Else{
			$richTextBox1.Appendtext($csv_textBox.Text+" exists."+[char]13+[char]10)
			#Import the csv
			$list = Import-Csv ($csv_textBox.Text) 
			$entries = $list | measure-object | select-object -property count
			$richTextBox1.Appendtext("Importing CSV File..."+[char]13+[char]10)
			$richTextBox1.Appendtext("Number of remote servers in "+$csv_textBox.Text+" : "+$entries.count+[char]13+[char]10)
			$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
			Try{
				$Credential = Get-Credential -Credential "localhost\administrator"
			}
			Catch{
				$ErrorMessage = $_.Exception.Message
				$FailedItem = $_.Exception.ItemName
				Return
			}	
			Finally{	
				#Write error to console
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
			}
			$richTextBox1.Appendtext("LocalHost\Administrator credentials stored ok."+[char]13+[char]10)
			#Loop through entries in the csv file and enable the user on each host
			Foreach ($entry in $list){ 
				$server = $entry.RemoteHost
				$richTextBox1.Appendtext("Connecting to "+$server+[char]13+[char]10)
				Try{
					$session = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {Get-WMIObject win32_group -filter "LocalAccount='True'" -computername $($args[0]) |
					Select Name,PSComputername,Status,SID,@{Name="Members";Expression={
					$_.GetRelated("win32_useraccount").Name -join ";"  }}}-ArgumentList $server -ErrorAction Stop
				}
				Catch{
					$ErrorMessage = $_.Exception.Message
					$FailedItem = $_.Exception.ItemName
					Return
				}
				Finally{	
				#Write error to console
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
				}
				$richTextBox1.Appendtext("List of local groups, and their members on "+$server+[char]13+[char]10)
				ForEach ($Entry in $session) {
					$richTextBox1.Appendtext("Group Name: "+$entry.Name+[char]13+[char]10)
					$richTextBox1.Appendtext("Members: "+$entry.Members+[char]13+[char]10)
					$richTextBox1.Appendtext("Status: "+$entry.Status+[char]13+[char]10)
					$richTextBox1.Appendtext(""+[char]13+[char]10)
					}
			}#ForEach
		}#Else
	}#If
	If ((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text)){ #ipaddress populated and csv empty = single host.
		#Check there is a user in the box
		$richTextBox1.Appendtext("Operation selected: Check the members of all local groups."+[char]13+[char]10)
		$richTextBox1.Appendtext("User has specified a single host operation, using: "+$ipaddress_textBox3.text+" as server to connect to."+[char]13+[char]10)
		#Get credentials
		$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
		Try{
			$Credential = Get-Credential -Credential "localhost\administrator"
		}
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
			}	
		Finally{	
			#Write error to console
			$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
			$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		}
		$richTextBox1.Appendtext("Remote server's local Administrator credentials stored ok."+[char]13+[char]10)
		$server = $ipaddress_textBox3.text
		Try{
			$session = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
			Get-WMIObject win32_group -filter "LocalAccount='True'" -computername $($args[0]) |
			Select Name,PSComputername,Status,SID,@{Name="Members";Expression={$_.GetRelated("win32_useraccount").Name -join ";"  }}}-ArgumentList $server -ErrorAction Stop
		}
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
		}
		Finally{	
		#Write error to console
		$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
		$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		}
		$richTextBox1.Appendtext("List of local groups, and their members on "+$server+[char]13+[char]10)
		ForEach ($Entry in $session) {
			$richTextBox1.Appendtext("Group Name: "+$entry.Name+[char]13+[char]10)
			$richTextBox1.Appendtext("Members: "+$entry.Members+[char]13+[char]10)
			$richTextBox1.Appendtext("Status: "+$entry.Status+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
			}#ForEach
		}#((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text))
	}#(!$group_textBox.text)
##########
If ($group_textBox.text){#Get members of a SINGLE group
	If (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#CSV populated and no IPAddress = use a CSV
			$richTextBox1.Appendtext("Operation selected: Check the members of a Group "+$group_textBox_textBox.text+[char]13+[char]10)
			$richTextBox1.Appendtext("User has specified a multiple server operation, using a csv file."+[char]13+[char]10)
			#Check for CSV file
			$richTextBox1.Appendtext("Checking for "+$csv_textBox.Text+"..."+[char]13+[char]10)
			$test1 = Test-Path $csv_textBox.Text
			If ($Test1 -eq $false){
				$richTextBox1.Appendtext("CSV File doesn't exist."+[char]13+[char]10)
			}
			Else{
				$richTextBox1.Appendtext($csv_textBox.Text+" exists."+[char]13+[char]10)
				#Import the csv
				$list = Import-Csv ($csv_textBox.Text) 
				$entries = $list | measure-object | select-object -property count
				$richTextBox1.Appendtext("Importing CSV File..."+[char]13+[char]10)
				$richTextBox1.Appendtext("Number of remote servers in "+$csv_textBox.Text+" : "+$entries.count+[char]13+[char]10)
				$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
				Try{
					$Credential = Get-Credential -Credential "localhost\administrator"
				}
				Catch{
					$ErrorMessage = $_.Exception.Message
					$FailedItem = $_.Exception.ItemName
					Return
				}	
				Finally{	
					#Write error to console
					$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
					$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
				}
				$richTextBox1.Appendtext("LocalHost\Administrator credentials stored ok."+[char]13+[char]10)
				#Loop through entries in the csv file and enable the user on each host
				Foreach ($entry in $list){ 
					$server = $entry.RemoteHost
					$richTextBox1.Appendtext("Connecting to "+$server+[char]13+[char]10)
					Try{
					$session = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
					net localgroup $($args[0])}-ArgumentList $group_textBox.text -ErrorAction Stop
					}
					Catch{
					$ErrorMessage = $_.Exception.Message
					$FailedItem = $_.Exception.ItemName
					Return
					}	
					Finally{	
						#Write error to console
						$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
						$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
					}
					$richTextBox1.Appendtext("Members of "+$group_textBox.text+" on "+$server+" are "+[char]13+[char]10)
					If ($Session){
						$x=6
						while ($x -lt $session.count){
						$richTextBox1.Appendtext($session[$x]+[char]13+[char]10)
						$x++
						}
					}
				}#ForEach
			}#Else
		}#IF (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text))
		
		
		If ((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text)){ #ipaddress populated and csv empty = single host.
		#Add single quotes to the name of the group we want to get details of.
		$group="'$group_textBox.text'"
		#Check there is a user in the box
		$richTextBox1.Appendtext("Operation selected: Check the members of group "+$group_textBox.text+[char]13+[char]10)
		$richTextBox1.Appendtext("User has specified a single host operation, using: "+$ipaddress_textBox3.text+" as server to connect to."+[char]13+[char]10)
		#Get credentials
		$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
		Try{
			$Credential = Get-Credential -Credential "localhost\administrator"
		}
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
			}	
		Finally{	
			#Write error to console
			$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
			$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		}
		$richTextBox1.Appendtext("Remote server's local Administrator credentials stored ok."+[char]13+[char]10)
		$server = $ipaddress_textBox3.text
		$richTextBox1.Appendtext("Connecting to "+$server+[char]13+[char]10)
		Try{
		$session = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
		net localgroup $($args[0])}-ArgumentList $group_textBox.text -ErrorAction Stop
		}
		Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
		Return
		}	
		Finally{	
			#Write error to console
			$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
			$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		}
		$richTextBox1.Appendtext("Members of "+$group_textBox.text+" on "+$server+" are "+[char]13+[char]10)
		If ($Session){
			$x=6
			while ($x -lt $session.count){
			$richTextBox1.Appendtext($session[$x]+[char]13+[char]10)
			$x++
			}
		}
	}#If ((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text))
}#If ($group_textBox.text)
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}#CLOSE FUNCTION
#--------------------------------------------------------------------------------------------------------------------------------
#Done - 08/08/2016 
Function add_user_to_group{
#User cock-ups		
If ((!$csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#both empty
	$richTextBox1.Appendtext("No IP Address, Hostname or path to csv file. Cannot continue."+[char]13+[char]10)
	Return
	}
If (($csv_textBox.Text) -AND ($ipaddress_textBox3.text)){#both populated
	$richTextBox1.Appendtext("Both the IP Address or Hostname field, and the path to csv file field have data. Please clear one of them. Cannot continue."+[char]13+[char]10)
	Return
	}
#Check for a username
If (!$user_to_manage_textBox.text){
	$richTextBox1.Appendtext("No user supplied, canceling operation."+[char]13+[char]10)
	return
	}
#Check for a groupname
If (!$group_textBox.text){
	$richTextBox1.Appendtext("No group supplied, canceling operation."+[char]13+[char]10)
	return
	}
#check csv & ip address fields.
If (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#CSV populated and no IPAddress = use a CSV
	$richTextBox1.Appendtext("Operation selected: Add user account "+$user_to_manage_textBox.text+" to "+$group_textBox.text+[char]13+[char]10)
	$richTextBox1.Appendtext("User has specified a multiple server operation, using a csv file."+[char]13+[char]10)
	#Check for CSV file
	$richTextBox1.Appendtext("Checking for "+$csv_textBox.Text+"..."+[char]13+[char]10)
	$test1 = Test-Path $csv_textBox.Text
	If ($Test1 -eq $false){
		$richTextBox1.Appendtext("CSV File doesn't exist."+[char]13+[char]10)
	}
	Else{
		$richTextBox1.Appendtext($csv_textBox.Text+" exists."+[char]13+[char]10)
		#Import the csv
		$list = Import-Csv ($csv_textBox.Text) 
		$entries = $list | measure-object | select-object -property count
		$richTextBox1.Appendtext("Importing CSV File..."+[char]13+[char]10)
		$richTextBox1.Appendtext("Number of remote servers in "+$csv_textBox.Text+" : "+$entries.count+[char]13+[char]10)
		#Check these boxes aren't empty before running command on remote host:
		If (($user_to_manage_textBox.text -ne $null) -OR ($csv_textBox.Text -ne $null)){
			$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
			Try{
				$Credential = Get-Credential -Credential "localhost\administrator"
			}
			Catch{
				$ErrorMessage = $_.Exception.Message
				$FailedItem = $_.Exception.ItemName
				Return
			}	
			Finally{	
				#Write error to console
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
			}
			$richTextBox1.Appendtext("LocalHost\Administrator credentials stored ok."+[char]13+[char]10)
			#Loop through entries in the csv file and add the user to the group on each host
			Foreach ($entry in $list){ 
				$server = $entry.RemoteHost
				$richTextBox1.Appendtext("Checking that the user "+$user_to_manage_textBox.text+" exists on "+$server+[char]13+[char]10)
				#Checking that the user exists on the server:
				Try{
					$session0 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
					net user $($args)}-ArgumentList $user_to_manage_textBox.text -ErrorAction Stop
				}
				Catch{
					$ErrorMessage = $_.Exception.Message
					$FailedItem = $_.Exception.ItemName
					Return
				}
				Finally{
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
				}
				If ($session0 -Match "success"){
				#User exists on server
				$richTextBox1.Appendtext("Confirmed that "+$user_to_manage_textBox.text+" exists on "+$server+[char]13+[char]10)
				}
				$richTextBox1.Appendtext("Checking that the group "+$group_textBox.text+" exists on "+$server+[char]13+[char]10)
				#Checking that the group exists on the server:
				Try{
					$session1 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
					net localgroup $($args)}-ArgumentList $group_textBox.text -ErrorAction Stop
				}
				Catch{
					$ErrorMessage = $_.Exception.Message
					$FailedItem = $_.Exception.ItemName
					Return
					}
				Finally{
						$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
						$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
				}#Close Finally
				If ($session1 -Match "success"){
				#User exists on server
				$richTextBox1.Appendtext("Confirmed that "+$group_textBox.text+" exists on "+$server+[char]13+[char]10)
				}
				$richTextBox1.Appendtext("Attempting to add "+$user_to_manage_textBox.text+" to "+$group_textBox.text+" on "+$server+[char]13+[char]10)
				#Both the user and the group exist
				Try{
					$session2 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
					net localgroup $($args[0]) $($args[1]) /ADD}-ArgumentList $group_textBox.text,$user_to_manage_textBox.text -ErrorAction Stop
				}
				Catch{
					$ErrorMessage = $_.Exception.Message
					$FailedItem = $_.Exception.ItemName
					Return
				}
				Finally{
					$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
					$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
					If (($ErrorMessage -Match "1378") -OR ($FailedItem -Match "1378")){
						$richTextBox1.Appendtext("User "+$user_to_manage_textBox.text+" is already member of "+$group_textBox.text+" on "+$server+[char]13+[char]10)
					}
					If (($ErrorMessage -Match "1376") -OR ($FailedItem -Match "1376")){
						$richTextBox1.Appendtext("Group "+$group_textBox.text+" could not be found on "+$server+[char]13+[char]10)
					}
				}#Close Finally
				If ($session2 -Match "success"){
					$richTextBox1.Appendtext($user_to_manage_textBox.text+" added to "+$group_textBox.text+" on server "+$server+[char]13+[char]10)
				}
			}#Close ForEach
		}#Close If
	}#Close Else
}#Close If (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text))
If ((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text)){ #ipaddress populated and csv empty = single host.
	#Check there is a user in the box
	$richTextBox1.Appendtext("Operation selected: Add user account to group."+[char]13+[char]10)
	$richTextBox1.Appendtext("User has specified a single host operation, using: "+$ipaddress_textBox3.text+" as server to connect to."+[char]13+[char]10)
	#Get credentials
	$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
	Try{
		$Credential = Get-Credential -Credential "localhost\administrator"
	}
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
		Return
	}	
	Finally{	
		#Write error to console
		$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
		$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
	}
	$richTextBox1.Appendtext("Remote server's local Administrator credentials stored ok."+[char]13+[char]10)
	$richTextBox1.Appendtext("Connecting to "+$ipaddress_textBox3.text+[char]13+[char]10)
	$server = $ipaddress_textBox3.text
	$richTextBox1.Appendtext("Checking that the user "+$user_to_manage_textBox.text+" exists on "+$server+[char]13+[char]10)
	#Checking that the user exists on the server:
	Try{
		$session0 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
		net user $($args)}-ArgumentList $user_to_manage_textBox.text -ErrorAction Stop
	}
				
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
		Return
	}
				
	If ($session0 -Match "success"){
		#User exists on server
		$richTextBox1.Appendtext("Confirmed that "+$user_to_manage_textBox.text+" exists on "+$server+[char]13+[char]10)
	}

	$richTextBox1.Appendtext("Checking that the group "+$group_textBox.text+" exists on "+$server+[char]13+[char]10)
	#Checking that the group exists on the server:
	Try{
		$session1 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
		net localgroup $($args)}-ArgumentList $group_textBox.text -ErrorAction Stop
	}
				
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
		Return
	}
				
	If ($session1 -Match "success"){
		#User exists on server
		$richTextBox1.Appendtext("Confirmed that "+$group_textBox.text+" exists on "+$server+[char]13+[char]10)
	}
				
	#Both the user and the group exist
	Try{
		$session2 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
		net localgroup $($args[0]) $($args[1]) /ADD}-ArgumentList $group_textBox.text,$user_to_manage_textBox.text -ErrorAction Stop
	}
				
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
		Return
	}

	Finally{
			If ($ErrorMessage -Match '1378'){
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
				$richTextBox1.Appendtext($user_to_manage_textBox.text+" added to "+$group_textBox.text+"."+[char]13+[char]10)
				#Write-Host $user_to_manage_textBox "added to" $group_textBox
				}
		}#Close Finally
		$richTextBox1.Appendtext($session2+[char]13+[char]10)
	If ($session2 -Match "success"){
		$richTextBox1.Appendtext($user_to_manage_textBox.text+" added to "+$group_textBox.text+" on server "+$server+[char]13+[char]10)
		}
	}#Close If
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}#CLOSE Function
#--------------------------------------------------------------------------------------------------------------------------------
#Finished 08/08/2016
Function Delete_User_From_Group{
#User cock-ups		
If ((!$csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#both empty
	$richTextBox1.Appendtext("No IP Address, Hostname or path to csv file. Cannot continue."+[char]13+[char]10)
	Return
	}
If (($csv_textBox.Text) -AND ($ipaddress_textBox3.text)){#both populated
	$richTextBox1.Appendtext("Both the IP Address or Hostname field, and the path to csv file field have data. Please clear one of them. Cannot continue."+[char]13+[char]10)
	Return
	}
#Check for a username
If (!$user_to_manage_textBox.text){
	$richTextBox1.Appendtext("No user supplied, canceling operation."+[char]13+[char]10)
	return
	}
#Check for a groupname
If (!$group_textBox.text){
	$richTextBox1.Appendtext("No group supplied, canceling operation."+[char]13+[char]10)
	return
	}
#check csv & ip address fields.
If (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#CSV populated and no IPAddress = use a CSV
	$richTextBox1.Appendtext("Operation selected: Delete user "+$user_to_manage_textBox.text+" from group "+$group_textBox.text+[char]13+[char]10)
	$richTextBox1.Appendtext("User has specified a multiple server operation, using a csv file."+[char]13+[char]10)
	#Check for CSV file
	$richTextBox1.Appendtext("Checking for "+$csv_textBox.Text+"..."+[char]13+[char]10)
	$test1 = Test-Path $csv_textBox.Text
	If ($Test1 -eq $false){
		$richTextBox1.Appendtext("CSV File doesn't exist."+[char]13+[char]10)
	}
	Else{
		$richTextBox1.Appendtext($csv_textBox.Text+" exists."+[char]13+[char]10)
		#Import the csv
		$list = Import-Csv ($csv_textBox.Text) 
		$entries = $list | measure-object | select-object -property count
		$richTextBox1.Appendtext("Importing CSV File..."+[char]13+[char]10)
		$richTextBox1.Appendtext("Number of remote servers in "+$csv_textBox.Text+" : "+$entries.count+[char]13+[char]10)
		$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
		Try{
			$Credential = Get-Credential -Credential "localhost\administrator"
		}
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
		}	
		Finally{	
			#Write error to console
			$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
			$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		}
		$richTextBox1.Appendtext("LocalHost\Administrator credentials stored ok."+[char]13+[char]10)
		#Loop through entries in the csv file and add the user to the group on each host
		Foreach ($entry in $list){ 
			$server = $entry.RemoteHost
			$richTextBox1.Appendtext("Checking that the user "+$user_to_manage_textBox.text+" exists on "+$server+[char]13+[char]10)
			#Checking that the user exists on the server:
			Try{
				$session0 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
				net user $($args)}-ArgumentList $user_to_manage_textBox.text -ErrorAction Stop
			}
			Catch{
				$ErrorMessage = $_.Exception.Message
				$FailedItem = $_.Exception.ItemName
				Return
			}
			Finally{
			$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
			$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
			}
			If ($session0 -Match "success"){
			#User exists on server
			$richTextBox1.Appendtext("Confirmed that "+$user_to_manage_textBox.text+" exists on "+$server+[char]13+[char]10)
			}
			$richTextBox1.Appendtext("Checking that the group "+$group_textBox.text+" exists on "+$server+[char]13+[char]10)
			#Checking that the group exists on the server:
			Try{
				$session1 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
				net localgroup $($args)}-ArgumentList $group_textBox.text -ErrorAction Stop
			}
			Catch{
				$ErrorMessage = $_.Exception.Message
				$FailedItem = $_.Exception.ItemName
				Return
				}
			Finally{
					$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
					$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
			}#Close Finally
			If ($session1 -Match "success"){
				#User exists on server
				$richTextBox1.Appendtext("Confirmed that "+$group_textBox.text+" exists on "+$server+[char]13+[char]10)
				}
			$richTextBox1.Appendtext("Attempting to add "+$user_to_manage_textBox.text+" to "+$group_textBox.text+" on "+$server+[char]13+[char]10)
			#Both the user and the group exist
			Try{
				$session2 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
				net localgroup $($args[0]) $($args[1]) /DELETE}-ArgumentList $group_textBox.text,$user_to_manage_textBox.text -ErrorAction Stop
			}
			Catch{
				$ErrorMessage = $_.Exception.Message
				$FailedItem = $_.Exception.ItemName
				Return
			}
			Finally{
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
				If (($ErrorMessage -Match "1377") -OR ($FailedItem -Match "1377")){
					$richTextBox1.Appendtext("User "+$user_to_manage_textBox.text+" is not a member of "+$group_textBox.text+" on "+$server+[char]13+[char]10)
				}
			}#Close Finally
			If ($session2 -Match "success"){
				$richTextBox1.Appendtext($user_to_manage_textBox.text+" deleted from "+$group_textBox.text+" on server "+$server+[char]13+[char]10)
			}
			}#Close ForEach
		}#Close If
	}#Close Else
	If ((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text)){ #ipaddress populated and csv empty = single host.
		#Check there is a user in the box
		$richTextBox1.Appendtext("Operation selected: Delete user "+$user_to_manage_textBox.text+" from group "+$group_textBox.text+[char]13+[char]10)
		$richTextBox1.Appendtext("User has specified a single host operation, using: "+$ipaddress_textBox3.text+" as server to connect to."+[char]13+[char]10)
		#Get credentials
		$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
		Try{
			$Credential = Get-Credential -Credential "localhost\administrator"
		}
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
		}	
		Finally{	
			#Write error to console
			$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
			$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		}
		$richTextBox1.Appendtext("Remote server's local Administrator credentials stored ok."+[char]13+[char]10)
		$richTextBox1.Appendtext("Connecting to "+$ipaddress_textBox3.text+[char]13+[char]10)
		$server = $ipaddress_textBox3.text
		$richTextBox1.Appendtext("Checking that the user "+$user_to_manage_textBox.text+" exists on "+$server+[char]13+[char]10)
		#Checking that the user exists on the server:
		Try{
			$session0 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
			net user $($args)}-ArgumentList $user_to_manage_textBox.text -ErrorAction Stop
		}

		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
		}
				
		If ($session0 -Match "success"){
			#User exists on server
			$richTextBox1.Appendtext("Confirmed that "+$user_to_manage_textBox.text+" exists on "+$server+[char]13+[char]10)
		}

		$richTextBox1.Appendtext("Checking that the group "+$group_textBox.text+" exists on "+$server+[char]13+[char]10)
		#Checking that the group exists on the server:
		Try{
			$session1 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
			net localgroup $($args)}-ArgumentList $group_textBox.text -ErrorAction Stop
		}
				
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
		}
				
		If ($session1 -Match "success"){
			#User exists on server
			$richTextBox1.Appendtext("Confirmed that "+$group_textBox.text+" exists on "+$server+[char]13+[char]10)
		}
				
		#Both the user and the group exist
		Try{
			$session2 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
			net localgroup $($args[0]) $($args[1]) /DELETE}-ArgumentList $group_textBox.text,$user_to_manage_textBox.text -ErrorAction Stop
		}
				
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
		}

		Finally{
			If ($ErrorMessage -Match '1378'){
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
				$richTextBox1.Appendtext($user_to_manage_textBox.text+" added to "+$group_textBox.text+"."+[char]13+[char]10)
				#Write-Host $user_to_manage_textBox "added to" $group_textBox
			}
		}#Close Finally
		$richTextBox1.Appendtext($session2+[char]13+[char]10)
	If ($session2 -Match "success"){
		$richTextBox1.Appendtext($user_to_manage_textBox.text+" deleted from "+$group_textBox.text+" on server "+$server+[char]13+[char]10)
		}
	}#Close If
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}#CLOSE Function
#--------------------------------------------------------------------------------------------------------------------------------
# - DONE. 09/08/2016
Function find_user{ #Lists all users on the remote host (or hosts)
#User cock-ups		
If ((!$csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#both empty
	$richTextBox1.Appendtext("No IP Address, Hostname or path to csv file. Cannot continue."+[char]13+[char]10)
	Return
	}
If (($csv_textBox.Text) -AND ($ipaddress_textBox3.text)){#both populated
	$richTextBox1.Appendtext("Both the IP Address or Hostname field, and the path to csv file field have data. Please clear one of them. Cannot continue."+[char]13+[char]10)
	Return
	}
#User supplied (So just find this one user)
If ($user_to_manage_textBox.text){
	#csv full & ip address empty.
	If (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#CSV populated and no IPAddress = use a CSV
		$richTextBox1.Appendtext("Operation selected: List user "+$user_to_manage_textBox.text+" on remote servers"+[char]13+[char]10)
		$richTextBox1.Appendtext("User has specified a multiple server operation, using a csv file."+[char]13+[char]10)
		#Check for CSV file
		$richTextBox1.Appendtext("Checking for "+$csv_textBox.Text+"..."+[char]13+[char]10)
		$test1 = Test-Path $csv_textBox.Text
		If ($Test1 -eq $false){
			$richTextBox1.Appendtext("CSV File doesn't exist."+[char]13+[char]10)
			}
		Else{
			$richTextBox1.Appendtext($csv_textBox.Text+" exists."+[char]13+[char]10)
			#Import the csv
			$list = Import-Csv ($csv_textBox.Text) 
			$entries = $list | measure-object | select-object -property count
			$richTextBox1.Appendtext("Importing CSV File..."+[char]13+[char]10)
			$richTextBox1.Appendtext("Number of remote servers in "+$csv_textBox.Text+": "+$entries.count+[char]13+[char]10)
			$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
			Try{
				$Credential = Get-Credential -Credential "localhost\administrator"
			}#Try
			Catch{
				$ErrorMessage = $_.Exception.Message
				$FailedItem = $_.Exception.ItemName
				Return
			}#Catch
			Finally{	
				#Write error to console
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
			}#Finally
			$richTextBox1.Appendtext("LocalHost\Administrator credentials stored ok."+[char]13+[char]10)
			#Loop through entries in the csv file and add the user to the group on each host
			Foreach ($entry in $list){ 
				$server = $entry.RemoteHost
				$richTextBox1.Appendtext("Checking user "+$user_to_manage_textBox.text+" on "+$server+[char]13+[char]10)
				Try{
					$session1 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
					Get-WmiObject -Class Win32_UserAccount -Filter  "LocalAccount='True'" | Select PSComputername, Name, Status, Disabled, AccountType, Lockout, PasswordRequired, PasswordChangeable, SID} -ErrorAction Stop
				}#Try
				Catch{
					$ErrorMessage = $_.Exception.Message
					$FailedItem = $_.Exception.ItemName
					Return
				}#Catch
				#Write list of users to console
				Write-host $session1
				#Loop through results stored in $session1
				ForEach ($User in $Session1){
					If($user.Name -eq $user_to_manage_textBox.text){
						$richTextBox1.Appendtext("Server: "+$User.PSComputerName+[char]13+[char]10)
						$richTextBox1.Appendtext("Username: "+$User.Name+[char]13+[char]10)
						$richTextBox1.Appendtext("Status: "+$User.Status+[char]13+[char]10)
						$richTextBox1.Appendtext("Is disabled?: "+$User.Disabled+[char]13+[char]10)
						$richTextBox1.Appendtext("Is locked?: "+$User.Lockout+[char]13+[char]10)
						$richTextBox1.Appendtext("Password required? "+$User.PasswordRequired+[char]13+[char]10)
						$richTextBox1.Appendtext("Is password changeable? "+$User.PasswordChangeable+[char]13+[char]10)
						$richTextBox1.Appendtext("User account SID: "+$User.SID+[char]13+[char]10)
						$richTextBox1.Appendtext(""+[char]13+[char]10)
					}#If
				}#ForEach
			}#ForEach
		}#Else	
	}#IF - DONE.
	If ((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text)){#IPAddress populated, no csv = single host
		$richTextBox1.Appendtext("Operation selected: List user "+$user_to_manage_textBox.text+" on a remote server."+[char]13+[char]10)
		$richTextBox1.Appendtext("User has specified a single server operation."+[char]13+[char]10)
		$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
		Try{
			$Credential = Get-Credential -Credential "localhost\administrator"
		}
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
		}	
		Finally{	
			#Write error to console
			$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
			$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		}
		$richTextBox1.Appendtext("LocalHost\Administrator credentials stored ok."+[char]13+[char]10)
		$server = $ipaddress_textBox3.text
		$richTextBox1.Appendtext("Checking user "+$user_to_manage_textBox.text+" on "+$server+[char]13+[char]10)
		Try{
			$session1 = Invoke-Command -ComputerName $ipaddress_textBox3.text -Credential $Credential -ScriptBlock {
			Get-WmiObject -Class Win32_UserAccount -Filter  "LocalAccount='True'" | Select PSComputername, Name, Status, Disabled, AccountType, Lockout, PasswordRequired, PasswordChangeable, SID} -ErrorAction Stop
		}#Try
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
		}#Catch
		#Loop through results stored in $session1
		ForEach ($User in $Session1){
			If($user.Name -eq $user_to_manage_textBox.text){
				$richTextBox1.Appendtext("Server: "+$User.PSComputerName+[char]13+[char]10)
				$richTextBox1.Appendtext("Username: "+$User.Name+[char]13+[char]10)
				$richTextBox1.Appendtext("Status: "+$User.Status+[char]13+[char]10)
				$richTextBox1.Appendtext("Is disabled?: "+$User.Disabled+[char]13+[char]10)
				$richTextBox1.Appendtext("Is locked?: "+$User.Lockout+[char]13+[char]10)
				$richTextBox1.Appendtext("Password required? "+$User.PasswordRequired+[char]13+[char]10)
				$richTextBox1.Appendtext("Is password changeable? "+$User.PasswordChangeable+[char]13+[char]10)
				$richTextBox1.Appendtext("User account SID: "+$User.SID+[char]13+[char]10)
				$richTextBox1.Appendtext(""+[char]13+[char]10)
				}#If
			}#ForEach
		}#(!$csv_textBox.Text) -AND ($ipaddress_textBox3.text)
	}#IF ($user_to_manage_textBox.text)
If (!$user_to_manage_textBox.text){#List ALL users
	#csv full & ip address empty.
	If (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#CSV populated and no IPAddress = use a CSV
		$richTextBox1.Appendtext("Operation selected: List all users on remote servers."+[char]13+[char]10)
		$richTextBox1.Appendtext("User has specified a multiple server operation, using a csv file."+[char]13+[char]10)
		#Check for CSV file
		$richTextBox1.Appendtext("Checking for "+$csv_textBox.Text+"..."+[char]13+[char]10)
		$test1 = Test-Path $csv_textBox.Text
		If ($Test1 -eq $false){
			$richTextBox1.Appendtext("CSV File doesn't exist."+[char]13+[char]10)
			}
		Else{
			$richTextBox1.Appendtext($csv_textBox.Text+" exists."+[char]13+[char]10)
			#Import the csv
			$list = Import-Csv ($csv_textBox.Text) 
			$entries = $list | measure-object | select-object -property count
			$richTextBox1.Appendtext("Importing CSV File..."+[char]13+[char]10)
			$richTextBox1.Appendtext("Number of remote servers in "+$csv_textBox.Text+": "+$entries.count+[char]13+[char]10)
			$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
			Try{
				$Credential = Get-Credential -Credential "localhost\administrator"
				}
			Catch{
				$ErrorMessage = $_.Exception.Message
				$FailedItem = $_.Exception.ItemName
				Return
				}	
			Finally{	
				#Write error to console
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
				}
			$richTextBox1.Appendtext("LocalHost\Administrator credentials stored ok."+[char]13+[char]10)
			#Loop through entries in the csv file and add the user to the group on each host
			Foreach ($entry in $list){ 
				$server = $entry.RemoteHost
				$richTextBox1.Appendtext("Checking for users on "+$server+[char]13+[char]10)
				$richTextBox1.Appendtext(""+$server+[char]13+[char]10)
				Try{
					$session1 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
					Get-WmiObject -Class Win32_UserAccount -Filter  "LocalAccount='True'" | Select PSComputername, Name, Status, Disabled, AccountType, Lockout, PasswordRequired, PasswordChangeable, SID} -ErrorAction Stop
				}#Try
				Catch{
					$ErrorMessage = $_.Exception.Message
					$FailedItem = $_.Exception.ItemName
					Return
				}#Catch
				#Loop through results stored in $session1
				ForEach ($User in $Session1){
					$richTextBox1.Appendtext("Name: "+$User.Name+[char]13+[char]10)
					$richTextBox1.Appendtext("Status: "+$User.Status+[char]13+[char]10)
					$richTextBox1.Appendtext("Is disabled?: "+$User.Disabled+[char]13+[char]10)
					$richTextBox1.Appendtext("Is locked?: "+$User.Lockout+[char]13+[char]10)
					$richTextBox1.Appendtext("Password required? "+$User.PasswordRequired+[char]13+[char]10)
					$richTextBox1.Appendtext("Is password changeable? "+$User.PasswordChangeable+[char]13+[char]10)
					$richTextBox1.Appendtext("User account SID: "+$User.SID+[char]13+[char]10)
					$richTextBox1.Appendtext(""+[char]13+[char]10)
				}#ForEach($User in $Session1)
			}#Foreach ($entry in $list)
		}#Else	
	}#IF ($csv_textBox.Text) -AND (!$ipaddress_textBox3.text)
	If ((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text)){#CSV empty and IPAddress populated = use a single host ########################
		$richTextBox1.Appendtext("Operation selected: List all users on remote server: "+$ipaddress_textBox3.text+[char]13+[char]10)
		$richTextBox1.Appendtext("User has specified a single server operation."+[char]13+[char]10)
		$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
		Try{
			$Credential = Get-Credential -Credential "localhost\administrator"
			}
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
			}	
		Finally{	
			#Write error to console
			$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
			$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
			}
		$richTextBox1.Appendtext("LocalHost\Administrator credentials stored ok."+[char]13+[char]10)
		$server = $ipaddress_textBox3.text
		$richTextBox1.Appendtext("Checking for users on "+$server+[char]13+[char]10)
		$richTextBox1.Appendtext(""+$server+[char]13+[char]10)
		Try{
			$session1 = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
			Get-WmiObject -Class Win32_UserAccount -Filter  "LocalAccount='True'" | Select PSComputername, Name, Status, Disabled, AccountType, Lockout, PasswordRequired, PasswordChangeable, SID} -ErrorAction Stop
		}#Try
		Catch{
			$ErrorMessage = $_.Exception.Message
			$FailedItem = $_.Exception.ItemName
			Return
		}#Catch
		#Loop through results stored in $session1
		ForEach ($User in $Session1){
			$richTextBox1.Appendtext("Name: "+$User.Name+[char]13+[char]10)
			$richTextBox1.Appendtext("Status: "+$User.Status+[char]13+[char]10)
			$richTextBox1.Appendtext("Is disabled?: "+$User.Disabled+[char]13+[char]10)
			$richTextBox1.Appendtext("Is locked?: "+$User.Lockout+[char]13+[char]10)
			$richTextBox1.Appendtext("Password required? "+$User.PasswordRequired+[char]13+[char]10)
			$richTextBox1.Appendtext("Is password changeable? "+$User.PasswordChangeable+[char]13+[char]10)
			$richTextBox1.Appendtext("User account SID: "+$User.SID+[char]13+[char]10)
			$richTextBox1.Appendtext(""+[char]13+[char]10)
		}#ForEach
	}#(!$csv_textBox.Text) -AND ($ipaddress_textBox3.text))
}#IF (!$user_to_manage_textBox.text)
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}#Close Function
#------------------------------------------------------------------------------------------------------------
# - Done. 09/08/2016
Function reset_password 
{
#User cock-ups	
If (!$user_to_manage_textBox.text){#no user
	$richTextBox1.Appendtext("No User entered. Cannot continue."+[char]13+[char]10)
	Return
	}	
If (!$password_reset_textBox.text){#no password
	$richTextBox1.Appendtext("No password entered. Cannot continue."+[char]13+[char]10)
	Return
	}	
If ((!$csv_textBox.Text) -AND (!$ipaddress_textBox3.text)){#both empty
	$richTextBox1.Appendtext("No IP Address or Hostname, or path to csv file. Cannot continue."+[char]13+[char]10)
	Return
	}
If (($csv_textBox.Text) -AND ($ipaddress_textBox3.text)){#both populated
	$richTextBox1.Appendtext("Both the IP Address or Hostname field, and the path to csv file field have data. Please clear one of them. Cannot continue."+[char]13+[char]10)
	Return
	}
If (($csv_textBox.Text) -AND (!$ipaddress_textBox3.text))#If CSV is populated and IP is empty - use a CSV
	{
	$richTextBox1.Appendtext("User has specified a multiple server operation, using a csv file."+[char]13+[char]10)
	#Check for CSV file
	$richTextBox1.Appendtext("Checking for "+$csv_textBox.Text+"..."+[char]13+[char]10)
	$test1 = Test-Path $csv_textBox.Text
	If ($Test1 -eq $false){
		$richTextBox1.Appendtext("CSV File doesn't exist."+[char]13+[char]10)
		}
	Else{
		$richTextBox1.Appendtext($csv_textBox.Text+" exists."+[char]13+[char]10)
		#Import the csv
		$list = Import-Csv ($csv_textBox.Text) 
		$entries = $list | measure-object | select-object -property count
		$richTextBox1.Appendtext("Importing CSV File..."+[char]13+[char]10)
		$richTextBox1.Appendtext("Number of remote servers in "+$csv_textBox.Text+" : "+$entries.count+[char]13+[char]10)
		#Check these boxes aren't empty before running command on remote host:
		If (($user_to_manage_textBox.text -ne $null) -OR ($csv_textBox.Text -ne $null)){
			$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
			Try{
				$Credential = Get-Credential -Credential "localhost\administrator"
				}
			Catch{
				$ErrorMessage = $_.Exception.Message
				$FailedItem = $_.Exception.ItemName
				Break
				}	
			Finally{	
				#Write error to console
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
				}
			$richTextBox1.Appendtext("LocalHost\Administrator credentials stored ok."+[char]13+[char]10)
			#Loop through entries in the csv file and enable the user on each host
			Foreach ($entry in $list){ 
				$server = $entry.RemoteHost
				$richTextBox1.Appendtext("Connecting to "+$server+[char]13+[char]10)
				Try{
					$session = Invoke-Command -ComputerName $server -Credential $Credential -ScriptBlock {
					net user $($args[0]) $($args[1])/ACTIVE:YES }-ArgumentList $user_to_manage_textBox.text,$password_reset_textBox.text -ErrorAction Stop
				}
				Catch{
					$ErrorMessage = $_.Exception.Message
					$FailedItem = $_.Exception.ItemName
					Break
				}
				Finally{
					#Write error to console
					$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
					$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
					}#Finally
				}#ForEach
			}#If
		If ($session -ccontains "The command completed successfully."){
			$richTextBox1.Appendtext("Password for user "+$user_to_manage_textBox.text+" was reset on "+$server+[char]13+[char]10)
			}
		}#Else
	}#Close CSV is populated and IP is empty
IF ((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text)){#If CSV is empy and IPaddress is populated - use a single host. 
	$richTextBox1.Appendtext("User has specified a single host operation, using: "+$ipaddress_textBox3.text+" as server to connect to."+[char]13+[char]10)
	#Get credentials
	$richTextBox1.Appendtext("Prompting user for the remote server's local Administrator credentials..."+[char]13+[char]10)
	Try{
		$Credential = Get-Credential -Credential "localhost\administrator"
	}
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
		Break
	}	
	Finally{	
		#Write error to console
		$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
		$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
	}
	$richTextBox1.Appendtext("Remote server's local Administrator credentials stored ok."+[char]13+[char]10)
	$richTextBox1.Appendtext("Connecting to "+$ipaddress_textBox3.text+[char]13+[char]10)
	Try{
		$session = Invoke-Command -ComputerName $ipaddress_textBox3 -Credential $Credential -ScriptBlock {
		net user $($args[0]) $($args[1])/ACTIVE:YES }-ArgumentList $user_to_manage_textBox.text,$password_reset_textBox.text -ErrorAction Stop
	}
	Catch{
		$ErrorMessage = $_.Exception.Message
		$FailedItem = $_.Exception.ItemName
	}
	Finally{
		#Write error to console
		$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
		$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
		If ($ErrorMessage -match "1326"){
			$richTextBox1.Appendtext("unknown user name or bad password."+[char]13+[char]10)
		}
		If ($ErrorMessage -eq "5"){
			$richTextBox1.Appendtext("Access denied."+[char]13+[char]10)
		}
	}
	If ($session -ccontains "The command completed successfully."){
		$richTextBox1.Appendtext("User "+$user_to_manage_textBox.text+" is enabled on "+$ipaddress_textBox3.text+[char]13+[char]10)
	}
}#((!$csv_textBox.Text) -AND ($ipaddress_textBox3.text))			
$richTextBox1.Appendtext("Finished processing, ready for next task."+[char]13+[char]10)
}#Function

#--------------------------------------------------------------------------------------------------------------------------------

Function EditCSVFile #Finished 01/07/2016
{ 
#Check there is data
If ($csv_textBox.Text)
	{
	#Check for CSV file
	$richTextBox1.Appendtext("Checking for "+$csv_textBox.Text+"..."+[char]13+[char]10)
	$test1 = Test-Path $csv_textBox.Text
	If ($Test1 -eq $false)
		{
		$richTextBox1.Appendtext("CSV File doesn't exist."+[char]13+[char]10)
		###### - Do you want to create a new file?
		#Create new pop-up window
		$wshell = New-Object -ComObject Wscript.Shell
		$result = $wshell.Popup("Do you want to create a new file?",0,"The CSV file you specified does not exist.",0x4)
		
		If ($result -eq 6) 
			{
			#Clicked Yes
			$richTextBox1.Appendtext("Creating new csv file: "+$csv_textBox.Text+[char]13+[char]10)
			
			#Create new file called $csv_textBox.Text; 
			Try
				{
				New-Item $csv_textBox.Text -type file
				}
				
			Catch
				{
				$ErrorMessage = $_.Exception.Message
				$FailedItem = $_.Exception.ItemName
				Break
				}	
			Finally
				{	
				#Write error to console
				$richTextBox1.Appendtext($ErrorMessage+[char]13+[char]10)
				$richTextBox1.Appendtext($FailedItem+[char]13+[char]10)
				}	
				
			$test2 = Test-Path $csv_textBox.Text
			If ($test2 -eq $true)
				{
				$richTextBox1.Appendtext("New file created: "+$csv_textBox.Text+[char]13+[char]10)
				#Appendtext to first line of CSV file to match format that we are expecting.
				$obj = New-Object PSObject
				Add-Member -InputObject $obj -MemberType NoteProperty -Name "RemoteHost" -Value $Null
				$obj | export-csv -path $csv_textBox.Text -append -NoTypeInformation
				$richTextBox1.Appendtext("Header added to "+$csv_textBox.Text+[char]13+[char]10)
				}
			Else
				{
				$richTextBox1.Appendtext("File could not be created: "+$csv_textBox.Text+[char]13+[char]10)
				}
			}
				
		#Clicked No
		If	($result -eq 7)
				{
				$richTextBox1.Appendtext($csv_textBox.Text+" doesn't exist and user does not want to create a new one..."+[char]13+[char]10)
				Return 
				}
		}#$test1 -eq $false
	Else
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
	}#End csvfile contains data
Else
	{
	#There is no data in the csv textbox
	$richTextBox1.Appendtext("No path to csv file supplied."+[char]13+[char]10)
	return
	}
}

#--------------------------------------------------------------------------------------------------------------------------------
#Call the Function
GenerateForm
