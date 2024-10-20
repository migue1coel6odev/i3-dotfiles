. ./utils/prompt.sh
. ./utils/call_script.sh

# Initial Setup
prompt_run "Perform initial setup ?"
if [ $? -eq "1" ] ; then call_setup_script base_setup; fi

prompt_run "Install zsh"
if [ $? -eq "1" ] ; then call_setup_script shell; fi

prompt_run "Install essentials?"
if [ $? -eq "1" ] ; then call_setup_script essentials; fi

prompt_run "Install bluetooth?"
if [ $? -eq "1" ] ; then call_setup_script bluetooth; fi

prompt_run "Install i3 utils?"
if [ $? -eq "1" ] ; then call_setup_script i3; fi

prompt_install "Google Chrome"
if [ $? -eq "1" ] ; then call_package_script chrome; fi

# Development
prompt_install "Zed"
if [ $? -eq "1" ] ; then call_package_script zed; fi

prompt_install "Code"
if [ $? -eq "1" ] ; then call_package_script vscode; fi

prompt_install "Docker"
if [ $? -eq "1" ] ; then call_package_script docker; fi

prompt_install "DBeaver"
if [ $? -eq "1" ] ; then call_package_script dbeaver; fi

prompt_install "Node (nvm)"
if [ $? -eq "1" ] ; then call_package_script node; fi

prompt_install "Bun"
if [ $? -eq "1" ] ; then call_package_script bun; fi

prompt_install "Deno"
if [ $? -eq "1" ] ; then call_package_script deno; fi

prompt_install "Rust"
if [ $? -eq "1" ] ; then call_package_script rust; fi

prompt_install "Zig"
if [ $? -eq "1" ] ; then call_package_script zig; fi

prompt_install "Nix"
if [ $? -eq "1" ] ; then call_package_script nix; fi


# Games
prompt_install "Steam"
if [ $? -eq "1" ] ; then call_package_script steam; fi

prompt_install "Discord"
if [ $? -eq "1" ] ; then call_package_script discord; fi

prompt_install "Teamspeak"
if [ $? -eq "1" ] ; then call_package_script teamspeak; fi

# Apps
prompt_install "Freecad"
if [ $? -eq "1" ] ; then call_package_script freecad; fi

prompt_install "Slack"
if [ $? -eq "1" ] ; then call_package_script slack; fi

prompt_install "Figma"
if [ $? -eq "1" ] ; then call_package_script figma; fi

prompt_install "1password"
if [ $? -eq "1" ] ; then call_package_script 1password; fi

echo
echo
echo "You can now reboot your system and then run the post_install script"
