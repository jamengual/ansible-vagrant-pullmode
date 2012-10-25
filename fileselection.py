import easygui as eg

fileselected = eg.fileopenbox( msg= None, title = "Select the SQL dump file", default = "*", filetypes = ['*.sql', '*.*'] )
print fileselected

