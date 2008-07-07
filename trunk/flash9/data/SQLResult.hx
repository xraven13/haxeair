package flash.data;

extern class SQLResult {
	public var complete(default, null): Bool;
	public var data(default, null): Array<Dynamic>;
	public var lastInsertRowID(default, null): Float;
	public var rowsAffected(default, null): Float;
	
	public function new(?data: Array<Dynamic>, ?rowsAffected: Float, ?complete: Bool, ?rowID: Float): Void;
}