var spoilers      = props.globals.getNode("/controls/flight/spoilers");
var brake_parking = props.globals.getNode("/controls/gear/brake-parking");
var brake_left = props.globals.getNode("/controls/gear/brake-left");
var brake_right = props.globals.getNode("/controls/gear/brake-right");


# Any use of spoilers or brakes disables parking brake:

setlistener("/controls/flight/spoilers", func {
	brake_parking.setValue(0);
});
setlistener("/controls/gear/brake-left", func {
	brake_parking.setValue(0);
	if(brake_left.getValue() > 0) {
		spoilers.setValue(1);
	} else {
		spoilers.setValue(0);
	}
});
setlistener("/controls/gear/brake-right", func {
	brake_parking.setValue(0);
	if(brake_right.getValue() > 0) {
		spoilers.setValue(1);
	} else {
		spoilers.setValue(0);
	}
});


# If parking brake enabled,
# set spoilers and smoothly apply brakes

setlistener("/controls/gear/brake-parking", func {
	if (brake_parking.getValue() == 1) {
		spoilers.setValue(1);
		controls.applyBrakes(1, -1);
		controls.applyBrakes(1, 1);
	} 
#else {
#		spoilers.setValue(0);
#		controls.applyBrakes(0, -1);
#		controls.applyBrakes(0, 1);
#	}
});

`
