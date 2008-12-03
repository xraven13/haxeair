package flash.desktop;

import flash.filesystem.File;

extern class Updater {
	public function new(): Void;
	public function update(airFile: File, version: String): Void;
}