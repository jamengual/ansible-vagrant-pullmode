import Tkinter, tkFileDialog

root = Tkinter.Tk()
root.withdraw()
dirname = tkFileDialog.askdirectory(parent=root,initialdir="/",title='Please select a directory')
if len(dirname ) > 0:
    print dirname
