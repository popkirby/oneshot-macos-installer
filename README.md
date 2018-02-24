## Installation

### 1. Download OneShot from Steam

Download SteamCMD from https://steamcdn-a.akamaihd.net/client/installer/steamcmd_osx.tar.gz and
extract.  Double-click `steamcmd` in the directory.

The line `Steam>` will appear in the Terminal window, type `login <your_username>` and press Enter.
If you are asked to enter password / Steam Guard code, enter them.

After the login, type `@sSteamCmdForcePlatformType windows` and press Enter.

Then, type `app_update 420530 validate` and press Enter. OneShot's game data will be installed in
`/Users/<username>/Library/Application Support/Steam/steamapps/common/OneShot`.

### 2. Extract data from exe file

Double-click `extract-image.command`. Images will be extracted to `images` directory. (Spoiler inside!)

### 3. Install application

Double-click `install.command`.  Files will be copied to Steam's OneShot directory.

After the installation, The OneShot directory will be opened. You can play OneShot by double-clicking `OneShot`.

For convenience, I recommend adding OneShot application to Dock or creating shortcut.


## Information

`OneShot.app`, `xScripts.rxdata` is compiled from [my fork](https://github.com/popkirby/synglechance) of Vinyl Darkscratch's
[singlechance](https://github.com/vinyldarkscratch/synglechance),
which is a fork of OneShot's game engine [mkxp-oneshot](https://github.com/elizagamedev/mkxp-oneshot).

`_______.app` is compiled from [my fork](https://github.com/popkirby/OneShot-Journal) of Isaac Smith's
[reimplementation](https://github.com/hunternet93/OneShot-Journal).


## License

bin/upx: https://github.com/upx/upx

The Ultimate Packer for eXecutables
Copyright (c) 1996-2017 Markus Oberhumer, Laszlo Molnar & John Reiser.
Licensed under GPL with exceptions.
License is under `LICENSE/upx.txt`.

bin/convert: https://github.com/ImageMagick/ImageMagick

ImageMagick, Copyright 1999-2018 ImageMagick Studio LLC, a non-profit organization dedicated to making software imaging solutions freely available.
License is under `LICENSE/imagemagick.txt`.
