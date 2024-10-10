#!/bin/bash
# A small Bash script to control User LED3 from the Linux console.
# This script allows turning the LED on, off, checking status,
# flashing, and blinking a specified number of times.

LED3_PATH=/sys/class/leds/beaglebone:green:usr3

# Function to remove any existing trigger
function removeTrigger {
    echo "none" > "$LED3_PATH/trigger"
    }

    echo "Starting the LED Bash Script"

    # Check if any arguments are provided
    if [ $# -eq 0 ]; then
        echo "There are no arguments. Usage is:"
            echo -e " commanderBash Command \n where command is one of "
                echo -e " on, off, flash, blink <count>, or status \n e.g.
                commanderBash on "
                    exit 2
                    fi

                    echo "The LED Command that was passed is: $1"

                    case "$1" in
                        on)
                                echo "Turning the LED on"
                                        removeTrigger
                                                echo "1" >
                                                "$LED3_PATH/brightness"
                                                        ;;
                                                            off)
                                                                    echo
                                                                    "Turning the
                                                                    LED off"
                                                                            removeTrigger
                                                                                    echo
                                                                                    "0"
                                                                                    > "$LED3_PATH/brightness"
                                                                                            ;;
                                                                                                flash)
                                                                                                        echo
                                                                                                        "Flashing
                                                                                                        the
                                                                                                        LED"
                                                                                                                removeTrigger
                                                                                                                        echo
                                                                                                                        "timer"
                                                                                                                        > "$LED3_PATH/trigger"
                                                                                                                                echo
                                                                                                                                "100"
                                                                                                                                > "$LED3_PATH/delay_off"
                                                                                                                                        echo
                                                                                                                                        "100"
                                                                                                                                        > "$LED3_PATH/delay_on"
                                                                                                                                                ;;
                                                                                                                                                    blink)
                                                                                                                                                            if
                                                                                                                                                            [
                                                                                                                                                            -z
                                                                                                                                                            "$2"
                                                                                                                                                            ];
                                                                                                                                                            then
                                                                                                                                                                        echo
                                                                                                                                                                        "Please
                                                                                                                                                                        specify
                                                                                                                                                                        the
                                                                                                                                                                        number
                                                                                                                                                                        of
                                                                                                                                                                        times
                                                                                                                                                                        to
                                                                                                                                                                        blink."
                                                                                                                                                                                    exit
                                                                                                                                                                                    1
                                                                                                                                                                                            fi
                                                                                                                                                                                                    echo
                                                                                                                                                                                                    "Blinking
                                                                                                                                                                                                    the
                                                                                                                                                                                                    LED
                                                                                                                                                                                                    $2
                                                                                                                                                                                                    times"
                                                                                                                                                                                                            removeTrigger
                                                                                                                                                                                                                    for
                                                                                                                                                                                                                    ((cnt=1;
                                                                                                                                                                                                                    cnt<=
                                                                                                                                                                                                                    $2;
                                                                                                                                                                                                                    cnt++));
                                                                                                                                                                                                                    do
                                                                                                                                                                                                                                echo
                                                                                                                                                                                                                                "1"
                                                                                                                                                                                                                                > "$LED3_PATH/brightness"
                                                                                                                                                                                                                                            sleep
                                                                                                                                                                                                                                            1
                                                                                                                                                                                                                                                        echo
                                                                                                                                                                                                                                                        "0"
                                                                                                                                                                                                                                                        > "$LED3_PATH/brightness"
                                                                                                                                                                                                                                                                    sleep
                                                                                                                                                                                                                                                                    1
                                                                                                                                                                                                                                                                            done
                                                                                                                                                                                                                                                                                    ;;
                                                                                                                                                                                                                                                                                        status)
                                                                                                                                                                                                                                                                                                echo
                                                                                                                                                                                                                                                                                                "Current
                                                                                                                                                                                                                                                                                                LED
                                                                                                                                                                                                                                                                                                Status:"
                                                                                                                                                                                                                                                                                                        cat
                                                                                                                                                                                                                                                                                                        "$LED3_PATH/trigger"
                                                                                                                                                                                                                                                                                                                ;;
                                                                                                                                                                                                                                                                                                                    *)
                                                                                                                                                                                                                                                                                                                            echo
                                                                                                                                                                                                                                                                                                                            "Invalid
                                                                                                                                                                                                                                                                                                                            command.
                                                                                                                                                                                                                                                                                                                            Please
                                                                                                                                                                                                                                                                                                                            use
                                                                                                                                                                                                                                                                                                                            one
                                                                                                                                                                                                                                                                                                                            of
                                                                                                                                                                                                                                                                                                                            the
                                                                                                                                                                                                                                                                                                                            following:"
                                                                                                                                                                                                                                                                                                                                    echo
                                                                                                                                                                                                                                                                                                                                    -e
                                                                                                                                                                                                                                                                                                                                    "
                                                                                                                                                                                                                                                                                                                                    on,
                                                                                                                                                                                                                                                                                                                                    off,
                                                                                                                                                                                                                                                                                                                                    flash,
                                                                                                                                                                                                                                                                                                                                    blink
                                                                                                                                                                                                                                                                                                                                    <count>,
                                                                                                                                                                                                                                                                                                                                    or
                                                                                                                                                                                                                                                                                                                                    status"
                                                                                                                                                                                                                                                                                                                                            exit
                                                                                                                                                                                                                                                                                                                                            1
                                                                                                                                                                                                                                                                                                                                                    ;;
                                                                                                                                                                                                                                                                                                                                                    esac

                                                                                                                                                                                                                                                                                                                                                    echo
                                                                                                                                                                                                                                                                                                                                                    "End
                                                                                                                                                                                                                                                                                                                                                    of
                                                                                                                                                                                                                                                                                                                                                    the
                                                                                                                                                                                                                                                                                                                                                    LED
                                                                                                                                                                                                                                                                                                                                                    Bash
                                                                                                                                                                                                                                                                                                                                                    Script"

