package;

import flixel.*;

class TestPlayer extends Entity
{
    public function new()
    {
        super();
        health = 10;
    }

    override public function onMessage(m:Message):Void
    {
        if(m.op == Message.OP_DAMAGE)
        {
            hurt(m.data);
        }
    }
}