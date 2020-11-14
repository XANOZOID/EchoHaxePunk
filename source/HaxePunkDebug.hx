import haxepunk.utils.Color;
import haxepunk.masks.Circle;
import haxepunk.utils.Draw;
import echo.World;
import echo.util.Debug;

class HaxePunkDebug extends Debug {
	public function new() {
		shape_color = 0x005b6ee1;
		shape_fill_color = 0x00cbdbfc;
		shape_collided_color = 0x00d95763;
		quadtree_color = 0x00847e87;
		quadtree_fill_color = 0x009badb7;
		intersection_color = 0x00cbdbfc;
		intersection_overlap_color = 0x00d95763;
	}

	override public inline function draw_line(from_x:Float, from_y:Float, to_x:Float, to_y:Float, color:Int, alpha:Float = 1.) {
		Draw.setColor(color, alpha);
		Draw.line(from_x, from_y, to_x, to_y);
	}

	override public inline function draw_rect(x:Float, y:Float, width:Float, height:Float, color:Int, ?stroke:Int, alpha:Float = 1.) {
		Draw.setColor(color, alpha);
		Draw.rect(x, y, width, height);
		if (stroke != null) {
			Draw.setColor(stroke, 1);
			Draw.rect(x, y, width, height);
		}
	}

	override public inline function draw_circle(x:Float, y:Float, radius:Float, color:Int, ?stroke:Int, alpha:Float = 1.) {
		Draw.setColor(color, alpha);
		Draw.circle(x, y, radius);
		if (stroke != null) {
			Draw.setColor(stroke, 1);
			Draw.circle(x, y, radius);
		}
	}

	// override public inline function clear() canvas.graphics.clear();
}