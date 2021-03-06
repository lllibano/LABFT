#imports
import os
import sys
import glob
import shutil
import math as m

#globals
genericPath = "./RTL/dont_touch/generic/" #DONT TOUCH
generatedPath = "./RTL/dont_touch/generated/" #DONT TOUCH
importMePath = "./RTL/import_me/" #DONT TOUCH
parallelismLevel = 2*2 #DONT TOUCH
inputBits = 8 #DONT TOUCH
outputBits = 32 #(Accumulators)
arraySize = 4 #(N in NxN)
is7Series = True #{True = 7 Series (DSP48E1), False = UltraScale (DSP48E2)}
axiWrapper = True #(AXI Wrapper 'top.sv')
###LABFT
labftPath = "./RTL/dont_touch/labft/" #DONT TOUCH
levelOfHardness = 0
	#0: Unhardened
	#1: LABFT
	#2: DWC LABFT
	#3: DWC LABFT + DWC Memory
	#4: DWC LABFT + DWC Memory + TMR Control