/// @desc NineSliceBoxStretched(sprite, x1, y1, x2, y2);
/// @arg0 sprite
/// @arg1 x1 left
/// @arg2 y1 top
/// @arg3 x2 right
/// @arg4 y2 bottom
/// @arg5 index image index

function NineSliceBoxStretched(sprite, x1, y1, x2, y2, index) {

    var _size = sprite_get_width(sprite) / 3;
    var _x1 = x1;
    var _y1 = y1;
    var _x2 = x2;
    var _y2 = y2;
    var _index = index;
    var _w = _x2 - _x1;
    var _h = _y2 - _y1;

    // MIDDLE
    draw_sprite_part_ext(sprite, _index, _size, _size, 1, 1, _x1+_size, _y1+_size, _w-(_size*2), _h-(_size*2), c_white,1);

    // CORNERS
    //top left
    draw_sprite_part(sprite, _index, 0, 0, _size, _size, _x1, _y1);
    //top right
    draw_sprite_part(sprite, _index, _size*2, 0, _size, _size, _x1+_w-_size, _y1);
    //bottom left
    draw_sprite_part(sprite, _index, 0, _size*2, _size, _size, _x1, _y1+_h-_size);
    //bottom right
    draw_sprite_part(sprite, _index, _size*2, _size*2, _size, _size, _x1+_w-_size, _y1+_h-_size);

    //EDGES
    //left edge
    draw_sprite_part_ext(sprite, _index, 0, _size, _size, 1, _x1, _y1+_size, 1, _h-(_size*2), c_white,1);
    //right edge
    draw_sprite_part_ext(sprite, _index, _size*2, _size, _size, 1, _x1+_w-_size, _y1+_size , 1, _h-(_size*2), c_white, 1);
    //top edge
    draw_sprite_part_ext(sprite, _index, _size, 0, 1, _size, _x1+_size, _y1, _w-(_size*2), 1, c_white,1);
    //bottom edge
    draw_sprite_part_ext(sprite, _index, _size, _size*2, 1, _size, _x1+_size, _y1+_h-(_size), _w-(_size*2), 1, c_white,1);




}
