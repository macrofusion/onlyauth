package;

typedef Config = {
	servers:{
		management:{http_port:Int, https_port:Int, http_enable:Bool, https_enable:Bool}, db:{
			db_enable:Bool, db_host:String, db_port:Int, db_key:String
		}, sso:{
			sso_enable:Bool, sso_host:String, sso_http:Bool, sso_http_port:Int, sso_https:Bool, sso_https_port:Int
		}, ldap:{
			ldap_enable:Bool, ldap_host:String, ldap_port:Int
		}, radius:{
			radius_enable:Bool, radius_host:String, radius_auth_port:Int, radius_acc_port:Int
		}
	}
}
