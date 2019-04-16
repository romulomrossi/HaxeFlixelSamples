package;

import flixel.*;

class ArtState extends FlxState 
{
    var _sprite:FlxSprite;

    override public function create():Void
    {
        _sprite = new FlxSprite();
        _sprite.loadGraphic(AssetPaths.ninja_full__png, true, 32, 64);        
        _sprite.setFacingFlip(FlxObject.LEFT, true, false);
        _sprite.setFacingFlip(FlxObject.RIGHT, false, false);
        
        _sprite.animation.add("walk", [1, 2, 3, 4, 5, 6], 8);
        _sprite.animation.add("idle", [0], 5);
        add(_sprite);

        super.create();
    }

    override public function update(e:Float):Void
    {
        if(FlxG.keys.pressed.RIGHT)
        {
            _sprite.facing = FlxObject.RIGHT;
            _sprite.x += 1;
            _sprite.animation.play("walk");

        }
        else if(FlxG.keys.pressed.LEFT)
        {
            _sprite.facing = FlxObject.LEFT;
            _sprite.x -= 1;
            _sprite.animation.play("walk");
        }
        else
        {
            _sprite.animation.play("idle");
        }

        super.update(e);
    }
}