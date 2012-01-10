var volts = 0.0;

init_electrical = func {
	volts = getprop("systems/electrical/volts");
	# power up radio
	setprop("systems/electrical/outputs/comm", volts);
}

# Setup listener call to initialize the electrical system once the fdm is initialized
# 
setlistener("sim/signals/fdm-initialized", init_electrical);

