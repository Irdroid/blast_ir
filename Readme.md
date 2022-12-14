## Blast IR
a set of commandline bash tools for sending PRONTO HEX codes using the Irdroino Infrared Shield/Blaster for Arduino

### Applications

- Control TV and other IR controlled equipment via commands from the terminal
- IR Remote control automation, macros, scheduling infrared commands (see pm scripts directory for sleep/hybernate/resume actions)

### Usage:

./blast.sh [Pronto HEX Code]

The above sends the provide PRONTO HEX code as an argument for the blast utility


./blast_cmd [command]

Example:
```
./blast_cmd poweron
```

The above reads predefined commands/codes from the supplied csv file, parses the commands, codes and if
the command provided as an argument matches one of the available commands the pronto hex code gets blasted. **By default the poweron,poweroff,hdmi1,hdmi2 commands are for Samsung TVs , see the codes.csv and edit as per your needs.**

### Options:
```
./blast_cmd -h 
```
Prints help

```
./blast_cmd -l 
```
List available commands / codes
```
./blast_cmd -v 
```
Prints utility version

### Where to get PRONTO HEX codes for my TV/Device?

1. https://remotecentral.com
2. Makehex https://github.com/probonopd/MakeHex using the irdb.tk from GitHub
 
### Example Discreate PRONTO HEX Codes for Samsung

1. POWER_ON 
```
./blast.sh 0000 006D 0022 0000 00AC 00AC 0015 0040 0015 0040 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0015 0015 0015 0015 0040 0015 0040 0015 0015 0015 0015 0015 0040 0015 0015 0015 0040 0015 0040 0015 0015 0015 0015 0015 0040 0015 0040 0015 0015 0015 0689
```
2. POWER_OFF

```
./blast.sh 0000 006D 0022 0000 00AC 00AC 0015 0040 0015 0040 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0015 0040 0015 0040 0015 0015 0015 0015 0015 0040 0015 0040 0015 0040 0015 0040 0015 0015 0015 0015 0015 0040 0015 0040 0015 0015 0015 0689
```

3. HDMI_1
```
./blast.sh 0000 006D 0000 0022 00AC 00AB 0015 0041 0015 0041 0015 0041 0015 0016 0015 0016 0015 0016 0015 0016 0015 0016 0015 0041 0015 0041 0015 0041 0015 0016 0015 0016 0015 0016 0015 0016 0015 0016 0015 0041 0015 0016 0015 0016 0015 0041 0015 0016 0015 0041 0015 0041 0015 0041 0015 0016 0015 0041 0015 0041 0015 0016 0015 0041 0015 0016 0015 0016 0015 0016 0015 0689
```

4. HDMI_2

```
./blast.sh 0000 006D 0000 0022 00AC 00AB 0015 0041 0015 0041 0015 0041 0015 0016 0015 0016 0015 0016 0015 0016 0015 0016 0015 0041 0015 0041 0015 0041 0015 0016 0015 0016 0015 0016 0015 0016 0015 0016 0015 0016 0015 0041 0015 0041 0015 0041 0015 0041 0015 0041 0015 0016 0015 0041 0015 0041 0015 0016 0015 0016 0015 0016 0015 0016 0015 0016 0015 0041 0015 0016 0015 0689
```
