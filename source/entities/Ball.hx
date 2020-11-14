package entities;

import haxepunk.input.Input;
import haxepunk.input.Key;
import haxepunk.Entity;
import haxepunk.graphics.Image;

class Ball extends Entity
{

    public function new(x_, y_)
    {
        super(x_, y_);
        graphic = new Image("graphics/ball.png");

        Key.define("left", [Key.LEFT, Key.A]);
        Key.define("right", [Key.RIGHT, Key.D]);
        Key.define("up", [Key.UP, Key.W]);
        Key.define("down", [Key.DOWN, Key.S]);
    }

    public override function update()
    {
        if (Input.check("left")) { moveBy(-2, 0); }
        if (Input.check("right")) { moveBy(2, 0); }
        if (Input.check("up")) { moveBy(0, -2); }
        if (Input.check("down")) { moveBy(0, 2); }

        super.update();
    }

}