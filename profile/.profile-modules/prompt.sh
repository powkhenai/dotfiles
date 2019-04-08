#Old-School prompt, left here for historical reference
#PS1="[\\[\e[38;5;34m\\]\\u\\[\e[m\\]@\\[\e[38;5;208m\\]\\h:\\[\e[38;5;56m\\]\\w\\[\e[m\\]]$ "

# Control sequences should be wrapped in \[ \] this keeps the shell from counting them in the length which can screw with long commands
# Using tput to generate the various control sequences should end up being more portable than trying to hard code them.
# I don't need to use $res as much as I use it, but the amount I use it makes it a little easier to move bits around.

grn="\[$(tput setaf 34)\]"
org="\[$(tput setaf 208)\]"
prp="\[$(tput setaf 56)\]"
gry="\[$(tput setaf 237)\]"
res="\[$(tput sgr0)\]"
ps1open="\n$gry\[\016\]l\[\017\](\]"
ps1user="$grn\u$res"
ps1host="$orgMBP$res"
ps1join="$gry)-($res"
ps1dir="$prp\w$res"
ps1files="$grn\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files$res"
ps1size="$prp\$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')B$res"
ps1close="$gry)$res"
ps1open2="$gry\[\016\]m\[\017\]-($res"
ps1date="$org\d$res"
ps1time="$org\$(date +%T)$res"
ps1proc="$grn\j$res"
ps1pvenv="$gry\$(pvenv)$res"

# Turn off default virtual env prepend for python
export VIRTUAL_ENV_DISABLE_PROMPT=1

function pvenv
{
    if [ "$VIRTUAL_ENV" ]
    then
        echo "$(basename $VIRTUAL_ENV)"
    else
        echo "-"
    fi
}

function runningclock
{
    while :
    do
        printf '%s\r' "$(date +%T)"
        sleep 1
    done
}

PS1="$ps1open$ps1user@$ps1host$ps1join$ps1pvenv$ps1join$ps1dir$ps1join$ps1files - $ps1size$ps1close\n$ps1open2$ps1proc$ps1close -> "
export PS1
