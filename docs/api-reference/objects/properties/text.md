# Text Object Properties
Properties for `OBJECTS.TEXT` objects.

---

## `obj.text`
Sets the displayed text content.

**Type:** string

---

## `obj.color`
Sets the text color using RGB values.

**Type:** table `{r, g, b}` - Values 0-1

---

## `obj.size`
Sets the text size.

**Type:** number

---

## `obj.billboard`
Controls whether the text always faces the camera.

**Type:** boolean

---

## Example
```lua
local textObj = new_object(OBJECTS.TEXT)
textObj.position = {0, 5, 0}
textObj.text = "Hello World!"
textObj.color = {1, 0, 0}
textObj.size = 2.5
textObj.billboard = true
textObj:spawn()
```

---

## See Also
- [Objects API](../index.md) - Object creation
- [Object Types Reference](../../../reference/object-types.md) - All object types
