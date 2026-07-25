Linux Serial port
---

# Basics

## Getting access from the command line:

```sudo usermod -a -G dialout <username>```

or if it's you:

```sudo usermod -a -G dialout $USER```

Log out and in to take effect

## List the serial ports

```ls /dev/tty*```

## Give your Flat pack program access to the searial port

Open "flatseal" -> Program on the left -> Device -> All device or USB devices
