package flash.data;

extern class SQLColumnSchema {
	public var allowNull(default, null): Bool;
	public var autoIncrement(default, null): Bool;
	public var dataType(default, null): String;
	public var defaultCollationType(default, null): String;
	public var name(default, null): String;
	public var primaryKey(default, null): Bool;
	
	public function new(name: String, primaryKey: Bool, allowNull: Bool, autoIncrement: Bool, dataType: String, defaultCollationType: String): Void;
}