setlistener("/engines/engine/running", func(running) {
    var running = running.getBoolValue();
    if(running){
      interpolate("/engines/engine/oil-pressure-psi", 60, 0.9);
    }else{
      interpolate("/engines/engine/oil-pressure-psi", 0, 0.9);
    }
});


