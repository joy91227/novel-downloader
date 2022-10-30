#!/bin/sh

# supply the name of the novel as shown in the last part of the url
# this will download the novel in your current working directory
download() {
    local novel_name=$1

    wget -r --no-host-directories --domains=zhenhunxiaoshuo.com --convert-links --adjust-extension -P $novel_name --accept-regex ^https://www.zhenhunxiaoshuo.com/[0-9]+.html$ "https://www.zhenhunxiaoshuo.com/$novel_name"

    echo done
}

# a new version that will download the contents in a .zip

download_zip() {
    local novel_name=$1

    wget -r --no-host-directories --domains=zhenhunxiaoshuo.com --convert-links --adjust-extension -P $novel_name --accept-regex ^https://www.zhenhunxiaoshuo.com/[0-9]+.html$ "https://www.zhenhunxiaoshuo.com/$novel_name"

    zip -v -m -r $novel_name.zip $novel_name
    return
}
