# Objects
Complete guide to object manipulation in Kogama Lua API.

---

## Creating Objects
### `new_object(type)`
Creates a new game object and returns an object instance.

**Parameters:**
- `type` (number) - Object type enum (e.g., `OBJECTS.TEXT`, `OBJECTS.BAZOOKA`)

**Returns:** Object or `nil` on error

**Important:** Position must be set immediately after creation and cannot be changed later.

**Example:**
```lua
local obj = new_object(OBJECTS.TEXT)
obj.position = {0, 5, 0}
obj:spawn()
```

---

## Linking Objects
### `link(obj1, obj2)`
Links obj1 output to obj2 input.

**Example:**
```lua
link(obj1, obj2)
```

---

## See Also
- [Object Types Reference](../../reference/object-types.md) - Complete list of spawnable objects
