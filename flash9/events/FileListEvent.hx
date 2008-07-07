package flash.events;

import flash.filesystem.File;

extern class FileListEvent extends Event {
	public static var DIRECTORY_LISTING(default, null): String;
	public static var SELECT_MULTIPLE(default, null): String;	
	public var files: Array<File>;
	public function new(type: String, ?bubbles: Bool, ?cancelable: Bool, ?files: Array<File>): Void;
}