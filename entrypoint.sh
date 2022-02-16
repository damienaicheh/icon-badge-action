#!/bin/sh -l

/app/bin/badge --version

COMMAND_LINE="/app/bin/badge "

if [ -z "$16" ];
then
    if [ "$1" = true ];
    then
        COMMAND_LINE="$COMMAND_LINE --dark "
    fi

    if [ "$2" = true ];
    then
        COMMAND_LINE="$COMMAND_LINE --alpha "
    fi

    if [ "$3" = true ];
    then
        COMMAND_LINE="$COMMAND_LINE --alpha_channel "
    fi

    if [ ! -z "$4" ];
    then
        COMMAND_LINE="$COMMAND_LINE --custom "$4" "
    fi

    if [ "$5" = true ];
    then
        COMMAND_LINE="$COMMAND_LINE --no_badge "
    fi

    if [ ! -z "$6" ];
    then
        COMMAND_LINE="$COMMAND_LINE --badge_gravity "$6" "
    fi

    if [ ! -z "$7" ];
    then
        COMMAND_LINE="$COMMAND_LINE --shield "$7" "
    fi

    if [ ! -z "$8" ];
    then
        COMMAND_LINE="$COMMAND_LINE shield_gravity "$8" "
    fi

    if [ ! -z "$9" ];
    then
        COMMAND_LINE="$COMMAND_LINE --shield_parameters "$9" "
    fi

    if [ ! -z "$10" ];
    then
        COMMAND_LINE="$COMMAND_LINE --shield_geometry "$10" "
    fi

    if [ ! -z "$11" ];
    then
        COMMAND_LINE="$COMMAND_LINE --shield_io_timeout $11 "
    fi

    if [ ! -z "$12" ];
    then
        COMMAND_LINE="$COMMAND_LINE --shield_scale $12 "
    fi

    if [ "$13" = true ];
    then
        COMMAND_LINE="$COMMAND_LINE --shield_no_resize "
    fi

    if [ -n $14 ];
    then
        COMMAND_LINE="$COMMAND_LINE --glob ${14} "
    fi

    if [ "$15" = true ];
    then
        COMMAND_LINE="$COMMAND_LINE --grayscale "
    fi
else
    COMMAND_LINE="$COMMAND_LINE ${16}"
fi

echo Executed command:
echo $COMMAND_LINE

$COMMAND_LINE