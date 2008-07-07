package flash.display;

extern class NativeMenuItem extends flash.events.EventDispatcher {
	public var checked(default, default): Bool;
	public var data(default, default): Dynamic;
	public var enabled(default, default): Bool;
	public var isSeparator(default, null): Bool;
	public var keyEquivalent(default, default): String;
	public var keyEquivalentModifiers(default, default): Array<flash.ui.Keyboard>;
	public var label(default, default): String;
	public var menu(default, null): NativeMenu;
	public var mnemonicIndex(default, default): Int;
	public var name(default, default): String;
	public var submenu(default, default): NativeMenu;
	
	public function new(?label: String, ?isSeparator: Bool): Void;
	public function clone(): NativeMenuItem;
	public override function toString(): String;
}