package flash.desktop;

extern class SystemTrayIcon extends InteractiveIcon {
	public static var MAX_TIP_LENGTH(default, null): Float;
	public var menu(default, default): flash.display.NativeMenu;
	public var tooltip(default, default): String;
}