2025/02/19 10:11:41 ./convsun --src /Users/chadwcarlson/Code/template-builder/templates/drupal9
2025/02/19 10:11:41 
convsun from ADV-initial version development

2025/02/19 10:11:41 Convert Project to Upsun...
WARNING: file 'services.yaml' not found in directory '/Users/chadwcarlson/Code/template-builder/templates/drupal9/.platform'
WARNING: file 'applications.yaml' not found in directory '/Users/chadwcarlson/Code/template-builder/templates/drupal9/.platform'
2025/02/19 10:11:41 Discover found '.platform.app.yaml' at: /Users/chadwcarlson/Code/template-builder/templates/drupal9/files/.platform.app.yaml
WARNING: file 'routes.yaml' not found in directory '/Users/chadwcarlson/Code/template-builder/templates/drupal9/.platform'
2025/02/19 10:11:41 Upsun does not use 'sizes' in its configuration file (config.yml) !!
	Sizing is defined in the web console.
2025/02/19 10:11:41 Remove all 'size' on services.yaml...
2025/02/19 10:11:41 Remove all 'size' on .platform.app.yaml/applications.yaml...
2025/02/19 10:11:41 Upsun uses different mount types !!
	For more information: https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#define-a-mount
2025/02/19 10:11:41 Replace all mount type on .platform.app.yaml/applications.yaml...
2025/02/19 10:11:41 - Replace 'local' by 'storage' line 40
2025/02/19 10:11:41 - Replace 'local' by 'storage' line 45
2025/02/19 10:11:41 - Replace 'local' by 'storage' line 50
2025/02/19 10:11:41 - Replace 'local' by 'storage' line 54
2025/02/19 10:11:41 - Replace 'local' by 'storage' line 59
2025/02/19 10:11:41 - Replace 'local' by 'storage' line 64
2025/02/19 10:11:41 Upsun configuration files doesn't define 'disk' !!
	Disk is define into web console.
	For more information: https://docs.upsun.com/create-apps/app-reference/single-runtime-image.html#available-disk-space
2025/02/19 10:11:41 Remove all 'disk' on services.yaml...
2025/02/19 10:11:41 Remove all 'disk' on .platform.app.yaml/applications.yaml...
2025/02/19 10:11:41 - Remove 'disk' field on line 0
2025/02/19 10:11:41 Upsun does not use 'resources' in its configuration file (config.yml) !!
	Resources is defined in the web console.
2025/02/19 10:11:41 Remove all 'resources' on services.yaml...
2025/02/19 10:11:41 Remove all 'resources' on .platform.app.yaml/applications.yaml...
2025/02/19 10:11:41 Move custom config...
2025/02/19 10:11:41 Upsun configuration files generated !
	OPTIONAL: Please run : "upsun app:config-validate" in order to validate them.
