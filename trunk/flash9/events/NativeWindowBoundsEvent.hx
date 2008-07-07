package flash.events;

import flash.geom.Rectangle;

extern class NativeWindowBoundsEvent extends Event {	
	public static var MOVE(default, null): String;	
	public static var MOVING(default, null): String;
	public static var RESIZE(default, null): String;	
	public static var RESIZING(default, null): String;
	
	public var afterBounds(default, null): Rectangle;
	public var beforeBounds(default, null): Rectangle;
	
	public function new (type: String, ?bubbles: Bool, ?cancelable: Bool, ?beforeBounds: Rectangle, ?afterBounds: Rectangle): Void;
	public override function clone(): Event;
	public override function toString(): String;
}