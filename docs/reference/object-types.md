# Object Types Reference

Complete list of all **80+ spawnable objects** in KoGaMa. Spawn objects with `new_object()`.

```lua
local obj = new_object(OBJECTS.TELEPORTER)
obj.position = {0, 5, 0}
obj:spawn()
```

Based on [Kogama Wiki - Tools](https://kogama.fandom.com/wiki/Tools).

!!! tip "Quick Search"
    Use **Ctrl+F** (Windows/Linux) or **Cmd+F** (Mac) to search for an object by name or ID.

---

## Pickups

| Icon | Name | ID |
|------|------|-----|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/5/55/T_Bazooka_Default_Icon.png" width="32" height="32">|`BAZOOKA`|10355|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/b/b9/T_MachineGun_Default_Icon.png" width="32" height="32">|`MACHINE_GUN`|10353|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/3/3e/T_Shotgun_Default_Icon.png" width="32" height="32">|`SHOTGUN`|10360|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/3/31/T_ImpulseGun_Default_Icon.png" width="32" height="32">|`IMPULSE_GUN`|10354|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/8/86/T_Flamethrower_Default_Icon.png" width="32" height="32">|`FLAMETHROWER`|10359|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/2/28/T_HealRay_Default_Icon.png" width="32" height="32">|`HEAL_RAY`|7690141|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/7/72/T_Railgun_Default_Icon.png" width="32" height="32">|`RAIL_GUN`|10356|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/c/c6/T_Revolver_Default_Icon.png" width="32" height="32">|`REVOLVER`|239796|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/a/a5/T_DualRevolvers_Default_Icon.png" width="32" height="32">|`DUAL_REVOLVERS`|239800|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/d/d7/T_Shuriken_Default_Icon.png" width="32" height="32">|`SHURIKEN`|1165835|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/8/8a/T_MultiShuriken_Default_Icon.png" width="32" height="32">|`MULTI_SHURIKEN`|1165838|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/9/97/T_Sword_Default_Icon.png" width="32" height="32">|`SWORD`|12435368|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/0/04/T_CubeGun_Default_Icon.png" width="32" height="32">|`CUBE_GUN`|46140|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/f/fb/T_Healthpack_Default_Icon.png" width="32" height="32">|`HEALTH_PACK`|10352|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/f/fc/T_Mutanto_Default_Icon.png" width="32" height="32">|`MUTANTO`|10358|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/e/ef/T_LightningSpeed_Default_Icon.png" width="32" height="32">|`LIGHTNING_SPEED`|1165831|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/6/62/T_Star_Default_Icon.png" width="32" height="32">|`STAR`|91197|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/b/b2/T_Coin_Default_Icon.png" width="32" height="32">|`COIN`|1812739|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/6/6e/T_CoinChest_Default_Icon.png" width="32" height="32">|`COIN_CHEST`|1812737|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/a/a6/T_MouseGun_Default_Icon.png" width="32" height="32">|`MOUSE_GUN`|3785736|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/4/4b/T_GrowthGun_Default_Icon.png" width="32" height="32">|`GROWTH_GUN`|3785733|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/5/57/T_MousePill_Default_Icon.png" width="32" height="32">|`MOUSE_PILL`|3785734|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/3/38/T_GrowthPill_Default_Icon.png" width="32" height="32">|`GROWTH_PILL`|3785732|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/2/24/T_Crystal_Default_Icon.png" width="32" height="32">|`CRYSTAL`|8880186|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/a/a8/T_CrystalVein_Default_Icon.png" width="32" height="32">|`CRYSTAL_VEIN`|8880187|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/5/54/T_Costume_Default_Icon.png" width="32" height="32">|`COSTUME`|12496365|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/9/95/T_Custom_Gun_Default_Icon.png" width="32" height="32">|`CUSTOM_GUN`|12730220|

## Blueprints

| Icon | Name | ID |
|------|------|-----|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/0/0e/T_Teleporter_Default_Icon.png" width="32" height="32">|`TELEPORTER`|13481|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/8/80/T_Platform_Default_Icon.png" width="32" height="32">|`PLATFORM`|19674|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/9/9b/T_VerticalRotator_Default_Icon.png" width="32" height="32">|`VERTICAL_ROTATOR`|20757|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/3/34/T_HorizontalRotator_Default_Icon.png" width="32" height="32">|`HORIZONTAL_ROTATOR`|20756|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/c/c8/T_FireflyJetpack_Default_Icon.png" width="32" height="32">|`FIREFLY_JETPACK`|75226|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/d/d7/T_DragonflyJetpack_Default_Icon.png" width="32" height="32">|`DRAGONFLY_JETPACK`|75227|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/d/db/T_Hovercraft_Default_Icon.png" width="32" height="32">|`HOVERCART`|61222|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/7/73/T_VehicleEnergy_Default_Icon.png" width="32" height="32">|`VEHICLE_ENERGY`|12226728|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/5/56/T_HamsterBall_Default_Icon.png" width="32" height="32">|`HAMSTER_BALL`|349297|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/e/e9/Oculus_gigantic_eye.png" width="32" height="32">|`OCULUS`|97157|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/8/8b/T_Ghost_Default_Icon.png" width="32" height="32">|`GHOST`|17789|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/d/de/T_FireSentryTower_Default_Icon.png" width="32" height="32">|`FIRE_SENTRY_TOWER`|16408|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/5/52/T_FrostSentryTower_Default_Icon.png" width="32" height="32">|`FROST_SENTRY_TOWER`|18688|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/c/ce/T_Class_Default_Icon.png" width="32" height="32">|`CLASS`|9272265|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/6/6d/T_CollectAndDrop_Default_Icon.png" width="32" height="32">|`COLLECT_AND_DROP`|6225654|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/7/79/T_Door_Default_Icon.png" width="32" height="32">|`DOOR`|12305637|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/5/57/T_SlidingDoor_Default_Icon.png" width="32" height="32">|`SLIDING_DOOR`|12324723|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/8/8f/T_TrapDoor_Default_Icon.png" width="32" height="32">|`TRAP_DOOR`|12339395|

## Logic

| Icon | Name | ID |
|------|------|-----|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/6/64/T_RoundTime_Default_Icon.png" width="32" height="32">|`ROUND_TIME`|91196|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/2/2b/T_WaterCube_Default_Icon.png" width="32" height="32">|`WATER_CUBE`|10377|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/e/e7/T_SmokeCube_Default_Icon.png" width="32" height="32">|`SMOKE_CUBE`|10373|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/7/71/T_Text_Default_Icon.png" width="32" height="32">|`TEXT`|10374|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/f/fe/T_Fire_Default_Icon.png" width="32" height="32">|`FIRE`|10372|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/1/1e/T_CameraCube_Default_Icon.png" width="32" height="32">|`CAMERA_CUBE`|2379699|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/a/a3/T_TeamEditor_Default_Icon.png" width="32" height="32">|`TEAM_EDITOR`|9016173|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/9/90/T_SkyboxCube_Default_Icon.png" width="32" height="32">|`SKYBOX_CUBE`|10375|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/3/3e/T_TNT_Default_Icon.png" width="32" height="32">|`TNT`|10371|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/8/80/T_LightCube_Default_Icon.png" width="32" height="32">|`LIGHT_CUBE`|10350|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/b/b4/T_EliminatetheOculus_Default_Icon.png" width="32" height="32">|`ELIMINATE_THE_OCULUS`|1165828|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/1/1d/T_DeathMatch_Default_Icon.png" width="32" height="32">|`DEATH_MATCH`|1165823|
|<img src="https://raw.githubusercontent.com/amuarte/kogama-lua-api/dev-0.3/docs/images/time_attack_flag.png" width="32" height="32">|`TIME_ATTACK_FLAG`|8250560|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/5/50/T_Checkpoint_Default_Icon.png" width="32" height="32">|`CHECKPOINT`|54338|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/3/39/T_Flag_Default_Icon.png" width="32" height="32">|`FLAG`|10365|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/5/5b/Speaker.png.png.png" width="32" height="32">|`SPEAKER`|10380|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/9/92/Speaker.png.png" width="32" height="32">|`GLOBAL_SPEAKER`|7690139|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/9/9f/T_WindTurbine_Default_Icon.png" width="32" height="32">|`WIND_TURBINE`|3785730|
|<img src="https://raw.githubusercontent.com/amuarte/kogama-lua-api/dev-0.3/docs/images/red_team_spawn_point.png" width="32" height="32">|`RED_TEAM_SPAWN_POINT`|10362|
|<img src="https://raw.githubusercontent.com/amuarte/kogama-lua-api/dev-0.3/docs/images/yellow_team_spawn_point.png" width="32" height="32">|`YELLOW_TEAM_SPAWN_POINT`|10364|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/6/67/T_BlueTeamSpawnPoint_Default_Icon.png" width="32" height="32">|`BLUE_TEAM_SPAWN_POINT`|10361|
|<img src="https://raw.githubusercontent.com/amuarte/kogama-lua-api/dev-0.3/docs/images/green_team_spawn_point.png" width="32" height="32">|`GREEN_TEAM_SPAWN_POINT`|10363|

## Advanced Logic

| Icon | Name | ID |
|------|------|-----|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/4/4a/T_TargetCube_Default_Icon.png" width="32" height="32">|`TARGET_CUBE`|4113945|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/2/22/T_CountingCube_Default_Icon.png" width="32" height="32">|`COUNTING_CUBE`|5435011|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/0/02/T_DelayCube_Default_Icon.png" width="32" height="32">|`DELAY_CUBE`|10366|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/2/2d/T_NegateCube_Default_Icon.png" width="32" height="32">|`NEGATE_CUBE`|10368|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/c/cf/T_PulseCube_Default_Icon.png" width="32" height="32">|`PULSE_CUBE`|10378|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/3/30/T_ToggleCube_Default_Icon.png" width="32" height="32">|`TOGGLE_CUBE`|10367|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/4/4c/T_AndCube_Default_Icon.png" width="32" height="32">|`AND_CUBE`|10369|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/1/15/T_TriggerCube_Default_Icon.png" width="32" height="32">|`TRIGGER_CUBE`|9016174|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/1/18/T_Cube_Model_Hider_Old_Icon.png" width="32" height="32">|`CUBE_MODEL_HIDER`|10376|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/5/56/T_CubeModelTransparency_Default_Icon.png" width="32" height="32">|`CUBE_MODEL_TRANSPARENCY`|12532422|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/f/fb/T_RandomCube_Default_Icon.png" width="32" height="32">|`RANDOM_CUBE`|10379|
|<img src="https://raw.githubusercontent.com/amuarte/kogama-lua-api/dev-0.3/docs/images/lever.png" width="32" height="32">|`LEVER`|4113944|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/f/fc/T_PressurePlate_Default_Icon.png" width="32" height="32">|`PRESSURE_PLATE`|10370|

## Special

| Icon | Name | ID |
|------|------|-----|
|<img src="https://static.wikia.nocookie.net/kogama_gamepedia_en/images/e/e8/T_LightConcrete_Default_Icon.png" width="32" height="32">|`MODEL`|75579|
| |`GROUP`|10348|
