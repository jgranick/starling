package starling.utils;

import flash.geom.Rectangle;

extern class RectangleUtil {
	
	/** @private */
	private function new():Void;
	
	/** Calculates the intersection between two Rectangles. If the rectangles do not intersect,
	 *  this method returns an empty Rectangle object with its properties set to 0. */
	public static function intersect(rect1:Rectangle, rect2:Rectangle, resultRect:Rectangle = null):Rectangle;

	/** Calculates a rectangle with the same aspect ratio as the given 'rectangle',
	 *  centered within 'into'. Optionally, the rectangle will be scaled to the biggest
	 *  possible size (so that no cropping occurs). This method is useful for calculating
	 *  the optimal viewPort for a certain display size. */
	public static function fit(rectangle:Rectangle, into:Rectangle, scale:Bool=true, resultRect:Rectangle = null):Rectangle;
}