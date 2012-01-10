var position = nil;
var pos2 = nil;
var pos3 = nil;
var pos4 = nil;
var airspeed = nil;
var revs = nil;
var ppitch = nil;
var mpress = nil;
var rstrain = 0;
var strain = 0;
var thrust = 0;
var ctemp = nil;
var cpos = 0;
var temp = nil;
var dtemp = nil;
var newtemp = nil;
var otemp = nil;
var visc = 0;
var npos = 0;
var rcount = 0;
var remaining = 0;
var starter_power = 0;

var toggle_canopy = func {
  canopy = aircraft.door.new ("/controls/canopy/",1);
  if(getprop("/controls/canopy/position-norm") > 0) {
      canopy.close();
  } else {

      canopy.open();
  }
}
