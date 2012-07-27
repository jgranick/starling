package starling.events;


extern class KeyboardEvent extends Event {
	
	static var KEY_UP:String;
	static var KEY_DOWN:String;
	
	function new (type:String, charCode:UInt = 0, keyCode:UInt = 0, keyLocation:UInt = 0, ctrlKey:Bool, altKey:Bool, shiftKey:Bool):Void;
	
	var charCode (default, null):UInt;
	var keyCode (default, null):UInt;
	var keyLocation (default, null):UInt;
	var altKey (default, null):Bool;
	var ctrlKey (default, null):Bool;
	var shiftKey (default, null):Bool;
	
}