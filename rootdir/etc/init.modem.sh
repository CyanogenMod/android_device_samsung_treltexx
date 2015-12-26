# Read the hardware revision string.
# Example output:
# Revision         : 0015
REVISION=$(cat /proc/cpuinfo | grep Revision)

# Remove all whitespaces (just in case)
REVISION=$(sed -e 's/\s\+//g' <<< $REVISION)

# Keep the last 4 characters (representing the revision identifier)
REVISION=$(sed 's/.*\(....$\)/\1/' <<< $REVISION)

# Convert hex to decimal (as expected by our cpboot-daemon)
REVISION=$(echo $((16#${REVISION})))

# Logging..
echo "init.modem.sh: setting hardware revision: ${REVISION}" > /dev/kmsg

# Actually set the revision property
setprop ro.revision ${REVISION}
setprop ro.revision.set "1"
