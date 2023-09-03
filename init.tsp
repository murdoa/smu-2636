-------- MAIN PROGRAM --------
reset()
display.clear()

-- Beep in excitement
beeper.beep(1, 600)

-- Clear buffers
smub.nvbuffer1.clear()
-- Prepare buffers
smub.nvbuffer1.collectsourcevalues = 1
format.data = format.ASCII
-- disabled smub append
smub.nvbuffer1.appendmode = 0
smub.measure.count = 1

-- Measurement Setup
-- To adjust the delay factor.
smub.measure.delayfactor = 0
smub.measure.nplc = 1
-- smub setup
smub.source.func = smub.OUTPUT_DCVOLTS
smub.sense = smub.SENSE_LOCAL
smub.source.autorangev = smub.AUTORANGE_OFF
smub.measure.autorangev = smub.AUTORANGE_OFF
smub.source.limiti = 0.5
smub.source.rangev = 20.0
smub.measure.rangei = 1

--DISPLAY settings
display.smub.measure.func = display.MEASURE_DCAMPS
display.screen = display.SMUB
