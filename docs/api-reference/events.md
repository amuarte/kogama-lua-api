# Event Handlers

React to game events with callbacks.

---

## `on_cube_removed(callback)`

Registers a callback function that triggers when a cube is removed.

**Parameters:**
- `callback` (function) - Function to call when cube is removed
  - Receives the removed cube object as parameter

**Returns:** None

**Example:**
```lua
on_cube_removed(function(cube)
    print("Cube removed at position: " ..
          cube.position[1] .. ", " ..
          cube.position[2] .. ", " ..
          cube.position[3])
end)
```

---

## Practical Examples

### Track removed cubes count

```lua
local removed_count = 0

on_cube_removed(function(cube)
    removed_count = removed_count + 1
    print("Total removed: " .. removed_count)
end)
```

### Log removal to file

```lua
on_cube_removed(function(cube)
    local log_entry = "Removed: " .. cube.position[1] .. "," ..
                      cube.position[2] .. "," .. cube.position[3]
    print(log_entry)
end)
```

### Spawn new cube when one is removed

```lua
on_cube_removed(function(cube)
    local new_cube = new_cube()
    new_cube.position = cube.position
    new_cube.material = 22  -- Concrete
    new_cube:spawn()
end)
```

---

## See Also

- [Cubes API](cubes/index.md) - Cube manipulation
- [Getting Started](../getting-started.md) - Scripting basics
