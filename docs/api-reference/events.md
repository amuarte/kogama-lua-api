# Event Handlers
React to game events with callbacks.

---

## `on_cube_removed(callback)`
Registers a callback function that triggers when a cube is removed from the world.

**Parameters:**
- `callback` (function) - Function called when a cube is removed
  - Receives `cube` (object) - The removed cube object as parameter

**Returns:** None

**Example:**
```lua
on_cube_removed(function(cube)
    print("Cube removed at position: " .. cube.x .. ", " .. cube.y .. ", " .. cube.z)
end)
```

---

## `on_command(command, callback)`
Registers a callback function that triggers when a specific command is entered.

**Parameters:**
- `command` (string) - The command name to listen for
- `callback` (function) - Function called when the command is executed
  - Receives `args` (table) - Arguments passed with the command

**Returns:** None

**Example:**
```lua
on_command("hello", function(args)
    print("Hello command executed!")
    if args[1] then
        print("First argument: " .. args[1])
    end
end)
```

---

## See Also
- [Cubes API](cubes/index.md) - Cube manipulation
- [Getting Started](../getting-started.md) - Scripting basics
