#!/bin/sh
#查看项目依赖关系树
#参考 https://stackoverflow.com/questions/20989317/multiple-dex-files-define-landroid-support-v4-accessibilityservice-accessibility
#参考 http://www.mobibrw.com/2016/3777
gradle -q mymodule:dependencies

#结果中星号标记的项表示忽略，即不下载