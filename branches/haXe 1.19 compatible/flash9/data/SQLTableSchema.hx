package flash.data;

extern class SQLTableSchema extends SQLSchema {
	public var columns(default, null): Array<SQLColumnSchema>;
	public function new(database: String, name: String, sql: String, columns: Array<SQLColumnSchema>): Void;
}