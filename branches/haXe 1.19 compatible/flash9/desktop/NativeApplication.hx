package flash.desktop;

import flash.display.NativeMenu;
import flash.display.NativeWindow;
import flash.events.Event;

extern class NativeApplication extends flash.events.EventDispatcher {
	public static var nativeApplication(default, null): NativeApplication;
	public var activeWindow(default, null): NativeWindow;
	public var applicationDescriptor(default, null): flash.xml.XML;
	public var applicationID(default, null): String;
	public var autoExit(default, default): Bool;
	public var icon(default, null): InteractiveIcon;
	public var idleThreshold(default, default): Int;
	public var menu(default, default): NativeMenu;
	public var openedWindows(default, null): Array<NativeWindow>;
	public var publisherID(default, null): String;
	public var runtimePatchLevel(default, null): UInt;
	public var runtimeVersion(default, null): String;
	public var startAtLogin(default, default): Bool;
	public var supportsDockIcon(default, null): Bool;
	public var supportsMenu(default, null): Bool;
	public var supportsSystemTrayIcon(default, null): Bool;
	public var timeSinceLastUserInput(default, null): Int;	

	public function activate(?window: NativeWindow): Void;
	public override function addEventListener(type: String, listener: Dynamic -> Void, ?useCapture: Bool, ?priority: Int, ?useWeakReference: Bool): Void;
	public override function removeEventListener(type: String, listener: Dynamic -> Void, ?useCapture: Bool): Void;
	public function clear(): Bool;
	public function selectAll(): Bool;
	public function copy(): Bool;
	public function cut():Bool;
	public function paste(): Bool;
	public override function dispatchEvent(event: Event): Bool;
	public function exit(?errorCode: Int): Void;
	public function getDefaultApplication(extension: String): String;
	public function isSetAsDefaultApplication(extension: String): Bool;
	public function removeAsDefaultApplication(extension: String): Void;
	public function setAsDefaultApplication(extension: String): Void;
}