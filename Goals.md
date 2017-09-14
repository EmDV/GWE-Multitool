## What do we want?

Today we want to leave Nicollet street with a modified Freeboard application that has Exosite's branding/theme/colors and automatically discovers recorded metrics inside of TSDB.

At the end of the day someone should be able to clone this repository and with the least amount of configuration see their device data in a Murano Application. 

## Reach goals:

* Discover datapoints from Keystore DB.

## End Goals // Not objectives today: 

* Make this an Exchange Element.
* Make a Microchip version.
* Make a TI version.

```
# Murano Product Spec File - TI MSP432E4 Development Kit.

resources:
-   alias: usrsw1
    format: number
    settable: false
-   alias: usrsw2
    format: number
    settable: false
-   alias: temp
    format: number
    settable: false
-   alias: ontime
    format: number
    settable: false 
-   alias: led
    format: string
    settable: true
```