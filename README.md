# GMSMapViewDelegateBugSmaple
This project is reproduce the bug.

## What bug
`GMSMapViewDelegate(mapView:idleAtCameraPosition:)` is called at strange timing when you call `animateWithCameraUpdate` multiple times in succession.

`GMSMapViewDelegate(mapView:idleAtCameraPosition:)` is expected to be called at last.

## How to setup
1. Download the dependencies:
```
$ pod install
```

2. Input your Google Maps SDK for iOS APIKey to the AppDelegate.swift

3. Input correct Product Bundle Identifier to the Info.plist

## How to reproduce
1. Launch app
2. Tap the 'Reproduce bug' button
3. Watch the XCode console log.Perhaps there is a log like the one below.
 - If it does not reproduce, try it several times

`GMSMapViewDelegate(mapView:idleAtCameraPosition:)` is called on the way.
```
[MAP_DEBUG]didChangePosition:GMSCameraPosition 0x60400085b1b0: target:(35.439, 139.637) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
[MAP_DEBUG]didChangePosition:GMSCameraPosition 0x6000008450a0: target:(35.439, 24.030) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
[MAP_DEBUG]didChangePosition:GMSCameraPosition 0x60000065d910: target:(35.439, 48.244) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
[MAP_DEBUG]didChangePosition:GMSCameraPosition 0x604000259050: target:(35.439, 79.292) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
[MAP_DEBUG]didChangePosition:GMSCameraPosition 0x60400085f3b0: target:(35.439, 96.480) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
[MAP_DEBUG]didChangePosition:GMSCameraPosition 0x6000004568f0: target:(35.439, 105.963) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
[MAP_DEBUG]didChangePosition:GMSCameraPosition 0x6040006487c0: target:(35.439, 116.123) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
[MAP_DEBUG]didChangePosition:GMSCameraPosition 0x60400064f7e0: target:(35.439, 118.857) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
[MAP_DEBUG]didChangePosition:GMSCameraPosition 0x600000653b00: target:(35.439, 120.676) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
[MAP_DEBUG]didChangePosition:GMSCameraPosition 0x600000645970: target:(35.439, 122.307) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
[MAP_DEBUG]didChangePosition:GMSCameraPosition 0x60000065a970: target:(35.439, 123.920) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
[MAP_DEBUG]idleAtPosition:GMSCameraPosition 0x60000065a970: target:(35.439, 123.920) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
[MAP_DEBUG]didChangePosition:GMSCameraPosition 0x600000655c00: target:(35.439, 127.135) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
[MAP_DEBUG]didChangePosition:GMSCameraPosition 0x600000655fc0: target:(35.439, 130.787) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
[MAP_DEBUG]didChangePosition:GMSCameraPosition 0x600000454730: target:(35.439, 134.199) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
[MAP_DEBUG]didChangePosition:GMSCameraPosition 0x600000852600: target:(35.439, 136.502) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
[MAP_DEBUG]didChangePosition:GMSCameraPosition 0x604000a4c300: target:(35.439, 139.181) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
[MAP_DEBUG]didChangePosition:GMSCameraPosition 0x604000859230: target:(35.439, 139.637) bearing:0.000 zoomLevel:16.000 viewingAngle:0.000
```
