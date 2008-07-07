package flash.events;

extern class HTMLUncaughtScriptExceptionEvent extends Event {
	public static var UNCAUGHT_SCRIPT_EXCEPTION(default, null): String;
	
	public var exceptionValue: Dynamic;
	public var stackTrace: Array<{sourceURL: String, line: Float, functionName: String}>;
	
	public function new(exceptionValue: Dynamic): Void;
	public override function clone(): Event;
}