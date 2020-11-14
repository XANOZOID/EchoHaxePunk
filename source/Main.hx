import haxepunk.Engine;
import haxepunk.HXP;
import scenes.MainScene;

class Main extends Engine
{
	static function main()
	{
		new Main();
	}

	override public function init()
	{
		HXP.scene = new MainScene();
	}
}
