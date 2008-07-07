package flash.data;

extern class SQLSchemaResult {
	public var indices(default, null): Array<SQLIndexSchema>;
	public var tables(default, null): Array<SQLTableSchema>;
	public var triggers(default, null): Array<SQLTriggerSchema>;
	public var views(default, null): Array<SQLViewSchema>;
	
	public function new(tables: Array<SQLTableSchema>, views: Array<SQLViewSchema>, indices: Array<SQLIndexSchema>, triggers: Array<SQLTriggerSchema>): Void;
}