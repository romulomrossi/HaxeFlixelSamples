import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;

class TestState extends FlxState
{
    var _logo:FlxSprite;
    var _title:FlxText;

    override public function create() : Void
    {
        _logo = new FlxSprite();
        _logo.makeGraphic(40, 40, 0xffff0000);

        _logo.velocity.x = 0;
        _logo.acceleration.x = 50;
        _logo.maxVelocity.x = 100;
        
        _logo.acceleration.y = 25;

        add(_logo);
        
        super.create();
    }
}