package flash.display;

import flash.geom.Rectangle;

extern class Screen extends flash.events.EventDispatcher {
	public static var mainScreen(default, null): Screen;
	public static var screens(default, null): Array<Screen>;
	
	public var bounds(default, null): Rectangle;
	public var visibleBounds(default, null): Rectangle;
	public var colorDepth(default, null): Int;

	public static function getScreensForRectangle(rect: Rectangle): Array<Screen>;
}