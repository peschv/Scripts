# Scripts
Scripts for elementaryOS.

## Keyboard Backlight
[thinkpad-keyboard-backlight.sh](https://github.com/peschv/Scripts/blob/main/thinkpad-keyboard-backlight.sh) - Enables keyboard backlight for Thinkpad laptops.
### Implementation
* Add script to folder /etc/acpi
* Ensure the file is executable by entering the following command: 
  > chmod +x /etc/acpi/thinkpad-keyboard-backlight.sh
* Navigate to /etc/acpi/events. Enter the file asus-keyboard-backlight-up using your preferred editor. Example:
  > sudo nano asus-keyboard-backlight-up
* Modify action line to the following, and save:
  > action=/etc/acpi/thinkpad-keyboard-backlight.sh
* Note: to modify hotkey binding, enter command *acpi_listen* in terminal, then press the key that you wish to bind to the keyboard backlight function. Enter the output in the thinkpad-keyboard-backlight-up file. Example: 
  * If output is:
    > ibm/hotkey LEN0268:00 00000080 00001315
  * Enter file using favorite editor (in this example, nano):  
    > sudo nano /etc/acpi/events/thinkpad-keyboard-backlight-up
  * Modify the event line to the hotkey output and save:
    > event=ibm/hotkey LEN0268:00 00000080 00001315
