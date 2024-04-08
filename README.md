# fonts
- listing Standard Fonts and Iconic font aggregator, collection, and patcher
  - Fonts from Google : [Google Fonts](https://fonts.google.com/) | [Google Fonts Github](https://github.com/google/fonts)
  - Font Awesome : [Font Awesome](https://fontawesome.com/)
  - Nerd Fonts : [Nerd Fonts](https://www.nerdfonts.com/) | [Nerd Fonts Github](https://github.com/ryanoasis/nerd-fonts)
  - Hack Fonts : [Hack Fonts](https://sourcefoundry.org/hack/)
  - cascadia-code Fonts : [CascadiaCode (Windows Fonts)](https://github.com/microsoft/cascadia-code)

To test the various fonts : [Programmingfonts.org](https://www.programmingfonts.org/)

## Google Fonts
### Local installation package managers
For Linux, macOS, FreeBSD, or HaikuOS you can also use [fnt](https://github.com/alexmyczko/fnt), to install single fonts. For [RPM](http://bootes.ethz.ch/fonts/rpm/), [DEB](http://bootes.ethz.ch/fonts/deb/) based systems, feel free to try the linked URLs for individual fonts. Others can also use the [webservice](http://bootes.ethz.ch/fonts/).

### Download All Google Fonts
You can download all Google Fonts in a simple ZIP snapshot (over 1GB) from <https://github.com/google/fonts/archive/main.zip>

#### Sync With Git
You can also sync the collection with git so that you can update by only fetching what has changed. To learn how to use git, Github provides [illustrated guides](https://guides.github.com), a [youtube channel](https://www.youtube.com/user/GitHubGuides), and an [interactive learning site](https://skills.github.com/).
Free, open-source git applications are available for [Windows](https://git-scm.com/download/gui/windows) and [Mac OS X](https://git-scm.com/download/gui/mac).

## Build font information caches
Listing fonts on your Unix system
```shell
$ fc-list
```
For configuration your fonts on Unix
```shell
$ fc-cache -vfs
```
