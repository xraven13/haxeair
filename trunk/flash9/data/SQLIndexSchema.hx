package flash.data;

extern class SQLIndexSchema extends SQLSchema {
	public var table(default, null): String;
	
	public function new(database: String, name: String, sql: String, table: String): Void;
}