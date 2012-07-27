package starling.animation;


extern class Juggler implements IAnimatable {
	
	var elapsedTime (default, null):Float;
	
	function new ():Void;
	
	function add (object:IAnimatable):Void;
	function remove (object:IAnimatable):Void;
	function removeTweens (target:Dynamic):Void;
	function purge ():Void;
	function delayCall (call:Dynamic, delay:Float, ?arg0:Dynamic, ?arg1:Dynamic, ?arg2:Dynamic, ?arg3:Dynamic, ?arg4:Dynamic, ?arg5:Dynamic, ?arg6:Dynamic, ?arg7:Dynamic):Void;
	function advanceTime (time:Float):Void;
	
}