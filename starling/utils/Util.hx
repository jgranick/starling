package starling.utils;


class Util {
	
	
	static function deg2rad (deg:Float):Float {
		
		return untyped starling.utils.deg2rad(deg);
		
	}
	
	
	static function formatString (format:String, args:Array<Dynamic>):String {
		
    	return Reflect.callMethod (this, untyped starling.utils.formatString, args);
    	
    }
    
    
    static function getNextPowerOfTwo (number:Int):Int {
    	
    	return untyped starling.utils.getNextPowerOfTwo(number);
    	
    }
    
    
    static function rad2deg (rad:Float):Float {
    	
    	return untyped starling.utils.rad2deg (rad);
    	
    }

	
}