package flash.events;

extern class BrowserInvokeEvent extends Event {
	public static var BROWSER_INVOKE(default, null): String;
	public var arguments(default, null): Array<String>;
	public var isHTTPS(default, null): Bool;
	public var isUserEvent(default, null): Bool;
	public var sandboxType(default, null): String;
	public var securityDomain(default, null): String;
	public function new(type: String, bubbles: Bool, cancelable: Bool, arguments: Array<String>, sandboxType: String, securityDomain: String, isHTTPS: Bool, isUserEvent: Bool);
	public override function clone(): Event;
}