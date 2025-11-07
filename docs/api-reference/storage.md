# Session Storage

Store data temporarily during your game session.

---

## Overview

The `session` table provides temporary data storage that persists as long as you're in the game. All data is reset when you close the game.

**Important:** Session data is not saved to disk - it's only available while playing.

---

## Basic Usage

```lua
-- Store values
session.my_value = 42
session.my_string = "Hello"
session.my_table = {x = 10, y = 20}

-- Read values
print(session.my_value)
print(session.my_string)
```

---

## Examples

### Simple counter

```lua
session.cube_count = 0

local cube = new_cube()
cube.position = {0, 0, 0}
cube:spawn()

session.cube_count = session.cube_count + 1
print("Total cubes: " .. session.cube_count)
```

### Store game state

```lua
session.game_state = {
    difficulty = "hard",
    spawn_delay = 0.5,
    max_cubes = 100
}

print("Difficulty: " .. session.game_state.difficulty)
```

### Check if value exists

```lua
if session.initialized then
    print("Already initialized!")
else
    session.initialized = true
    print("First run!")
end
```

---

## See Also

- [Getting Started](../getting-started.md) - Scripting basics
- [File System](filesystem.md) - Persistent file storage
