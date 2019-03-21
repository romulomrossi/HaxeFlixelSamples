package;

import flixel.util.FlxColor;
import flixel.*;

class TestState extends FlxState 
{
    var _mail:Mail;
    var _player:Entity;
    var _enemy:Entity;

    override public function create():Void
    {
        _player = new TestPlayer();
        _enemy = new Entity();
        _mail = new Mail();

        _player.makeGraphic(10, 10, FlxColor.GREEN);
        _enemy.makeGraphic(10, 10, FlxColor.RED);

        _enemy.x = 20;

        add(_player);
        add(_enemy);
        add(_mail);

        super.create();
    }

    override public function update(elapsed:Float)
    {
        
        if(FlxG.keys.justPressed.SPACE)
        {
            var m:Message = new Message();
            m.from = _enemy;
            m.to = _player;
            m.data = 3;
            m.op = Message.OP_DAMAGE;

            _mail.send(m);
        }


        super.update(elapsed);
    }
}