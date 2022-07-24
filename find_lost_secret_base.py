import amulet

level = amulet.load_level("/Users/user/Downloads/de_grootste_wereld_2022-06-12@15-28-34/")
print(level.translation_manager.platforms())
wanted = set(["furnace", "brewing_stand", "crafting_table"])
total = 0
for coords in level.all_chunk_coords('minecraft:overworld'):
    total = total + 1
    if total % 100 == 0:
        print(total)
    chunk = level.get_chunk(coords[0], coords[1], "minecraft:overworld")
    for section in chunk.blocks.sections:
        search_id = set()
        for block in chunk.block_palette:
            if block.base_name in wanted:
                search_id.add(chunk.block_palette[block])
        if len(search_id) == 0:
            break
        data = chunk.blocks.get_section(section)
        for offset_y in range(0, 16):
            for offset_x in range(0, 16):
                for offset_z in range(0, 16):
                    block_id = data[offset_x][offset_y][offset_z]
                    if block_id in search_id:
                        universal_block = chunk.block_palette[block_id]
                        print(coords[0]*16 + offset_x, section*16 + offset_y, coords[1]*16 + offset_z, block_id, universal_block)
level.close()
