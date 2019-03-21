package;

import flixel.*;

class Entity extends FlxSprite
{
    public function onMessage(m:Message):Void
    {
        FlxG.log.add("New message. Op = " + m.op);
    }
}