# Usage

## MyPi

```
MyPi, My Tools:
	target: what should we do ? [one of 'add-fstab' 'install' 'nfs-export' 'updater']
Usage :
	MyPi <target>
```

## MyPi add-fstab

```
MyPi sub command help
	
add line to fstab
 external ntfs drive eg:
	PARTUUID=<partition uuid> /media/my_drive     ntfs-3g    nofail,uid=1000,gid=1000  0       0:
	--config <config>: config file path [default: ' __home__/.config/MyPi ']
	-l, --line <line>: /etc/fstab entry, repeatable
	--file-system|--fs <file-system>: The device or file system to be mounted, repeatable
	--mount-point|--mount <mount-point>: The directory where the file system should be mounted, repeatable
	--type <type>: The type of file system, repeatable
	--options <options>: The mount options for the file system, repeatable
	--dump <dump>: This field is used by the dump, 0 to disable, repeatable
	--pass <pass>: This field is used by the fsck, 0 to disable, repeatable
	--use-config|--no-use-config: use a config file, on by default (use --no-use-config to turn it off)
		no-aliases: --no-config,
Usage :
	MyPi add-fstab [--config <value>] [--line <value>] [--file-system <value>] [--mount-point <value>] [--type <value>] [--options <value>] [--dump <value>] [--pass <value>] [--[no-]use-config]
```

## MyPi install

```
MyPi sub command help
	
install packages from various sources defined in a config file:
	target: subcommand, optional [one of 'apt' 'docker' 'docker-cmd' 'git' 'omz']
	--config <config>: config file [default: ' __home__/.config/MyPi ']
	-a, --apt <apt>: apt package to install, repeatable
	-g, --git <git>: git repo to clone, repeatable
	--git-clone-dir|--clone-dir|--gcd <git-clone-dir>: specify cloning directory, all repo with specific directory must be specify first and index must match with --git, repeatable
	-d, --docker <docker>: docker command to execute, repeatable
	--mkdir <mkdir>: mkdir duh !, repeatable
	--mkdir-opt <mkdir-opt>: mkdir options, repeatable
	--fstab <fstab>: add line to fstab, repeatable
	--nfs-export <nfs-export>: line to add to /etc/exports, repeatable
	--post-install <post-install>: post install script path, repeatable
	--omz-plugin <omz-plugin>: enable omz plugin, repeatable
	--apt-cmd <apt-cmd>: custom apt command, every option must be specified separatly, repeatable
	--desktop|--de <desktop>: desktop package to install [default: ' mate ']
	--apt-install|--no-apt-install: perform apt install, on by default (use --no-apt-install to turn it off)
		no-aliases: --no-apt,
	--git-install|--no-git-install: perform git repos installation, on by default (use --no-git-install to turn it off)
	--install-docker|--no-install-docker: install docker and docker compose, on by default (use --no-install-docker to turn it off)
	--docker-install|--no-docker-install: perform docker install
	--install-nfs|--no-install-nfs: install nfs server, on by default (use --no-install-nfs to turn it off)
	--reboot|--no-reboot: reboot when done, on by default (use --no-reboot to turn it off)
	--install-omz|--no-install-omz: install oh-my-zsh, on by default (use --no-install-omz to turn it off)
	--install-desktop|--no-install-desktop: install a desktop environment, on by default (use --no-install-desktop to turn it off)
		no-aliases: --no-desktop, --no-de,
Usage :
	MyPi install [target] [--config <value>] [--apt <value>] [--git <value>] [--git-clone-dir <value>] [--docker <value>] [--mkdir <value>] [--mkdir-opt <value>] [--fstab <value>] [--nfs-export <value>] [--post-install <value>] [--omz-plugin <value>] [--apt-cmd <value>] [--desktop <value>] [--[no-]apt-install] [--[no-]git-install] [--[no-]install-docker] [--[no-]docker-install] [--[no-]install-nfs] [--[no-]reboot] [--[no-]install-omz] [--[no-]install-desktop]
```

#### MyPi install apt

```
install using apt:
	--cmd <cmd>: apt command, repeatable
	-p, --package <package>: package to install, repeatable
	--config <config>: config file path [default: ' __home__/.config/MyPi ']
	--use-config|--no-use-config: use a config file, on by default (use --no-use-config to turn it off)
		no-aliases: --no-config,
Usage :
	MyPi install apt [--cmd <value>] [--package <value>] [--config <value>] [--[no-]use-config]
```

#### MyPi install docker

```
install docker:
	--config <config>: config file path [default: ' __home__/.config/MyPi ']
	--use-config|--no-use-config: use a config file, on by default (use --no-use-config to turn it off)
		no-aliases: --no-config,
Usage :
	MyPi install docker [--config <value>] [--[no-]use-config]
```

#### MyPi install docker-cmd

```
run docker command:
	--config <config>: config file path [default: ' __home__/.config/MyPi ']
	-c, --cmd <cmd>: docker command, repeatable
	--use-config|--no-use-config: use a config file, on by default (use --no-use-config to turn it off)
		no-aliases: --no-config,
Usage :
	MyPi install docker-cmd [--config <value>] [--cmd <value>] [--[no-]use-config]
```

#### MyPi install git

```
install using git:
	-r, --repo <repo>: repo url, repeatable
	-d, --directory <directory>: clone to
	--config <config>: config file path [default: ' __home__/.config/MyPi ']
	--use-config|--no-use-config: use a config file, on by default (use --no-use-config to turn it off)
		no-aliases: --no-config,
Usage :
	MyPi install git [--repo <value>] [--directory <value>] [--config <value>] [--[no-]use-config]
```

#### MyPi install omz

```
install oh my zsh:
	--config <config>: config file path [default: ' __home__/.config/MyPi ']
	-p, --plugin <plugin>: plugin to enable, repeatable
	--use-config|--no-use-config: use a config file, on by default (use --no-use-config to turn it off)
		no-aliases: --no-config,
Usage :
	MyPi install omz [--config <value>] [--plugin <value>] [--[no-]use-config]
```

### MyPi mesure

```
I send an SOS to the world:
	target: mesure what [one of 'cpu' 'gpu' 'ram']
Usage :
	MyPi mesure <target>
```

### MyPi mesure cpu

```
MyPi mesure sub command help
	
I send an SOS to the world:
	target: cpu mesure [one of 'temperature' 'temp' 'voltage' 'volt' 'frequency' 'freq' 'clock' 'ram' 'mem' 'memory']
Usage :
	MyPi mesure cpu <target>
```

### MyPi mesure gpu

```
MyPi mesure sub command help
	
I send an SOS to the world:
	target: cpu mesure [one of 'ram' 'voltage' 'volt' 'frequency' 'freq' 'clock']
Usage :
	MyPi mesure gpu <target>
```

### MyPi mesure ram

```
MyPi mesure sub command help
	
I send an SOS to the world:
	target: ram mesure, optional [one of 'cpu' 'arm' 'gpu']
Usage :
	MyPi mesure ram [target]
```

## MyPi nfs-export

```
MyPi sub command help
	
add nfs export:
	--config <config>: config file path [default: ' __home__/.config/MyPi ']
	-e, --export <export>: /etc/exports entry, repeatable
	-d, --directory <directory>: The directory that you want to share via NFS., repeatable
	-i, --host|--ip <host>: IP address or hostname of the client that you want to grant access , repeatable
	-0, --options <options>: The options for the NFS share, repeatable
	--use-config|--no-use-config: use a config file, on by default (use --no-use-config to turn it off)
		no-aliases: --no-config,
Usage :
	MyPi nfs-export [--config <value>] [--export <value>] [--directory <value>] [--host <value>] [--options <value>] [--[no-]use-config]
```

## MyPi updater

```
MyPi sub command help
	
update everything:
	--config <config>: config file path [default: ' __home__/.config/MyPi ']
	--shutdown <shutdown>: shutdown, can be empty [empty value: 'now']
	--use-config|--no-use-config: use a config file, on by default (use --no-use-config to turn it off)
		no-aliases: --no-config,
	--apt|--no-apt: update apt, on by default (use --no-apt to turn it off)
	--git|--no-git: update git repo, on by default (use --no-git to turn it off)
	--docker|--no-docker: pull docker images, on by default (use --no-docker to turn it off)
	--dist-upgrade|--no-dist-upgrade: apt dist-upgrade, on by default (use --no-dist-upgrade to turn it off)
	--apt-clean|--no-apt-clean: autoremove && clean, on by default (use --no-apt-clean to turn it off)
	--reboot|--no-reboot: reboot, on by default (use --no-reboot to turn it off)
Usage :
	MyPi updater [--config <value>] [--shutdown <value>] [--[no-]use-config] [--[no-]apt] [--[no-]git] [--[no-]docker] [--[no-]dist-upgrade] [--[no-]apt-clean] [--[no-]reboot]
```
