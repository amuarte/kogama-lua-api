# Camera
Control the camera view and movement.

---

## `camera.mode`
Sets the camera control mode.

**Values:**
- `"default"` - Standard camera mode
- `"free"` - Free camera mode with manual control

**Example:**
```lua
camera.mode = "free"
```

---

## `camera.move_speed`
Sets the movement speed in free camera mode.

**Type:** number

**Example:**
```lua
camera.mode = "free"
camera.move_speed = 10
```

---

## `camera.look_speed`
Sets the look/rotation speed in free camera mode.

**Type:** number

**Example:**
```lua
camera.mode = "free"
camera.look_speed = 5
```

---

## See Also
- [Getting Started](../getting-started.md) - Scripting basics
