// Decreases the battery level over 15 seconds until it's empty

var startBatteryLevel = sysinfo.generic.batteryLevel; // save start battery level
var drainTime = 15; // seconds
var steps = 15; // number of steps for reducing battery level

// set power state to battery power
sysinfo.generic.currentPowerState = sysinfo.generic.BatteryPower;

// running this script doesn't make sense if battery is already drained
if (startBatteryLevel === 0)
    startBatteryLevel = 100;

// slowly drain battery
for (var i = 0; i < steps; ++i) {
    sysinfo.generic.batteryLevel = startBatteryLevel * (1 - i/(steps-1));
    yield(drainTime/steps * 1000);
}
