package flash.net;

extern class URLRequestDefaults {
	public static var authenticate(default, default): Bool;
	public static var cacheResponse(default, default): Bool;
	public static var followRedirects(default, default): Bool;
	public static var manageCookies(default, default): Bool;
	public static var useCache(default, default): Bool;
	public static var userAgent(default, default): String;
	
	public static function setLoginCredentialsForHost(hostname: String, user: String, password: String): Dynamic;
}