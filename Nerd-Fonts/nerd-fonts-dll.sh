#!/bin/bash
# set -e

### Nerd-Fonts ###
# Github : https://github.com/ryanoasis/nerd-fonts
# Site : https://nerdfonts.com/
##################

UNZIP=$(command -v unzip)
CURL=$(command -v curl)
RM=$(command -v rm)
SLEEP=$(command -v sleep)
MV=$(command -v mv)

nerd_folder="Nerd-Fonts"
font_directory="$HOME/.fonts/"

nerd_site="https://www.nerdfonts.com/"
nerd_github_release="https://github.com/ryanoasis/nerd-fonts/releases"
version_nerd="v2.1.0"

echo -e "\nSite Nerd Fonts : $nerd_site"
echo -e "Github Nerd Fonts : $nerd_github_release\n"
echo -e "\n[*] Download nerd-fonts from github RELEASE version $version_nerd\n"

############################
### Download with "curl" ###
############################

curl -L -O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/3270.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/Agave.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/AnonymousPro.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/BigBlueTerminal.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/CodeNewRoman.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/DejaVuSansMono.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/DroidSansMono.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/FiraCode.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/FiraMono.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/Go-Mono.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/Gohu.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/Hack.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/JetBrainsMono.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/LiberationMono.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/Meslo.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/ProFont.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/RobotoMono.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/SourceCodePro.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/SpaceMono.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/Terminus.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/Ubuntu.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/UbuntuMono.zip \

if [ -z "$UNZIP" ] || [ -z "$CURL" ] || [ -z "$RM" ] || [ -z "$SLEEP" ] || [ -z "$MV" ]; then
    echo -e "\nRequired tools are missing\n"
    echo -e "Tools are : $UNZIP, $CURL, $RM, $SLEEP and $MV\n"
    exit 1

else
    # Unzip Multiple Files from Linux Command Line Using Shell For Loop
    # for z in *.zip; do unzip $z; done
    # OR
    # for f in `ls -1 *.zip`; do unzip $f -d `basename $f .zip`; done

    echo -e "\n[*] Extract archives with unzip command\n"
    sleep 1
    for f in `ls -1 *.zip`; do unzip $f -d `basename $f .zip`; done
    # unzip '*.zip' -d $nerd_folder || echo "Impossible to decompress zip files from the current folder"

    echo -e "\n[*] Deleted all zip files from this directory\n"
    sleep 1
    rm -f *.zip || echo "Cannot delete zip files from the current folder"

    #echo -e "[*] Move folder '$nerd_folder' into '$font_directory'\n"
    #if [ -d $font_directory ]; then
    #    sleep 1
    #    mv -vf $nerd_folder $font_directory || echo "Impossible to move the folder to its destination"

    #else
    #    sleep 1
    #    mkdir $font_directory || echo "Cannot create directory, directory exist"
    #    mv -vf $nerd_folder $font_directory || echo "Impossible to move the folder to its destination"
    #fi
fi

