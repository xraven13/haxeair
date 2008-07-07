package flash.display;

extern class NativeMenu extends flash.events.EventDispatcher {
	public var items(default, null): Array<NativeMenuItem>;
	public var numItems(default, null): Int;
	public var parent(default, null): NativeMenu;

	public function addItem(item: NativeMenuItem): NativeMenuItem;
	public function addItemAt(item: NativeMenuItem, index: Int): NativeMenuItem;
	public function addSubmenu(submenu: NativeMenu, label: String): NativeMenuItem;
	public function addSubmenuAt(submenu: NativeMenu, index: Int, label: String): NativeMenuItem;
	public function clone(): NativeMenu;
	public function containsItem(item: NativeMenuItem): Bool;
	public function display(stage: Stage, stageX: Float, stageY: Float): Void;
	public function getItemAt(index: Int): NativeMenuItem;
	public function getItemByName(name: String): NativeMenuItem;
	public function getItemIndex(item: NativeMenuItem): Int;
	public function removeItem(item: NativeMenuItem): NativeMenuItem;
	public function removeItemAt(index: Int): NativeMenuItem;
	public function setItemIndex(item: NativeMenuItem, index: Int): Void;
}