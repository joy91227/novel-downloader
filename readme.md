# HTML Downloader for Novels on [Zhen Hun Xiao Shuo](https://www.zhenhunxiaoshuo.com/)

## How-To

## Wget Bible
https://www.gnu.org/software/wget/manual/wget.html#Download-Options


## These work
wget -r -l 1 --domains=zhenhunxiaoshuo.com --page-requisites --convert-links --adjust-extension --accept-regex "https://www.zhenhunxiaoshuo.com/18(40[7-9]|4[1-9][0-9]|5[0-2]0|52[0-7]).html$" zhenhunxiaoshuo.com/huanxiangnongchang/


wget -r --domains=zhenhunxiaoshuo.com --convert-links --adjust-extension --accept-regex ^https://www.zhenhunxiaoshuo.com/[0-9]+.html$ www.zhenhunxiaoshuo.com/huanxiangnongchang/

## This works best
wget -r --no-host-directories --domains=zhenhunxiaoshuo.com --convert-links --adjust-extension -P kulouhuanxitu --accept-regex ^https://www.zhenhunxiaoshuo.com/[0-9]+.html$ https://www.zhenhunxiaoshuo.com/kulouhuanxitu
