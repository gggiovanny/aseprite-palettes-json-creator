# aseprite-palettes-json-creator

## About <a name = "about"></a>

This scrips it's to use a custom gpl list of palettes on aseprite. Based on the
.gpl palettes on the same folder, it creates or updates a package.json file with
all the files on the same folder.

### Prerequisites

You need ruby installed. If you use Windows, you can grab the latest version
in a "next-next-next" installer here: https://rubyinstaller.org/downloads/.

Make sure that ruby is added to your path and ".rb" files are associated with
the program. There settings are checked by default.

## Usage <a name = "usage"></a>

Locate the folder where aseprite stores your palettes. An example is:
`C:\SteamLibrary\steamapps\common\Aseprite\data\extensions`

Inside that folder, create a folder with the name that you want for your
palette, and put your .gpl palettes on it. Also copy update-palettes.rb to the
same palettes folder.

Run update-palettes.rb with a double-click and it will open a terminal with a
confirmation. Type 'y' if everything looks ok, and a "package.json" file will
apear in the same folder.

Then, import on aseprite the folder with the palettes, and you are ready to
go!
