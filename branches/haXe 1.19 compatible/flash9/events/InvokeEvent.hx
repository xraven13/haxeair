package flash.events;

import flash.filesystem.File;

extern class InvokeEvent extends Event {
	public static var INVOKE(default, null): String;
	public var arguments(default, null): Array<String>;
	public var currentDirectory(default, null): File;
	public function new(type: String, ?bubbles: Bool, ?cancelable: Bool, ?dir: File, ?argv: Array<String>): Void;
	public override function clone(): Event;
}