package flash.events;

extern class Event {
	var bubbles(default,null) : Bool;
	var cancelable(default,null) : Bool;
	var currentTarget(default,null) : Dynamic;
	var eventPhase(default,null) : EventPhase;
	var target(default,null) : Dynamic;
	var type(default,null) : String;
	function new(type : String, ?bubbles : Bool, ?cancelable : Bool) : Void;
	function clone() : Event;
	function formatToString(className : String, ?p1 : Dynamic, ?p2 : Dynamic, ?p3 : Dynamic, ?p4 : Dynamic, ?p5 : Dynamic ) : String;
	function isDefaultPrevented() : Bool;
	function preventDefault() : Void;
	function stopImmediatePropagation() : Void;
	function stopPropagation() : Void;
	function toString() : String;
	static var ACTIVATE : String;
	static var ADDED : String;
	static var CANCEL : String;
	static var CHANGE : String;
	static var CLOSE : String;
	static var COMPLETE : String;
	static var CONNECT : String;
	static var DEACTIVATE : String;
	static var ENTER_FRAME : String;
	static var ID3 : String;
	static var INIT : String;
	static var MOUSE_LEAVE : String;
	static var OPEN : String;
	static var REMOVED : String;
	static var RENDER : String;
	static var RESIZE : String;
	static var SCROLL : String;
	static var SELECT : String;
	static var SOUND_COMPLETE : String;
	static var TAB_CHILDREN_CHANGE : String;
	static var TAB_ENABLED_CHANGE : String;
	static var TAB_INDEX_CHANGE : String;
	static var UNLOAD : String;

	/** added in FP 9.0.28 **/
	static var ADDED_TO_STAGE : String;

	/** added in FP 9.0.28 **/
	static var REMOVED_FROM_STAGE : String;

	/** added in FP 9.0.28 **/
	static var FULLSCREEN : String;

	#if flash10
	static var FRAME_CONSTRUCTED : String;
	static var SAMPLES_DATA : String;
	static var EXIT_FRAME : String;
	static var CUT : String;
	static var COPY : String;
	static var CLEAR : String;
	static var SELECT_ALL : String;
	static var PASTE : String;
	#end

	//#if air
	public static var CLOSING(default, null): String;
	public static var DISPLAYING(default, null): String;
	public static var EXITING(default, null): String;
	public static var HTML_BOUNDS_CHANGE(default, null): String;
	public static var HTML_DOM_INITIALIZE(default, null): String;
	public static var HTML_RENDER(default, null): String;
	public static var LOCATION_CHANGE(default, null): String;
	public static var NETWORK_CHANGE(default, null): String;
	public static var USER_IDLE(default, null): String;
	public static var USER_PRESENT(default, null): String;
	//#end
}
