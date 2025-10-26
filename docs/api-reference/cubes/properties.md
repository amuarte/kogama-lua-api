## Materials

### Face Indices

Each cube has 6 faces corresponding to coordinate axes:

| Index | Axis | Direction |
|:-----:|:----:|:----------|
| 1 | +Y | Top |
| 2 | -Y | Bottom |
| 3 | -Z | Front |
| 4 | +Z | Back |
| 5 | -X | Left |
| 6 | +X | Right |

**Example:**
```lua
cube.materials[1] = 11  -- Top: Bright Green
cube.materials[2] = 13  -- Bottom: Dark Green
cube.materials[3] = 6   -- Front: Bright Blue
cube.materials[4] = 8   -- Back: Dark Blue
cube.materials[5] = 1   -- Left: Bright Red
cube.materials[6] = 3   -- Right: Dark Red
```

### Material IDs

Material IDs range from **1 to 69**.

**Default material:** ID `22` (Concrete)
- Used when invalid ID is provided
- Used when player doesn't own the material

See [Materials Reference](../../reference/materials.md) for complete list with previews.

---

## Corners

Vertex manipulation for cube deformation.

### Corner Indices

Each cube has 8 vertices (corners), indexed 1-8, in a local 5×5×5 space.

**Value range:** x, y, z must be integers from **0 to 4**

### Default State (Undeformed Cube)
```lua
cube.corners[1] = {0, 4, 0}  -- Left-Top-Front
cube.corners[2] = {0, 4, 4}  -- Left-Top-Back
cube.corners[3] = {4, 4, 4}  -- Right-Top-Back
cube.corners[4] = {4, 4, 0}  -- Right-Top-Front
cube.corners[5] = {4, 0, 0}  -- Right-Bottom-Front
cube.corners[6] = {4, 0, 4}  -- Right-Bottom-Back
cube.corners[7] = {0, 0, 4}  -- Left-Bottom-Back
cube.corners[8] = {0, 0, 0}  -- Left-Bottom-Front
```

⚠️ **Note:** There is no reset function - you must manually set corners to default values.

### Example
```lua
local cube = new_cube()
cube.position = {0, 0, 0}

-- Deform top-left corner upward
cube.corners[1] = {0, 4, 2}

-- Create a sloped surface
cube.corners[4] = {4, 2, 0}
```
