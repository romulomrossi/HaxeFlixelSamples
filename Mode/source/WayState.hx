package;

import flixel.*;
import flixel.util.FlxPath;
import flixel.math.FlxPoint;

class WayState extends FlxState
{
    var _sprite:FlxSprite;
    var _circleWay:Array<FlxPoint>;
    var _xWay:Array<FlxPoint>;

    override public function create():Void
    {
        _sprite = new FlxSprite();

        _circleWay = [
            new FlxPoint(_sprite.width, _sprite.height), 
            new FlxPoint(_sprite.width, FlxG.height - _sprite.height),
            new FlxPoint(FlxG.width - _sprite.width, FlxG.height - _sprite.height),
            new FlxPoint(FlxG.width - _sprite.width, _sprite.height),
            new FlxPoint(_sprite.width, _sprite.height) ];

        _xWay = [
            new FlxPoint(_sprite.width, _sprite.height), 
            new FlxPoint(FlxG.width - _sprite.width, FlxG.height - _sprite.height),
            new FlxPoint(_sprite.width, FlxG.height - _sprite.height),
            new FlxPoint(FlxG.width - _sprite.width, _sprite.height),
            new FlxPoint(_sprite.width, _sprite.height) ];

        _sprite.path = new FlxPath().start(_circleWay, 300, FlxPath.LOOP_FORWARD);

        add(_sprite);

        super.create();
    }

    override public function update(e:Float)
    {
        if(FlxG.keys.justPressed.A)
        {
            _sprite.path = new FlxPath().start(_xWay, 300, FlxPath.LOOP_FORWARD);
        }

        if(FlxG.keys.justPressed.P)
        {
            _sprite.path = new FlxPath().start(_circleWay, 300, FlxPath.LOOP_FORWARD);
        }

        super.update(e);
    }
}