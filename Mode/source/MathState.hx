package;

import flixel.util.FlxColor;
import flixel.*;
import flixel.math.FlxVector;

class MathState extends FlxState 
{
    var _player:FlxSprite;
    var _velocity:FlxVector = new FlxVector();
    var _cannon:FlxSprite;

    override public function create():Void
    {
        _player = new FlxSprite();
        add(_player);

        _cannon = new FlxSprite(FlxG.width / 2, FlxG.height - 20);
        add(_cannon);

        _velocity.x = 0;
        _velocity.y = 0;

        super.create();
    }

    override public function update(elapsed:Float):Void
    {
        _player.x = _player.x + _velocity.x;
        _player.y = _player.y + _velocity.y;

        if(FlxG.mouse.justPressed)
        {
            var b = new FlxSprite(_cannon.x, _cannon.y);

            b.angularVelocity = 220;

            _velocity.x = FlxG.mouse.x - _cannon.x;
            _velocity.y = FlxG.mouse.y - _cannon.y;
            _velocity.normalize();
            _velocity.scale(300);

            b.velocity.x = _velocity.x;
            b.velocity.y = _velocity.y;
            add(b);
        }

        super.update(elapsed);
    }
}