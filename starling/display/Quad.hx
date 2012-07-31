package starling.display;


import starling.utils.VertexData;


extern class Quad extends DisplayObject {
	
	function new (width:Float, height:Float, color:UInt = 0xFFFFFF, premultipliedAlpha:Bool = true):Void;
	
	function getVertexColor (vertexID:Int):UInt;
	function setVertexColor (vertexID:Int, color:UInt):Void;
	function getVertexAlpha (vertexID:Int):Float;
	function setVertexAlpha (vertexID:Int, alpha:Float):Void;
	
	var color:UInt;
	function copyVertexDataTo (targetData:VertexData, targetVertexID:Int = 0):Void;
	
	var tinted (default, null):Bool;
	
}