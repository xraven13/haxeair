package flash.security;

extern interface IURIDereferencer {
	public function dereference(uri: String): flash.utils.IDataInput;
}