# Helper PM scripts

Example actions when hibernating/resuming the system via PM
in Linux

- the hdmi_1.sh and hdmi_2.sh should be copied in user directory and made executable.
- The pm script 95-sleep.sh should be copied into /etc/pm/sleep.d/95-sleep.sh and make executable

On system suspend HDMI input is switched to HDMI1
On system resume HDMI input is switched to HDMI2
