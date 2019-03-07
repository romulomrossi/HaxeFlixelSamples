package;
import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup;

class GroupState extends FlxState
{
    var _yellows:FlxGroup;
    var _blues:FlxGroup;
    var _greens:FlxGroup;

    override public function create():Void
    {
        _yellows = new FlxGroup();
        _blues = new FlxGroup();
        _greens = new FlxGroup();

        buildLinedSquareGroup(FlxG.height, 30, FlxColor.YELLOW, _yellows);
        buildLinedSquareGroup(FlxG.height - 30, 10, FlxColor.BLUE, _blues);
        buildLinedSquareGroup(FlxG.height - 60, 15, FlxColor.GREEN, _greens);

        add(_blues);
        add(_greens);
        add(_yellows);

        super.create();
    }

    private function buildLinedSquareGroup(y:Float, elementsCount:Int, color:FlxColor, group:FlxGroup):Void
    {
        var i;
        for(i in 0...elementsCount)
        {
            var sprite = new FlxSprite(i * 10);
            sprite.makeGraphic(8, 8, color);
            sprite.y = y - sprite.height;
            
            group.add(sprite);
        }
    }
}