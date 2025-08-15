# PIZZA PANDA
This is a public copy of the PICO-8 source code for [PIZZA
PANDA](https://pizzapanda.pizza), provided here in its original unminified form
so you can actually read it maybe.

## Editing levels
Each level is stored in a separate `.p8` file in the `level` folder. To edit a
level, open its `.p8` file in PICO-8 and use the built-in map editor.

Note that each level might not necessarily start at the top of the map space;
the build cart automatically trims any empty rows from the top and bottom of a
level in order to simplify the workflow.

### Top row of sprites
The top row of each level is interpreted as parameters defining the level's
goals.

The beginning of the top row is a variable-length repeated sequence of the
following pair of sprites:

1. NPC
2. (optional) hat which must be worn by the NPC

The last two sprites of the top row are the target times for the gold star and
night-mode star; the sprite number is interpreted to be the number of seconds.

To try out your changes, just push Ctrl-R. This will automatically save the
cart, recompress the level into the master cart, and launch the master cart
straight into the level.

## Editing datatables or the spritesheet
If you make a change to `datatables.p8lua` or `spritesheet.p8`, you'll have to
rebuild the master cart in order for your changes to take effect.

1. If you changed any datatables, do the following (if not, you can skip this):
    1. From the PICO-8 console, run `build_datatables.p8`:
        ```
        load build_datatables.p8
        run
        ```
    2. Open `bindata.p8` in an external text editor
    3. Completely replace the file content with the contents of your clipboard.
2. From the PICO-8 console, run `build.p8`:
    ```
    load build.p8
    run
    ```
3. This will take a bit to compress and store everything in the master cart
   (`pizza_panda.p8`); once it's finished, it will automatically load and run.
