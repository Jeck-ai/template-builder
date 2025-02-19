#!/usr/bin/env bash

VERSION="0.3.5"

clear

ROOT=$(pwd)

download_convsun() {

    FILE="convsun-v$VERSION-darwin-amd64.tar.gz"

    mkdir convsun-jeck
    rm convsun

    VERSION="0.3.5"
    FILE="convsun-v$VERSION-darwin-amd64.tar.gz"
    curl -sL https://github.com/upsun/convsun/releases/download/v$VERSION/$FILE > convsun.tar.gz
    tar -xvzf convsun.tar.gz -C convsun-jeck

    rm convsun.tar.gz

    mv convsun-jeck/convsun ./convsun
    rm -rf convsun-jeck

}

check_convsun_download() {

    if [ -f ./convsun ]; then
        echo "File ./convsun already exists."
        DL_VERSION=$(cat convsun-version)
        if [ "$VERSION" = "$DL_VERSION" ]; then
            echo "Desired version $VERSION is already installed."
        else
            echo "Desired version $VERSION is not installed."
            download_convsun
        fi

    else
        echo "File ./convsun does not exist."
        download_convsun
    fi

}

convert_template(){
    
    TEMPLATE_DIR=$1

    FILE="$TEMPLATE_DIR/files/.upsun/config.yaml"

    if [ -f $FILE ]; then
        echo "File $FILE already exists."
        rm $FILE
        echo "File $FILE deleted ahead of regeneration."
    else
        echo "File $FILE does not exist."
    fi

    # Run the conversion, keeping track of the changes made.
    rm -rf $TEMPLATE_DIR/docs && mkdir $TEMPLATE_DIR/docs
    ./convsun --src $TEMPLATE_DIR/files > $TEMPLATE_DIR/docs/migrate-platformsh-to-upsun.md

    # Validate the configuration.
    echo "Validating configuration"
    cd $TEMPLATE_DIR/files
    # @todo: this isn't outputting to the correct file, just to stdout.
    upsun app:config-validate > ../docs/cli-validate-config.md
    cd $ROOT
}

convert_templates_loop() {

    DIRECTORY="$(pwd)/templates"

    find "$DIRECTORY" -mindepth 1 -maxdepth 1 -type d | while read -r dir; do
        printf "\n*******************************************************************************************************\n\n"
        printf "* Processing template: $dir\n\n"
        convert_template $dir
    done

}

check_convsun_download

convert_templates_loop
