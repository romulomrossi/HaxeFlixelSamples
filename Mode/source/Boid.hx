package;

import flixel.*;
import flixel.math.*;

class Boid extends FlxSprite 
{
    var _AIStack:Array<String>;
    var _counter:Float;
    var _state:String;

    public function new()
    {
        super(100, 100);
        _counter = 0;
        _AIStack = ["walk"];
    }

    function changeDirection():Void
    {
        velocity.x = FlxG.random.float(-50, 50);
        velocity.y = FlxG.random.float(-50, 50);
    }

    function pushState(s:String) : Void
    {
        if(getCurrentState() == s)
            return;

        _AIStack.push(s);
    }

    function getCurrentState():String
    {
        if(_AIStack.length <= 0)
            return "walk";

        return _AIStack[_AIStack.length - 1];
    }

    function run() : Void
    {
        var v:FlxVector = new FlxVector();
        v.x = -this.x;
        v.y = -this.y;

        v.normalize().scale(80);
        this.velocity = v;

        if(FlxMath.distanceToMouse(this) >= 50)
        {
            _AIStack.pop();
        }
    }

    function runAway() : Void 
    {
        var v:FlxVector = new FlxVector();
        v.x = this.x - FlxG.mouse.x;
        v.y = this.y - FlxG.mouse.y;

        v.normalize().scale(30);
        this.velocity = v;

        if(FlxMath.distanceToMouse(this) >= 70)
        {
            _AIStack.pop();
        }

        if(FlxMath.distanceToMouse(this) <= 10)
        {
            pushState("run");
        }
    }

    function walk(elapsed:Float):Void
    {
        if(FlxMath.distanceToMouse(this) < 50)
        {
            pushState("runAway");
            return;
        }

        if(_counter >= 5.0)
        {
            changeDirection();
            _counter = 0;
            FlxG.log.add("tempo!");
        }

        _counter += elapsed;
    }

    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);

        var state = getCurrentState();

        if(state == "walk")
            walk(elapsed);
        
        if(state == "run")
            run();
        
        if(state == "runAway")
            runAway();
    }
}