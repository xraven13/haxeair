package flash.html;

extern class HTMLHost {
	public var htmlLoader(default, null): HTMLLoader;
	public var windowRect(default, default): flash.geom.Rectangle;
	
	public function new(?defaultBehaviors: Bool): Void;
	public function createWindow(windowCreateOptions: HTMLWindowCreateOptions): HTMLLoader;
	public function updateLocation(locationURL: String): Void;
	public function updateStatus(status: String): Void;
	public function updateTitle(title: String): Void;
	public function windowBlur(): Void;
	public function windowClose(): Void;
	public function windowFocus(): Void;
}