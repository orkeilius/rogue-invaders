# Developer docs


## Intro
These docs explain complex mechanics of the project.  
That won't explain stuff like scene (ex: menu script/scene).

### technologies  

- [Godot](https://godotengine.org/) : Godot is an open-source game engine, we use it because it light and support web and have a similar syntax a python.
- [Supabase](https://supabase.com/) : a Backend as a service who make db very simple and fast to make. That a paid service but the free tier is enough for the project.
- [Itchio](https://itch.io/) ; A free games hosting service who support godot web game.


### database
The database is just one table with read and insert only policy :

```sql
create table
  public.highscore (
    name text not null,
    score bigint not null,
    id integer generated by default as identity,
    gamemode smallint not null default '0'::smallint,
    constraint highscore_pkey primary key (id),
    constraint highscore_id_key unique (id)
  ) tablespace pg_default;
```


### General project structure
The project is organized like this:

- **addons** *addons folder for the Supabse wrapper*
- **docs** *docs for user and dev*
- **object** *object (scene use as object for other scene )*
- **scene** *scene*
- **script** *actual code*
  - **alien** *alien related code*
  - **effect** *effect related code*
    - **effectObject** *code related to object use by effect*
    - **systemEffect** *effect use for alien or default player*
    - **userEffect** *effect that can be give to player*
  - **gamemode** *gamemode related code*
  - **UI** *menu and HUD related code*
  - **wall** *wall related code*
- **sprite** *image for the game*
- **UI** *ui related stuff (font,logo,button ,...)*  
  
## Code structure
Since godot use an object system with script attach, we will list script group by related object/scene.
#### Alien
- [alien group](<script/alien/group alien.md>)
- [basic alien](<script/alien/base alien.md>)
- [alien generator](<script/alien/alien generator.md>)
- [boss alien](<script/alien/boss alien.md>)

#### Effect system
- [*how the effect system work*](<script/effect system/effect system.md>)
- [abstract effect](<script/effect system/abstract effect.md>)
- [list of givable item](<script/effect system/list of givable item.md>)



#### Other game script
- [abstract effect entity](<script/other/abtract effect entity.md>)
- [autoload game data](script/other/gameData.md)
- [bullet](script/other/bullet.md)
- [gamemode classic](script/other/gamemode.md)
- [player](script/other/player.md)
- [wall](script/other/wall.md)


#### Menu related
- [effect menu](<script/menu/effect menu.md>)