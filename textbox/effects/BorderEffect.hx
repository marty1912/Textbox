package textbox.effects;

import flixel.text.FlxText.FlxTextBorderStyle;
import flixel.util.FlxColor;

/**
 * this effect will create a fixed size border with the color
 * specified in the args.
 */
class BorderEffect implements IEffect
{
	private var active:Bool;

	public function new()
	{
		color = new FlxColor(FlxColor.WHITE);
		active = false;
	}

	public function reset(arg1:Int, arg2:Int, arg3:Int, nthCharacter:Int):Void
	{
		color.red = arg1;
		color.green = arg2;
		color.blue = arg3;
	}

	public function update(elapsed:Float):Void {}

	public function apply(text:Text):Void
	{
		text.borderColor = color;

		text.borderStyle = FlxTextBorderStyle.OUTLINE_FAST;
	}

	public function setActive(active:Bool):Void
	{
		this.active = active;
	}

	public function isActive():Bool
	{
		return active;
	}

	var color:FlxColor;
}
