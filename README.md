# KogamaTools + Lua API

Lua scripting mod for KoGaMa

⚠️ **Early alpha - expect bugs and changes**

---

## **Features**

- 🧊 Create and modify cubes programmatically
- 🎮 Spawn and control game objects
- ⚡ Event handlers (cube removal, etc.)
- 📁 File loading (text, images)
- 💾 Session storage
- 📜 Load scripts with `/loadscript`

## **Requirements**

Same as [KogamaTools](https://github.com/Beckowl/KogamaTools):
- [KoGaMa Standalone Client](https://www-gamelauncher.kogstatic.com/www/KogamaLauncher.msi)  
- [BepInEx 6.0.0-be](https://builds.bepinex.dev/projects/bepinex_be)  
- [.NET 6.0 Runtime](https://dotnet.microsoft.com/download/dotnet/6.0)

---

## **Installation**

### 🚀 **Easy Method (Installer)**
1. Download [KogamaMod Installer](https://github.com/Beckowl/KogamaModInstaller/releases/latest)
2. Download [KogamaTools+LuaAPI](https://github.com/amuarte/kogama-lua/releases/latest)
3. Open installer, browse to the downloaded ZIP
4. Select server and install
5. Join any game - GUI appears after loading

## **Quick Start**

Create `scripts/test.lua`:
```lua
local cube = new_cube()
cube.position = {0, 0, 0}
cube.materials[1] = 5

local obj = new_object("text")
obj.position = {5, 2, 5}
obj.text = "Hello Lua!"
```

Load with `/loadscript test.lua`

See [DOCUMENTATION.md](DOCUMENTATION.md) for full API reference.

---

## **Known Issues v0.1**

⚠️ Log formatting may appear broken  
⚠️ `obj.position` is read-only after object creation  

---

Based on [KogamaTools](https://github.com/Beckowl/KogamaTools) by Beckowl (Zlib license)  
Lua API by amuarte

**Libraries used:**
- [BepInEx](https://github.com/BepInEx/BepInEx) - *Licensed under the [LGPL-2.1 license](https://opensource.org/licenses/LGPL-2.1)*
- [ClickableTransparentOverlay](https://github.com/zaafar/ClickableTransparentOverlay) - *Licensed under the [Apache-2.0 License](https://opensource.org/licenses/Apache-2.0)*
- [ImGui](https://github.com/ocornut/imgui) - *Licensed under the [MIT license](https://opensource.org/licenses/MIT)*
- [NativeFileDialogSharp](https://github.com/milleniumbug/NativeFileDialogSharp) - *Licensed under the [Zlib license](https://opensource.org/licenses/Zlib)*
- [ParsingHelper](https://github.com/SoftCircuits/ParsingHelper) - *Licensed under the [MIT license](https://opensource.org/licenses/MIT)*
- [NLua](https://github.com/NLua/NLua) - *Licensed under the [MIT license](https://opensource.org/licenses/MIT)*

---

## **Need Help?**

- 📖 [Full Documentation](DOCUMENTATION.md)
- 🐛 [Report Issues](https://github.com/amuarte/kogama-lua-api/issues)
- 💬 [KogamaTools Discord](https://discord.gg/aP2JYAzZg8)
