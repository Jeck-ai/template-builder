2025/02/19 11:01:53 ./convsun --src /Users/chadwcarlson/Code/template-builder/templates/strapi/files
2025/02/19 11:01:53 
convsun from ADV-initial version development

2025/02/19 11:01:53 Convert Project to Upsun...
2025/02/19 11:01:53 Discover found 'routes.yaml' at: /Users/chadwcarlson/Code/template-builder/templates/strapi/files/.platform/routes.yaml
2025/02/19 11:01:53 Discover found 'services.yaml' at: /Users/chadwcarlson/Code/template-builder/templates/strapi/files/.platform/services.yaml
WARNING: file 'applications.yaml' not found in directory '/Users/chadwcarlson/Code/template-builder/templates/strapi/files/.platform'
2025/02/19 11:01:53 Discover found '.platform.app.yaml' at: /Users/chadwcarlson/Code/template-builder/templates/strapi/files/.platform.app.yaml
2025/02/19 11:01:53 Upsun does not use 'sizes' in its configuration file (config.yml) !!
	Sizing is defined in the web console.
2025/02/19 11:01:53 Remove all 'size' on services.yaml...
2025/02/19 11:01:53 Remove all 'size' on .platform.app.yaml/applications.yaml...
2025/02/19 11:01:53 Upsun uses different mount types !!
	For more information: https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#define-a-mount
2025/02/19 11:01:53 Replace all mount type on .platform.app.yaml/applications.yaml...
2025/02/19 11:01:53 - Replace 'local' by 'storage' line 49
2025/02/19 11:01:53 - Replace 'local' by 'storage' line 54
2025/02/19 11:01:53 - Replace 'local' by 'storage' line 59
2025/02/19 11:01:53 - Replace 'local' by 'storage' line 64
2025/02/19 11:01:53 Upsun configuration files doesn't define 'disk' !!
	Disk is define into web console.
	For more information: https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#available-disk-space
2025/02/19 11:01:53 Remove all 'disk' on services.yaml...
2025/02/19 11:01:53 - Remove 'disk' field on line 7
2025/02/19 11:01:53 Remove all 'disk' on .platform.app.yaml/applications.yaml...
2025/02/19 11:01:53 - Remove 'disk' field on line 0
2025/02/19 11:01:53 Upsun does not use 'resources' in its configuration file (config.yml) !!
	Resources is defined in the web console.
2025/02/19 11:01:53 Remove all 'resources' on services.yaml...
2025/02/19 11:01:53 Remove all 'resources' on .platform.app.yaml/applications.yaml...
2025/02/19 11:01:53 Move custom config...
2025/02/19 11:01:53 Upsun configuration files generated !
	OPTIONAL: Please run : "upsun app:config-validate" in order to validate them.
