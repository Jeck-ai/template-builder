https://developer.shopware.com/docs/guides/installation/template.html#set-up-a-new-project

- `composer create-project shopware/production templates/shopware/files -n` (there is a q to gen Docker files, need to pass 'y'/default/no-interaction)
- `cd templates/shopware/files`
- Then add `composer require fastly && composer require --dev shopware/dev-tools symfony/profiler-pack && composer require paas --ignore-platform-req=ext-amqp`, which is documented as (optional):

    ```bash
    # Install profiler and other dev tools, eg Faker for demo data generation
    composer require --dev shopware/dev-tools

    # Or Install symfony dev tools
    composer require --dev symfony/profiler-pack

    # Install PaaS integration
    composer require paas --ignore-platform-req=ext-amqp

    # Install Fastly integration
    composer require fastly
    ```
- `cd ../../.. && ./convsun --src templates/shopware/files`