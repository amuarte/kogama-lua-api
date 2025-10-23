# KogamaTools + Lua API

Lua scripting mod for KoGaMa

⚠️ **Early alpha - expect bugs and changes**

---

# Contents
1. [Introduction](#kogamatools--lua-api)
2. [Features](#features)
3. [Requirements](#requirements)
4. [Installation](#installation)
5. [Quick Start](#quick-start)
6. [Known Issues](#known-issues-v01)
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
2. Download the latest release of KogamaTools+LuaAPI [here](https://github.com/amuarte/kogama-lua-api/releases/latest)
3. Open the installer and click the **"Browse"** button next to the `Mod Path` field
4. Locate the downloaded ZIP file and select it. <mark>You do not need to extract the zip file.</mark>
5. Select your game server and click **"Install"**
6. Launch the game via the standalone client. <mark>The first launch may take 30 seconds to 2 minutes. Don't worry if it seems frozen.</mark>
7. Join any game - the KogamaTools GUI with Lua support should appear after loading

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

3. **Install KogamaTools + Lua API**  
   - Download the latest release from [here](https://github.com/amuarte/kogama-lua-api/releases/latest)
   - Extract the ZIP contents into the `BepInEx/plugins/` folder
   - The folder structure should look like:
```
     BepInEx/plugins/
     ├── KogamaTools.dll
     ├── NLua.dll
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
   - The KogamaTools overlay should appear after the loading screen
   - You can now load scripts with `/loadscript <filename>`

⚠️ **Note:** This mod replaces the original KogamaTools. Do not install both at the same time.

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

# **Known Issues v0.1**

⚠️ **Current Limitations:**
- Console log formatting may display color tags incorrectly
- Object position cannot be changed after creation
- Some object property queries may return outdated data

These issues will be addressed in future updates.

---

# **Used Libraries**

- [BepInEx](https://github.com/BepInEx/BepInEx) - *Licensed under the [LGPL-2.1 license](https://opensource.org/licenses/LGPL-2.1)*
- [ClickableTransparentOverlay](https://github.com/zaafar/ClickableTransparentOverlay) - *Licensed under the [Apache-2.0 License](https://opensource.org/licenses/Apache-2.0)*
- [ImGui](https://github.com/ocornut/imgui) - *Licensed under the [MIT license](https://opensource.org/licenses/MIT)*
- [NativeFileDialogSharp](https://github.com/milleniumbug/NativeFileDialogSharp) - *Licensed under the [Zlib license](https://opensource.org/licenses/Zlib)*
- [ParsingHelper](https://github.com/SoftCircuits/ParsingHelper) - *Licensed under the [MIT license](https://opensource.org/licenses/MIT)*
- [NLua](https://github.com/NLua/NLua) - *Licensed under the [MIT license](https://opensource.org/licenses/MIT)*

---

# **Credits**

Based on [KogamaTools](https://github.com/Beckowl/KogamaTools) by Beckowl (Zlib license)  
Lua scripting API by amuarte

---

## **Need Help?**

- 📖 [Full API Documentation](DOCUMENTATION.md)
- 🐛 [Report Issues](https://github.com/amuarte/kogama-lua-api/issues)
- 💬 [KogamaTools Discord](https://discord.gg/aP2JYAzZg8) for general support
