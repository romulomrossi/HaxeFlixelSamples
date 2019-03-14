package;

import flixel.text.*;
import flixel.*;
import flixel.ui.*;

class CreditState extends FlxState
{
    var _title:FlxText;
    var _developerTitle:FlxText;
    var _developerName:FlxText;
    var _designTitle:FlxText;
    var _designerName:FlxText;
    var _engine:FlxText;

    var _btnBack:FlxButton;

    override public function create():Void
    {
        var textVelocity = -30;

        _title = new FlxText(0, 0, 0, "Créditos", 20, false);
        _title.x = FlxG.width / 2 - _title.width / 2;
        _title.y = FlxG.height;
        _title.moves = true;
        _title.velocity.y = textVelocity;

        _developerTitle = new FlxText(0, 0, 0, "Desenvolvedor", 16, false);
        _developerTitle.x = FlxG.width / 2 - _developerTitle.width / 2;
        _developerTitle.y = _title.y + _developerTitle.height + 20;
        _developerTitle.moves = true;
        _developerTitle.velocity.y = textVelocity;
        
        _developerName = new FlxText(0, 0, 0, "Rômulo Rossi", false);
        _developerName.x = FlxG.width / 2 - _developerName.width / 2;
        _developerName.y = _developerTitle.y + _developerName.height + 10;
        _developerName.moves = true;
        _developerName.velocity.y = textVelocity;

        _designTitle = new FlxText(0, 0, 0, "Arte", 16, false);
        _designTitle.x = FlxG.width / 2 - _designTitle.width / 2;
        _designTitle.y = _developerName.y + _designTitle.height + 10;
        _designTitle.moves = true;
        _designTitle.velocity.y = textVelocity;

        _designerName = new FlxText(0, 0, 0, "Nome do carinha", false);
        _designerName.x = FlxG.width / 2 - _designerName.width / 2;
        _designerName.y = _designTitle.y + _designerName.height + 10;
        _designerName.moves = true;
        _designerName.velocity.y = textVelocity;

        _engine = new FlxText(0, 0, 0, "Powered by HaxelFlixel");
        _engine.x = FlxG.width / 2 - _engine.width / 2;
        _engine.y = _designerName.y + _engine.height + 20;
        _engine.moves = true;
        _engine.velocity.y = textVelocity;

        _btnBack = new FlxButton(0, 0, "Voltar", goToMenu);
        _btnBack.x = FlxG.width - _btnBack.width - 5;
        _btnBack.y = FlxG.height - _btnBack.height - 5;

        add(_title);
        add(_developerTitle);
        add(_developerName);
        add(_designTitle);
        add(_designerName);
        add(_engine);
        add(_btnBack);
    }

    function goToMenu():Void
    {
        FlxG.switchState(new MyMenuState());
    }

}