# Call of Duty 4 vision script commands
Features 3 basic vision commands that can be used with BigBrotherBot or/and in-game commands. Includes Fullbright, Promod and Field of View commands.

## Installation:
* Place script files in "main_shared" folder in your CoD4 server directory
* Enable custom commands plugin in your B3 config file
* Add following lines to your B3 custom commands plugin:
```
fps = cmd fps:<PLAYER:PID>
fov = cmd fov:<PLAYER:PID>
promod = cmd promod:<PLAYER:PID>
```

## Disabling in-game command support:
* Comment out or increase "COMMAND_POWER" in following lines: [scriptcommands.gsx](https://github.com/leiizko/cod4_scriptcommands/blob/master/code/scriptcommands.gsx#L14-L16)

## Including in your own mod:
* Include "CODE" directory to your mod
* Following lines need to be added to your _callbacksetup script file:
  * [callbacksetup.gsx#L15](https://github.com/leiizko/cod4_scriptcommands/blob/master/maps/mp/gametypes/_callbacksetup.gsx#L15)
  * [callbacksetup.gsx#L141-L148](https://github.com/leiizko/cod4_scriptcommands/blob/master/maps/mp/gametypes/_callbacksetup.gsx#L141-L148)
