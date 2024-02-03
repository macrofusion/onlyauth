import haxe.Json;
import sys.io.File;
import sys.FileSystem;

class ConfigManager {
	public static function init() {
		var dc:Config = {
			servers: {
				management: {
					http_port: 80,
					https_port: 443
				},
				db: {
					db_enable: true,
					db_host: "db.onlyauth.local",
					db_port: 4487,
					db_key: ""
				},
				sso: {
					sso_enable: true,
					sso_host: "sso.onlyauth.local",
					sso_http: true,
					sso_http_port: 80,
					sso_https: true,
					sso_https_port: 443
				},
				ldap: {
					ldap_enable: true,
					ldap_host: "ldap.onlyauth.local",
					ldap_port: 389
				}
			}
		};
		File.saveContent("/etc/onlyauth/config.json", Json.stringify(dc));
	}

	public static function check():Bool {
		return FileSystem.exists("/etc/onlyauth/config.json");
	}

	public static function read():Config {
		if (!check())
			init();
		return Json.parse(File.getContent("/etc/onlyauth/config.json"));
	}

	public static function write(config:Config) {
		File.saveContent("/etc/onlyauth/config.json", Json.stringify(config));
	}
}
