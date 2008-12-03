package flash.data;

extern class SQLSchema {
	public var database(default, null): String;
	public var name(default, null): String;
	public var sql(default, null): String;
	
	public function new(database: String, name: String, sql: String): Void;
}