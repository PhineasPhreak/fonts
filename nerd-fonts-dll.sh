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
font_directory=$(HOME/.fonts/)
version_nerd="v2.1.0"

echo -e "\nDownload nerd-fonts from github RELEASE version $version_nerd\n"

############################
### Download with "curl" ###
############################

curl -L -O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/3270.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/Agave.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/AnonymousPro.zip \
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
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/ProFont.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/RobotoMono.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/SourceCodePro.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/SpaceMono.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/Terminus.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/Ubuntu.zip \
-O https://github.com/ryanoasis/nerd-fonts/releases/download/$version_nerd/UbuntuMono.zip \

if [ -z "$UNZIP" ] || [ -z "$CURL" ] || [ -z "$RM" ] || [ -z "$SLEEP" ] || [ -z "$MV" ]; then
    echo -e "\nRequired tools are missing\n"
    echo -e "Tools are : $UNZIP, $CURL, $RM and $SLEEP\n"
    exit 1

else
    # Unzip Multiple Files from Linux Command Line Using Shell For Loop
    # for z in *.zip; do unzip $z; done

    echo -e "\nExtract archives with unzip command\n"
    sleep 1
    unzip '*.zip' -d $nerd_folder

    echo -e "\nDeleted all zip files from this directory\n"
    sleep 1
    rm -rf *.zip

    echo -e "\nMove folder "$nerd_folder" into "$font_directory"\n"
	if ( !is_dir( $font_directory ) ) {
    	mkdir( $font_directory );
        mv -v $nerd_folder $font_directory && echo "Error"
	}

    sleep 1
    mv -v $nerd_folder $font_directory && echo "Error"
fi

