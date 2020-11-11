# intellij-config

Config files for [IntelliJ IDEA](https://www.jetbrains.com/idea/) version 2020.2.

## Notable Changes

Notable changes compared to the default settings on a fresh installation:

- Uses MacOS keymap, even on Linux (which makes it more familiar inside VNC)
- Adds Google code style as default style
- Adds Vim plugin
- Adds SaveActions and configures it to Optimize Imports on save
- Turns on annotation processing (e.g. for Immutables, Lombok)

And a handful of other smaller changes, such as:
- Add unambiguous imports on the fly
- Open projects in new windows
- Turn off tooltips

## Installation

Close IntelliJ IDEA and symlink the files to the proper places with:

```
./setup_symlinks.sh
```
