package flash.desktop;

extern class DockIcon extends InteractiveIcon {
	public var menu(default, default): flash.display.NativeMenu;
	public function bounce(?priority: String): Void;
}