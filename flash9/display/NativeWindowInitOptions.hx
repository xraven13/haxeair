package flash.display;

extern class NativeWindowInitOptions {
	public var maximizable(default, default): Bool;
	public var minimizable(default, default): Bool;
	public var resizable(default, default): Bool;
	public var systemChrome(default, default): String;
	public var transparent(default, default): Bool;
	public var type(default, default): String;
	public function new(): Void;
}