# Lunar New Year Pixel Pack - Technical Guide

For programmers and anyone importing the sprites into a game engine. For what each item means and where it belongs in a scene, see **Art_Guide.md**.

## Files

- All sprites are **transparent PNG** files in `images/<Category>/<Item>.png`.
- One sprite per file (no sprite sheets), no animation frames.
- Every sprite has a **dark outline** and a **soft drop shadow** (bottom-left, semi-transparent) baked in. Don't add another shadow; if you want shadow-free sprites, the shadow pixels are the only semi-transparent ones and can be removed with an alpha threshold.

## Grid and scale

- Made for a **64 × 64 px tile grid** (compatible with common 64 px top-down tilesets). Canvas sizes are multiples of 32 px; each item's size is listed below and in Contents.md.
- Keep pixels sharp: **nearest-neighbour / point filtering**, no texture compression, and **whole-number scale factors** (×1, ×2, ×3 ...). Fractional scales create uneven pixels.

## Engine settings

| Engine | Settings |
|---|---|
| Unity | Texture Type: Sprite (2D and UI) · Pixels Per Unit: 64 · Filter Mode: Point (no filter) · Compression: None · Pivot: Bottom |
| Godot 4 | Project Settings → Rendering → Textures → Default Texture Filter: Nearest · Sprite2D: keep `centered = true` and set `offset.y = -height / 2`, so the node position is the bottom centre |
| GameMaker | Sprite origin: Bottom Centre · Texture Group without interpolation (Game Options → Interpolate colours between pixels: off) |
| Tiled / LDtk | Use as image objects or a collection-of-images tileset; snap to a 64 px grid (32 px for half-tile placement) |

## Pivot and sorting

- Objects stand on the **bottom edge** of their canvas, so use a **bottom-centre pivot / origin**. Placing the pivot on the ground tile lines the object up with the floor.
- For top-down depth, **Y-sort** props, plants, buildings and mascots together with characters (lower on screen = drawn in front).

## Layers

| Category | Typical layer |
|---|---|
| Decorations | Above walls/buildings (hung on them) |
| Props | Object layer, Y-sorted with characters |
| Food | Object layer, on top of tables/counters |
| Items | UI / inventory, or object layer as pickups |
| Plants | Object layer, Y-sorted |
| Buildings | Object layer, Y-sorted (large footprint) |
| Mascots | Object layer, Y-sorted |
| Effects | Top layer (above everything) |
| Mahjong | Object layer on top of tables (table: Y-sorted); tiles also work as UI icons |

## Mirroring

These items are meant to be used as mirrored pairs (flip the second copy horizontally): `Stone_Lion`, `Door_God_Poster`, `Couplet_Strip`, `Lantern_Palace`. `Fu_Sign` is traditionally flipped **vertically** (upside down). Other sprites can be flipped for variety too; this moves their light from top-left to top-right, which is rarely noticeable in a busy scene.

## Effects

`Firework_Red`, `Firework_Gold` and `Firecracker_Pop` are single static frames. A simple burst: spawn the sprite, scale it from ~0.5× to 1× (whole-number steps if you want to stay pixel-perfect) over 0.2-0.3 s, then fade it out over ~0.5 s.

## All sprites

| File | Size (px) | Grid cells |
|---|---|---|
| `images/Decorations/Lantern_Red.png` | 128x128 | 2 × 2 |
| `images/Decorations/Lantern_Palace.png` | 64x128 | 1 × 2 |
| `images/Decorations/Lantern_String.png` | 192x64 | 3 × 1 |
| `images/Decorations/Chinese_Knot.png` | 64x128 | 1 × 2 |
| `images/Decorations/Fu_Sign.png` | 64x64 | 1 × 1 |
| `images/Decorations/Couplet_Strip.png` | 64x128 | 1 × 2 |
| `images/Decorations/Couplet_Header.png` | 128x64 | 2 × 1 |
| `images/Decorations/Window_Papercut.png` | 64x64 | 1 × 1 |
| `images/Decorations/Firecracker_Chain.png` | 64x128 | 1 × 2 |
| `images/Decorations/Silk_Ball.png` | 64x64 | 1 × 1 |
| `images/Decorations/Door_God_Poster.png` | 64x96 | 1 × 1.5 |
| `images/Props/Lantern_Standing.png` | 64x128 | 1 × 2 |
| `images/Props/Big_Drum.png` | 128x128 | 2 × 2 |
| `images/Props/Gong_Stand.png` | 128x128 | 2 × 2 |
| `images/Props/Stone_Lion.png` | 64x128 | 1 × 2 |
| `images/Props/Incense_Burner.png` | 64x64 | 1 × 1 |
| `images/Props/Lion_Dance_Head.png` | 64x64 | 1 × 1 |
| `images/Props/Fireworks_Crate.png` | 64x64 | 1 × 1 |
| `images/Props/Offering_Table.png` | 128x64 | 2 × 1 |
| `images/Props/Riddle_Board.png` | 128x128 | 2 × 2 |
| `images/Props/Wishing_Plaque_Rack.png` | 128x128 | 2 × 2 |
| `images/Food/Dumplings_Plate.png` | 128x128 | 2 × 2 |
| `images/Food/Tangyuan_Bowl.png` | 64x64 | 1 × 1 |
| `images/Food/Baozi_Steamer.png` | 64x64 | 1 × 1 |
| `images/Food/Steamed_Fish.png` | 128x64 | 2 × 1 |
| `images/Food/Nian_Gao.png` | 64x64 | 1 × 1 |
| `images/Food/Tanghulu.png` | 64x64 | 1 × 1 |
| `images/Food/Orange_Plate.png` | 64x64 | 1 × 1 |
| `images/Food/Spring_Rolls.png` | 64x64 | 1 × 1 |
| `images/Food/Candy_Box.png` | 64x64 | 1 × 1 |
| `images/Food/Hot_Pot.png` | 64x64 | 1 × 1 |
| `images/Food/Tea_Set.png` | 64x64 | 1 × 1 |
| `images/Items/Gold_Ingot.png` | 64x64 | 1 × 1 |
| `images/Items/Red_Envelope.png` | 64x64 | 1 × 1 |
| `images/Items/Gold_Coin.png` | 64x64 | 1 × 1 |
| `images/Items/Coin_String.png` | 64x64 | 1 × 1 |
| `images/Items/Lucky_Bag.png` | 64x64 | 1 × 1 |
| `images/Items/Firecracker_Single.png` | 64x64 | 1 × 1 |
| `images/Items/Jade_Pendant.png` | 64x64 | 1 × 1 |
| `images/Items/Folding_Fan.png` | 64x64 | 1 × 1 |
| `images/Items/Sky_Lantern.png` | 64x64 | 1 × 1 |
| `images/Items/Fortune_Sticks.png` | 64x64 | 1 × 1 |
| `images/Items/Calligraphy_Set.png` | 64x64 | 1 × 1 |
| `images/Plants/Mandarin_Tree.png` | 64x128 | 1 × 2 |
| `images/Plants/Plum_Tree.png` | 128x128 | 2 × 2 |
| `images/Plants/Plum_Vase.png` | 64x128 | 1 × 2 |
| `images/Plants/Bamboo_Cluster.png` | 64x128 | 1 × 2 |
| `images/Plants/Lucky_Bamboo.png` | 64x64 | 1 × 1 |
| `images/Plants/Narcissus_Pot.png` | 64x64 | 1 × 1 |
| `images/Buildings/Paifang_Gate.png` | 192x192 | 3 × 3 |
| `images/Buildings/Red_Pavilion.png` | 128x192 | 2 × 3 |
| `images/Buildings/Market_Stall.png` | 128x128 | 2 × 2 |
| `images/Buildings/Temple_Door.png` | 128x128 | 2 × 2 |
| `images/Buildings/Earth_God_Shrine.png` | 64x128 | 1 × 2 |
| `images/Buildings/Lantern_Arch.png` | 192x128 | 3 × 2 |
| `images/Mascots/Goat_Figurine.png` | 64x64 | 1 × 1 |
| `images/Mascots/God_of_Wealth.png` | 64x128 | 1 × 2 |
| `images/Mascots/Dragon_Dance_Head.png` | 128x128 | 2 × 2 |
| `images/Mascots/Fortune_Kid.png` | 64x128 | 1 × 2 |
| `images/Mascots/Lucky_Cat.png` | 64x64 | 1 × 1 |
| `images/Mascots/Goat_Lantern.png` | 64x64 | 1 × 1 |
| `images/Mascots/Goat_Papercut.png` | 96x96 | 1.5 × 1.5 |
| `images/Mascots/Goat_Door_Sign.png` | 64x64 | 1 × 1 |
| `images/Mascots/Goat_Plush.png` | 64x64 | 1 × 1 |
| `images/Mascots/Goat_Coin.png` | 64x64 | 1 × 1 |
| `images/Mascots/Goat_Red_Envelope.png` | 64x64 | 1 × 1 |
| `images/Mascots/Three_Goats.png` | 96x96 | 1.5 × 1.5 |
| `images/Effects/Firework_Red.png` | 64x64 | 1 × 1 |
| `images/Effects/Firework_Gold.png` | 64x64 | 1 × 1 |
| `images/Effects/Firecracker_Pop.png` | 64x64 | 1 × 1 |
| `images/Mahjong/Mahjong_Table.png` | 128x128 | 2 × 2 |
| `images/Mahjong/Mahjong_Tile_Wall.png` | 128x64 | 2 × 1 |
| `images/Mahjong/Mahjong_Box.png` | 64x64 | 1 × 1 |
| `images/Mahjong/Mahjong_Dice.png` | 64x64 | 1 × 1 |
| `images/Mahjong/Tile_Red_Dragon.png` | 64x64 | 1 × 1 |
| `images/Mahjong/Tile_Green_Dragon.png` | 64x64 | 1 × 1 |
| `images/Mahjong/Tile_One_Dot.png` | 64x64 | 1 × 1 |
| `images/Mahjong/Tile_One_Bamboo.png` | 64x64 | 1 × 1 |
