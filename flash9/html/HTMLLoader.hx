package flash.html;

extern class HTMLLoader extends flash.display.Sprite {
	public var authenticate(default, default): Bool;
	public var cacheResponse(default, default): Bool;
	public var contentHeight(default, null): Float;
	public var contentWidth(default, null): Float;	
	public var hasFocusableContent(default, null): Bool;
	public var historyLength(default, null): UInt;
	public var historyPosition(default, default): UInt;
	public var htmlHost(default, default): HTMLHost;
	public var loaded(default, null): Bool;
	public var location(default, null): String;
	public var manageCookies(default, default): Bool;
	public var navigateInSystemBrowser(default, default): Bool;
	public var paintsDefaultBackground(default, default): Bool;
	public var pdfCapability(default, null): Int;
	public var runtimeApplicationDomain(default, default): flash.system.ApplicationDomain;
	public var scrollH(default, default): Float;
	public var scrollV(default, default): Float;
	public var textEncodingFallback(default, default): String;
	public var textEncodingOverride(default, default): String;
	public var useCache(default, default): Bool;
	public var userAgent(default, default): String;
	public var window(default, null): Dynamic;
	
	public function new(): Void;
	public function cancelLoad(): Void;
	public static function createRootWindow(?visible: Bool, ?windowInitOptions: flash.display.NativeWindowInitOptions, ?scrollBarsVisible: Bool, ?bounds: flash.geom.Rectangle): HTMLLoader;
	public function getHistoryAt(position: UInt): HTMLHistoryItem;
	public function historyBack(): Void;
	public function historyForward(): Void;
	public function historyGo(steps: Int): Void;
	public function load(urlRequestToLoad: flash.net.URLRequest): Void;
	public function loadString(htmlContent: String): Void;
	public function reload(): Void;
}