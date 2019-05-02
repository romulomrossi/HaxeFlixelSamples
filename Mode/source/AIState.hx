package;

import flixel.*;
import flixel.group.FlxGroup;

class AIState extends FlxState 
{
    var _boids:FlxGroup;

    override public function create():Void
    {
        _boids = new FlxGroup();
        _boids.add(new Boid());

        add(_boids);

        super.create();
    }
}