# Session Storage

Store data temporarily during your game session.

---

## Overview

The `session` table provides temporary data storage that persists as long as you're in the game. All data is reset when you close the game.

**Important:** Session data is not saved to disk - it's only available while playing.

---

## Basic Usage

```lua
session.my_value = 42
session.my_string = "Hello"
```

---

## See Also

- [Getting Started](../getting-started.md) - Scripting basics
