package scenes;

import entities.Logos;
import haxepunk.HXP;
import entities.Ball;
import entities.PhyBall;

import haxepunk.Scene;
import haxepunk.graphics.Image;
import echo.Echo;

class MainScene extends Scene
{
	var world:echo.World;
	var debugDrawer:HaxePunkDebug;

	override public function begin()
	{
		world = Echo.start({
			width: HXP.width,
			height: HXP.height,
			gravity_y: 100,
			iterations: 8
		});

		// Plain Old HaxePunk entities
		// add(new Ball(100, 100));
		add(new Logos());

		var phyball = add(new PhyBall(40, 0, world));

		trace(HXP.screen.width);
		trace(HXP.width);

		var wallDefs:Array<Dynamic> =[
			{ 	x: 0, y: HXP.halfHeight,
				width: 1,
				height: HXP.height
			},
			{ 	x: 0, y: HXP.height - 20,
				width: HXP.width * 10,
				height: 10
			},
			{ 	x: HXP.width - 1, y: HXP.halfHeight,
				width: 5,
				height: HXP.height
			},
			{ 	x: 0, y: HXP.halfHeight,
				width: 450,
				height: 30,
				rotated: true,
				rotation: 30
			},
			{ 	x: HXP.width * 0.78, y: HXP.height*0.88,
				width: 450,
				height: 30,
				rotated: true,
				rotation: -30
			},
		];

		var walls = [for (def in wallDefs) world.make({ 
			x: def.x,  y: def.y,
			mass: 0, 
			elasticity: 0.3,
			shape: {
				type: RECT, 
				width: def.width, 
				height: def.height,
				rotation: def.rotated? 30 : 0
			} 
		})];

		for (wall in walls) world.listen(phyball.body, wall, {separate: true});
		debugDrawer = new HaxePunkDebug();
	}

	override public function update() {
		world.step(16 / 1000);
		super.update();
	}

	override public function render() {
		super.render();
		debugDrawer.draw(world);
	}
}
