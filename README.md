# SystemAgent - Base system port

This is the project for SystemAgent compatible SBCs.

## How to build the same image

* Clone buildroot repository.
* Run `buildroot_make.sh xxxx_defconfig` (see `external_tree/configs`).
* Run `buildroot_make.sh nconfig` to make your changes.
* Run `buildroot_make.sh` to start your runs.

## Necessary modifications
### Add new users
Edit users.table in `external_tree/customizations` directory.

### Copy whatever you want into the filesystem
Add them to the `external_tree/customizations/overlay` directory, if the directory does not exist, create it.

