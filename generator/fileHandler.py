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

	if(levelOfHardness > 0):
		#copy from 'labft' to 'import_me'
		level0Files = []
		level1Files = level0Files + ["int8_pe.sv", "acc_n.sv", "mac_n.sv", "labft_error_detector.sv"]
		level2Files = level1Files + []
		level3Files = level2Files + ["dwc_mem.sv", "mem_error_detector.sv"]
		level4Files = level3Files + ["tmr_fsm.sv", "tmr_dff.sv", "tmr_voter.sv", "maj3.sv"]

		filesPerLevel = [level0Files, level1Files, level2Files, level3Files, level4Files]

		for fileName in filesPerLevel[levelOfHardness]:
			shutil.copy((labftPath+fileName), importMePath)
