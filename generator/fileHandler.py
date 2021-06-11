from settings import *

def deleteOldFiles():
	print("\tDeleting Old Files...")

	#clean 'generated' directory
	for fileName in glob.glob(os.path.join(generatedPath, "*.*")):
		os.remove(fileName)
	#clean 'import_me' directory
	for fileName in glob.glob(os.path.join(importMePath, "*.*")):
		os.remove(fileName)

def copyNewFiles():
	print("\tCopying New Files...")

	#copy from 'generic' to 'import_me'
	for fileName in glob.glob(os.path.join(genericPath, "*.*")):
		shutil.copy(fileName, importMePath)
	if(is7Series):
		dspPath = genericPath + "7series"
	else:
		dspPath = genericPath + "ultrascale"
	for fileName in glob.glob(os.path.join(dspPath, "*.*")):
		shutil.copy(fileName, importMePath)

	#copy from 'generated' to 'import_me'
	for fileName in glob.glob(os.path.join(generatedPath, "*.*")):
		shutil.copy(fileName, importMePath)

	if(hardenedArray):
		#copy from 'labft' to 'import_me'
		level0Files = []
		level1Files = level0Files + ["acc_n.sv", "mac_n.sv", "e_move_nxn.sv", "labft_error_detector.sv"]

		filesPerLevel = [level0Files, level1Files]

		for fileName in filesPerLevel[1]:
			shutil.copy((labftPath+fileName), importMePath)
