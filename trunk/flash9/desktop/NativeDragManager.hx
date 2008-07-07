package flash.desktop;

import flash.display.InteractiveObject;
import flash.display.BitmapData;
import flash.geom.Point;

extern class NativeDragManager {
	public static var dragInitiator(default, null): InteractiveObject;
	public static var dropAction(default, default): String;
	public static var isDragging(default, null): Bool;
	
	public static function acceptDragDrop(target: InteractiveObject): Void;
	public static function doDrag(dragInitiator: InteractiveObject, clipboard: Clipboard, ?dragImage: BitmapData, 
		?offset: Point, ?allowedActions: NativeDragOptions): Void;
}