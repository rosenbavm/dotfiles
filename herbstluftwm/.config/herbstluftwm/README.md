Requirements
------------

These scripts assume *~/.local/bin* is in the $PATH environment variable, as it places a symbolic link to hwsh at this location.

Custom services
---------------

The script attempts to run

	~/.config/herbstluftwm/services

on startup.

Custom commands
---------------

Place custom commands in the *commands* directory.  The example script included gives a basic template.  In particular, note that it uses the hwsh environment.  Also, the *keybind* variable must be set, with no spaces.  The autostart script automatically reads these files and binds the keys.
