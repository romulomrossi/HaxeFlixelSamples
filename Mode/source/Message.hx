package;

import flixel.*;

class Message
{
    public static inline var OP_DAMAGE = 0;
    public static inline var OP_HEALTH = 1;
    
    public var from:Entity;
    public var to:Entity;
    public var data:Float;

    public var op:Int;

    public function new()
    {

    }
}