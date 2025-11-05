# KogamaLuaAPI

Standalone Lua scripting mod for KoGaMa

⚠️ **Early alpha - expect bugs and changes**

---

# Contents
1. [Introduction](#kogamaluaapi)
2. [Features](#features)
3. [Requirements](#requirements)
4. [Installation](#installation)
5. [Quick Start](#quick-start)
6. [Known Issues](#known-issues)
7. [Used Libraries](#used-libraries)
8. [Help](#need-help)

---

# **Features**

## 📜 **Lua Scripting**

- **Cube Manipulation**:
  - Create cubes programmatically
  - Modify positions, materials, and corners
  - Query existing cubes
  - Remove cubes dynamically

- **Object Control**:
  - Spawn game objects (text, doors, logic gates, etc.)
  - Configure object properties
  - Link objects together
  - Event-driven programming

- **File System**:
  - Load Lua scripts with `/loadscript`
  - Read text files
  - Load and process images
  - Auto-load `init.lua` on startup

- **Data Storage**:
  - Session storage for runtime data
  - Organize data with nested tables

- **Event Handlers**:
  - React to cube removal
  - Custom game logic

---

# **Requirements**

- [KoGaMa Standalone Client](https://www-gamelauncher.kogstatic.com/www/KogamaLauncher.msi)  
- [BepInEx 6.0.0-be](https://builds.bepinex.dev/projects/bepinex_be)  
- [.NET 6.0 Runtime](https://dotnet.microsoft.com/download/dotnet/6.0)  

---

# **Installation**

## 🚀 **Easy Method (Installer)**

1. Download the latest release of the mod installer [here](https://github.com/Beckowl/KogamaModInstaller/releases/latest)
2. Download the latest release of KogamaLuaAPI [here](https://github.com/amuarte/kogama-lua-api/releases/latest)
3. Open the installer and click the **"Browse"** button next to the `Mod Path` field
4. Locate the downloaded ZIP file and select it. <mark>You do not need to extract the zip file.</mark>
5. Select your game server and click **"Install"**
6. Launch the game via the standalone client. <mark>The first launch may take 30 seconds to 2 minutes. Don't worry if it seems frozen.</mark>
7. Join any game - the mod should load after the loading screen

---

## 🛠️ **Manual Installation**

1. **Locate Your Installation Folder**  
   Navigate to the folder for your server:
   - **KoGaMa-WWW**:  
```
     %localappdata%/KogamaLauncher-WWW/Launcher/Standalone
```
   - **KoGaMa-BR**:  
```
     %localappdata%/KogamaLauncher-BR/Launcher/Standalone
```
   - **KoGaMa-Friends**:  
```
     %localappdata%/KogamaLauncher-Friends/Launcher/Standalone
```

2. **Install BepInEx**  
   - Download [BepInEx 6.0.0-be](https://builds.bepinex.dev/projects/bepinex_be)
   - Extract all contents into the folder from Step 1
   - Run `Kogama.exe` once
   - A console window should appear - this means BepInEx installed successfully
   - Wait for the interop assemblies to generate, then close the game

3. **Install KogamaLuaAPI**  
   - Download the latest release from [here](https://github.com/amuarte/kogama-lua-api/releases/latest)
   - Extract the ZIP contents into the `BepInEx/plugins/` folder
   - The folder structure should look like:
```
     BepInEx/plugins/
     ├── KogamaLuaAPI.dll
     ├── NLua.dll
     ├── KeraLua.dll
     └── (other dependency files)
```

4. **Create Scripts Folder**  
   Navigate to: `BepInEx/plugins/` and create a folder named `scripts`
   
   Full path example:
```
   %localappdata%/KogamaLauncher-WWW/Launcher/Standalone/BepInEx/plugins/scripts
```

5. **Start KoGaMa**  
   - Launch the game and join any project
   - You can now load scripts with `/loadscript <filename>`

✅ **Works standalone or alongside KogamaTools!**

---

# **Quick Start**

1. **Create your first script**  
   In the `scripts/` folder, create a file named `test.lua`:
```lua
-- Create a cube
local cube = new_cube()
cube.position = {0, 0, 0}
cube.materials[1] = 5

-- Create a text object
local obj = new_object("text")
obj.position = {5, 2, 5}
obj.text = "Hello Lua!"
obj.billboard = true
```

2. **Load the script in-game**  
   Open the game console and type:
```
   /loadscript test.lua
```

3. **Learn more**  
   Check out the [full API documentation](DOCUMENTATION.md) for all available functions and features.

---

# **Known Issues**

⚠️ **Current Limitations:**
- Object position cannot be changed after creation
- Some object property queries may return outdated data

These issues will be addressed in future updates.

---

# **Used Libraries**

- [BepInEx](https://github.com/BepInEx/BepInEx) - *LGPL-2.1 license*
- [HarmonyX](https://github.com/BepInEx/HarmonyX) - *MIT license*
- [Il2CppInterop](https://github.com/BepInEx/Il2CppInterop) - *LGPL-3.0 license*
- [NLua](https://github.com/NLua/NLua) - *MIT license*
- [KeraLua](https://github.com/NLua/KeraLua) - *MIT license*
- [NativeFileDialogSharp](https://github.com/milleniumbug/NativeFileDialogSharp) - *Zlib license*
- [ParsingHelper](https://github.com/SoftCircuits/ParsingHelper) - *MIT license*

---

# **Credits**

Includes code from [KogamaTools](https://github.com/Beckowl/KogamaTools) by Beckowl (Zlib license)  
Lua scripting API by amuarte

---

# **Community & Support**

Join our Discord server for help, sharing scripts, bug reports, and updates!

**[Join Discord Server](https://discord.gg/u6tKuP3k4M)**
