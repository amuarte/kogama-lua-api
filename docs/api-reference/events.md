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
    print("Cube removed!")
end)
```

---

## See Also

- [Cubes API](cubes/index.md) - Cube manipulation
- [Getting Started](../getting-started.md) - Scripting basics
