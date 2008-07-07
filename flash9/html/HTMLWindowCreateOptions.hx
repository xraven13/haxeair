package flash.html;

extern class HTMLWindowCreateOptions {
	public var fullscreen: Bool;
	public var locationBarVisible: Bool;
	public var menuBarVisible: Bool;
	public var resizable: Bool;
	public var scrollBarsVisible: Bool;
	public var statusBarVisible: Bool;
	public var toolBarVisible: Bool;
	public var height: Float;
	public var width: Float;
	public var x: Float;
	public var y: Float;
	
	public function new(): Void;
}