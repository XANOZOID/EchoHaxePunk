package entities;

import echo.World;
import echo.Body;
import echo.data.Options.BodyOptions;

import haxepunk.input.Input;
import haxepunk.input.Key;
import haxepunk.Entity;
import haxepunk.graphics.Image;

class PhyBall extends Entity
{
    public var body: Body;

    public function new(x_, y_, world:World)
    {
        super(x_, y_);
        graphic = new Image("graphics/ball.png");
        graphic.centerOrigin();

		body = world.make({
            elasticity: 0.45,
            x: x_,
            y: y_,
            shape: {
                type: CIRCLE,
                radius: 16,
            }
        });
		body.on_move = (x,y) -> moveTo(x,y);
		// body.on_rotate = onRotate.bind(buffer, _);
    }

    // public override function update()
    // {

    //     super.update();
    // }

}