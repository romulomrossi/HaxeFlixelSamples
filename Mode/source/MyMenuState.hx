package;
import flixel.text.*;
import flixel.*;
import flixel.ui.*;

class MyMenuState extends FlxState
{
    var _title:FlxText;
    var _btnPlay:FlxButton;

    override public function create():Void
    {
        _title = new FlxText(0, 0, 0, "Abobrinha", 20, false);
        _title.x = FlxG.width / 2 - _title.width / 2;
        _title.y = FlxG.height / 2 - _title.width /2;
        
        _btnPlay = new FlxButton(0, 0, "Play", goPlay);
        _btnPlay.x = FlxG.width / 2 - _btnPlay.width / 2;
        _btnPlay.y = _title.y + _title.height + 5;

        add(_title);
        add(_btnPlay);

        super.create();
    }

    function goPlay():Void
    {
        FlxG.switchState(new CreditState());
    }
}