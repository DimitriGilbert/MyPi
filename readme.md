# MyPi

My Quality of Life tools for my Pi "homelab".
Install, update, maybe more stuff don't know, we'll see ^^.

## Installation

An installation script is provided

```bash
# download the script
curl -s https://raw.githubusercontent.com/DimitriGilbert/MyPi/main/utils/get_MyPi -O;
# make it executable
chmod +x get_MyPi;
# display the help
./get_MyPi --help;
#	-b, --branch|--tag|--install-version <branch>: version to install
#	--install-directory <install-directory>: where to install
#	--install-file <install-file>: rc files to install to, forces install, repeatable
#	-i|--install|--no-install: install in bashrc
#	--remove-installer|--no-remove-installer: remove install script itself
#	aliases: --rm,
#	--ssh|--no-ssh: clone using ssh
#	--zip|--no-zip: install using zip archive, not recommended

# generic install
./get_MyPi --install;
```