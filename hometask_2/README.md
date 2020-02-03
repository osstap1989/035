explanations for the file **auto_update.sh** <br/>
open crontab: crontab -e <br/>
put this command:  0 0 */7 * * some_place/auto_update.sh >/dev/null 2>&1 <br/>
