--- KogamaLuaAPI Type Definitions
--- Complete type definitions for KogamaLuaAPI Lua scripting
--- Copy this file to your project for IDE autocomplete support

---@diagnostic disable:undefined-doc-name,lowercase-global

---@class Cube
---@field position table Position as {x, y, z}
---@field materials table[] Material IDs for each face (1-6)
---@field corners table[] Vertex positions for deformation (1-8)
---@field x number X coordinate (read-only, from position[1])
---@field y number Y coordinate (read-only, from position[2])
---@field z number Z coordinate (read-only, from position[3])
local Cube = {}

--- Spawn the cube in the world
---@return void
function Cube:spawn() end

--- Remove the cube from the world
---@return boolean|nil
function Cube:remove() end

---@class Object
---@field position table Position as {x, y, z}
---@field text string Text content (for TEXT objects)
---@field color table RGB color {r, g, b} with values 0-1
---@field size number Text size (for TEXT objects)
---@field billboard boolean Whether text faces camera (for TEXT objects)
local Object = {}

--- Spawn the object in the world
---@return void
function Object:spawn() end

--- Remove the object from the world
---@return boolean|nil
function Object:remove() end

---@class Image
---@field width number Image width in pixels
---@field height number Image height in pixels
---@field pixels table 2D array of pixels [y][x]
local Image = {}

---@class Pixel
---@field r number Red component (0-255)
---@field g number Green component (0-255)
---@field b number Blue component (0-255)
---@field a number Alpha component (0-255)
local Pixel = {}

---@class Camera
---@field mode string Camera mode: "default" or "free"
---@field move_speed number Movement speed in free mode
---@field look_speed number Rotation speed in free mode
camera = {}

---@class Session
session = {}

--- OBJECTS enum - Object type constants
---@class ObjectTypes
---@field BAZOOKA number 10355
---@field MACHINE_GUN number 10353
---@field SHOTGUN number 10360
---@field IMPULSE_GUN number 10354
---@field FLAMETHROWER number 10359
---@field HEAL_RAY number 7690141
---@field RAIL_GUN number 10356
---@field REVOLVER number 239796
---@field DUAL_REVOLVERS number 239800
---@field SHURIKEN number 1165835
---@field MULTI_SHURIKEN number 1165838
---@field SWORD number 12435368
---@field CUBE_GUN number 46140
---@field HEALTH_PACK number 10352
---@field MUTANTO number 10358
---@field LIGHTNING_SPEED number 1165831
---@field STAR number 91197
---@field COIN number 1812739
---@field COIN_CHEST number 1812737
---@field MOUSE_GUN number 3785736
---@field GROWTH_GUN number 3785733
---@field MOUSE_PILL number 3785734
---@field GROWTH_PILL number 3785732
---@field CRYSTAL number 8880186
---@field CRYSTAL_VEIN number 8880187
---@field COSTUME number 12496365
---@field CUSTOM_GUN number 12730220
---@field TELEPORTER number 13481
---@field PLATFORM number 19674
---@field VERTICAL_ROTATOR number 20757
---@field HORIZONTAL_ROTATOR number 20756
---@field FIREFLY_JETPACK number 75226
---@field DRAGONFLY_JETPACK number 75227
---@field HOVERCART number 61222
---@field VEHICLE_ENERGY number 12226728
---@field HAMSTER_BALL number 349297
---@field OCULUS number 97157
---@field GHOST number 17789
---@field FIRE_SENTRY_TOWER number 16408
---@field FROST_SENTRY_TOWER number 18688
---@field CLASS number 9272265
---@field COLLECT_AND_DROP number 6225654
---@field DOOR number 12305637
---@field SLIDING_DOOR number 12324723
---@field TRAP_DOOR number 12339395
---@field ROUND_TIME number 91196
---@field WATER_CUBE number 10377
---@field SMOKE_CUBE number 10373
---@field TEXT number 10374
---@field FIRE number 10372
---@field CAMERA_CUBE number 2379699
---@field TEAM_EDITOR number 9016173
---@field SKYBOX_CUBE number 10375
---@field TNT number 10371
---@field LIGHT_CUBE number 10350
---@field ELIMINATE_THE_OCULUS number 1165828
---@field DEATH_MATCH number 1165823
---@field TIME_ATTACK_FLAG number 8250560
---@field CHECKPOINT number 54338
---@field FLAG number 10365
---@field SPEAKER number 10380
---@field GLOBAL_SPEAKER number 7690139
---@field WIND_TURBINE number 3785730
---@field RED_TEAM_SPAWN_POINT number 10362
---@field YELLOW_TEAM_SPAWN_POINT number 10364
---@field BLUE_TEAM_SPAWN_POINT number 10361
---@field GREEN_TEAM_SPAWN_POINT number 10363
OBJECTS = {}

--- Creates a new cube
---@param id number|nil Model ID (optional, uses currently edited model if omitted)
---@return Cube
function new_cube(id) end

--- Gets a cube at the specified position
---@param position table Position as {x, y, z}
---@return Cube|nil
function get_cube(position) end

--- Gets all cubes from a model
---@param id number|nil Model ID (optional, uses currently edited model if omitted)
---@return Cube[]
function get_cubes(id) end

--- Removes a cube at the specified position
---@param position table Position as {x, y, z}
---@return boolean|nil success - true if removed, false if not found, nil if error
function remove_cube(position) end

--- Creates a new game object
---@param type number Object type enum from OBJECTS
---@return Object|nil
function new_object(type) end

--- Links an object's output to another object's input
---@param obj1 Object Source object
---@param obj2 Object Target object
function link(obj1, obj2) end

--- Loads and executes a Lua script from the scripts folder
---@param path string Script path relative to scripts/ folder (use / for subdirectories)
---@return any
function require(path) end

--- Reads entire text file as string
---@param filename string File path relative to scripts/ folder
---@return string|nil
function read_file(filename) end

--- Loads image file and provides access to pixel data
---@param filename string Image file path relative to scripts/ folder (supports .png, .jpg, .jpeg, .bmp, .gif)
---@return Image|nil
function read_image(filename) end

--- Registers a callback for when a cube is removed
---@param callback fun(cube: Cube)
function on_cube_removed(callback) end

--- Registers a callback for when a command is entered
---@param command string Command name to listen for
---@param callback fun(args: string[])
function on_command(command, callback) end

--- Prints text to the game chat
---@param message string Message to print
function print(message) end

