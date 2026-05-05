# LG ThinQ Enhanced

A fork of the official `lg_thinq` Home Assistant integration with improved AC support.

## Changes from official integration

- **Natural Wind fan mode**: The `NATURE` fan speed (natural/diffuse airflow pattern) is now properly mapped to Home Assistant's `FAN_DIFFUSE` mode and labelled "Natural Wind"
- **Fan Speed select entity**: Added a standalone `select` entity for wind speed control (in addition to the climate entity fan mode)

## Limitations discovered

After investigating the LG ThinQ Connect API device profile, the following features from the old `ha-smartthinq-sensors` integration **cannot** be implemented in this fork:

- **Jet mode**: Not exposed in the ThinQ Connect API device profile (RAC_056905_WW)
- **Ionizer**: Not exposed in the ThinQ Connect API device profile
- **Step-based swing control**: Device only supports boolean (on/off) swing via the Connect API
- **Intermediate fan speeds (LOW_MID, MID_HIGH)**: The device reports only 4 fan speeds via the new API

These features were only available through the legacy ThinQ v2 API used by `ha-smartthinq-sensors`. LG has not yet migrated them to the new Connect API.

## Installation via HACS

1. Add this repository to HACS as a custom repository (type: Integration)
2. Install "LG ThinQ Enhanced"
3. Restart Home Assistant

## Manual Installation

Copy the `custom_components/lg_thinq` directory to your HA config's `custom_components` folder and restart.
