package;

import flixel.*;
import flixel.util.FlxPath;
import flixel.math.FlxPoint;

class DinamicWayState extends FlxState
{
    var _sprite:FlxSprite;
    var _path:Array<FlxPoint> = [];

    override public function create():Void
    {
        _sprite = new FlxSprite();

        add(_sprite);

        super.create();
    }

    override public function update(e:Float)
    {
        if(FlxG.mouse.justPressed)
        {
            _path.push(new FlxPoint(FlxG.mouse.x, FlxG.mouse.y));
            _sprite.path = new FlxPath().start(_path, 300, FlxPath.FORWARD);

            var _point = new FlxSprite();
            _point.makeGraphic(2, 2);
            _point.x = FlxG.mouse.x;
            _point.y = FlxG.mouse.y;
            add(_point);
        }

        super.update(e);
    }
}