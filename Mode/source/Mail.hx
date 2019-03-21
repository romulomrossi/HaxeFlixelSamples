package;

import flixel.*;

class Mail extends FlxObject 
{
    var _queue:Array<Message> = [];

    override public function update(elapsed:Float):Void
    {
        for(m in _queue)
        {
            m.to.onMessage(m);
        }

        _queue.splice(0, _queue.length);

        super.update(elapsed);
    }

    public function send(message:Message)
    {
        _queue.push(message);
    }
}