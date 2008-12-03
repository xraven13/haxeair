package flash.display;

import flash.geom.Rectangle;
import flash.geom.Point;

extern class NativeWindow extends flash.events.EventDispatcher {
	public static var supportsMenu(default, null): Bool;
	public static var supportsNotification(default, null): Bool;
	public static var systemMaxSize(default, null): Point;
	public static var systemMinSize(default, null): Point;
	
	public var stage(default, null): Stage;
	public var active(default, null): Bool;
	public var closed(default, null): Bool;
	public var displayState(default, null): String;
	public var maximizable(default, null): Bool;
	public var minimizable(default, null): Bool;
	public var resizable(default, null): Bool;
	public var systemChrome(default, null): String;
	public var transparent(default, null): Bool;
	public var type(default, null): String;
	
	public var alwaysInFront(default, default): Bool;
	public var visible(default, default): Bool;
	public var bounds(default, default): Rectangle;
	public var maxSize(default, default): Point;
	public var minSize(default, default): Point;
	public var height(default, default): Float;
	public var width(default, default): Float;
	public var x(default, default): Float;
	public var y(default, default): Float;
	public var title(default, default): String;
	public var menu(default, default): NativeMenu;
	
	public function new(initOptions: NativeWindowInitOptions): Void;
	public function activate(): Void;
	public function close(): Void;
	public function globalToScreen(globalPoint: Point): Point;
	public function maximize(): Void;
	public function minimize(): Void;
	public function notifyUser(type: String): Void;
	public function orderInBackOf(window: NativeWindow): Bool;
	public function orderInFrontOf(window: NativeWindow): Bool;
	public function orderToBack(): Bool;
	public function orderToFront(): Bool;
	public function restore(): Void;
	public function startMove(): Bool;
	public function startResize(edgeOrCorner: String): Bool;
}