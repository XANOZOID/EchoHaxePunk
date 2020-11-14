package entities;

import haxepunk.graphics.Image;
import haxepunk.Entity;

class Logos extends Entity {
    public function new() { super(); }
    override public function added() {
        var logo = new Image("graphics/HaxePunk.png");
		logo.scale = 0.25;
		scene.addGraphic(logo, 0, 100, 20);

		var logo = new Image("graphics/echoLogo.png");
		logo.scale = 0.28;
		scene.addGraphic(logo, 0, 220, 90);
    }
}