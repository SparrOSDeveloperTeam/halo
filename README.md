# Halo Portable Edition creator

Create a portable version of Halo that can fit on a flash drive.

## Compatiblility info

Works on Windows 2000 Pro and later.

## Tools used

* CDMenuPro V6 for the USB menu
* ShellExec for Rundll
* Resource Hacker to grab the menu/sounds for autorun menu
* CabMaker GUI for making the cab files
* Quicktime for the file conversions
* RAD Game Tools' Bink for the new cutscenes
* Kdenlive for creating the video
* GNUPaint for creating the card
* Inno Setup Compiler for creating the setup
* Expand.exe, Makecab.exe, and Mkisofs.exe for Creating/Extracting cabs and making a ISO
* 7-Zip and un7zip.exe for 7z tools
* Halo Dedicated Server (useless these days but whatever people want)
* VB.Net 2005 for the Builder menu
* Bat2Exe 2.4.7 for creating exes outta batches

## Dependencies

* Halo Combat Evolved original CD-ROM
* USB Flash Drive (1GiB or bigger)
* [.Net 3.5 Framework](https://www.microsoft.com/en-us/download/details.aspx?id=25150).

## How to use

After you install Halo Portable Edition creator, click on the maker shortcut and choose to build Halo Portable Edition. Next, press 'Create Game' button on the builder menu. The builder will create a Command Prompt window asking you where the files are. You must then specify where the Halo game files are located (the default location is `source\` in the builder's folder). Specify the folder where Halo's setup.exe file exists, then the builder will install the game to a folder. During extraction, you will be asked if you would like to install our patches (such as a patched Halo exe, dedicated server, autorun.inf for flashdrive, etc.). If you decide you do not want the patches, you will have to clean the folder (via pressing 'Clean Cache' button) After the game is installed and extracted to the folder, you will be prompted if you want to make the flash drive or make an iso for later use. If you choose to make a flash drive, plug the flashdrive into the machine and speify the target drive (e.g. `F:`) and the builder will create the drive. If you decide to make a flash drive later, you can press 'Make Flashdrive' which will ask you the target drive. Then it will extract the CD and dump the files to the drive. If you would like to reset everything and create a new Halo Portable Edition set, press 'Clear Cache' button.

## Downloads

* [Halo PEM Setup x86_32/64](#)
