themePath="$ZSH_CUSTOM/themes/spaceship-prompt"
echo $ZSH_CUSTOM
echo $themePath
if ! [ -d $themePath ]; then
    echo "does not"
else
    echo "does"
fi
