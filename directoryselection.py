import Tkinter, tkFileDialog

root = Tkinter.Tk()
root.withdraw()
dirname = tkFileDialog.askdirectory(parent=root,initialdir="/",title='Please select the directory where you have your code/index.php:')
if len(dirname ) > 0:
    print dirname
