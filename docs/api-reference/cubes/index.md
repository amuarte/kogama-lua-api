# Cubes

Complete guide to cube manipulation in Kogama Lua API.

---

## Creating Cubes

### `new_cube([id])`

Creates a new cube.

**Parameters:**
- `id` (optional, number) - Model ID. If omitted, adds cube to currently edited model.

**Returns:** Cube object

**Example:**
```lua
local cube = new_cube()
cube.position = {0, 0, 0}
cube.materials[1] = 1
```

---

## Getting Cubes

### `get_cube(position)`

Returns cube at specified position or `nil` if not found.

**Example:**
```lua
local cube = get_cube({5, 10, 3})
if cube then
    print("Found cube at position!")
end
```

### `get_cubes([id])`

Returns all cubes from a model. If `id` is omitted, returns cubes from currently edited model.

**Example:**
```lua
local cubes = get_cubes()
for i, cube in ipairs(cubes) do
    print("Cube at:", cube.position[1], cube.position[2], cube.position[3])
end
```

---

## Removing Cubes

### `remove_cube(position)`

Removes cube at specified position.

**Returns:**
- `true` - Cube was removed
- `false` - No cube at position
- `nil` - Error occurred

**Example:**
```lua
if remove_cube({0, 0, 0}) then
    print("Cube removed!")
end
```

---

## Cube Properties

### `position`

Position as `{x, y, z}` (integer coordinates).
```lua
cube.position = {5, 10, 3}
```

### `materials[1-6]`

Material ID for each face.
```lua
cube.materials[1] = 1  -- Top face: Bright Red
cube.materials[2] = 2  -- Bottom face: Red
```

📖 [Learn more about materials →](properties.md#materials)

### `corners[1-8]`

Vertex positions for cube deformation. Each corner is `{x, y, z}` with values 0-4 (integers).
```lua
cube.corners[1] = {0, 4, 0}  -- Default top-left-front
cube.corners[1] = {0, 4, 2}  -- Deform upward
```

📖 [Learn more about corners →](properties.md#corners)

---

## See Also

- [Cube Properties](properties.md) - Detailed reference for position, materials, and corners
- [Materials Reference](../../reference/materials.md) - All material IDs with previews
