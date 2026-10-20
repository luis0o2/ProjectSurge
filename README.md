# Project Surge

Rojo project for Roblox place 86553638021727.

Install [Rojo 7.7.1](https://github.com/rojo-rbx/rojo/releases/tag/v7.7.1), put `rojo.exe` on your PATH, and run `rojo plugin install` to install the matching Studio plugin. Reopen your Studio place after installing the plugin.

Clone your fork, open PowerShell in the project folder, and run `./Start-Rojo.ps1`. Then connect the Rojo plugin in Studio to `127.0.0.1:34872`.

The project currently contains the Rojo setup and empty source folders. It does not include a Studio map export. The configuration allows syncing only to place 86553638021727; to use a separate place, change `servePlaceIds` in `default.project.json` to that place's ID.

- `src/shared`: shared ModuleScripts in ReplicatedStorage.ProjectSurge.
- `src/server`: server code in ServerScriptService.ProjectSurge.
- `src/client`: client code in StarterPlayer.StarterPlayerScripts.ProjectSurge.

Use `.server.luau` for Scripts, `.client.luau` for LocalScripts, and `.luau` for ModuleScripts. Changes to local files sync into Studio. Existing objects outside the three ProjectSurge folders are preserved. Studio saving and publishing remain separate actions.
