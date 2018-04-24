# AutoCommit
Fastlane自动提交合并代码
>平常在公司用git提交代码好几行命令,敲都敲吐了,用sourceTree工具切换提交也点吐了.就随手用fastlane写了一个自动化脚本,在自己分支一键提交后将代码合并到远程仓库再切回自己分支.

执行:fastlane doit fr:xx to:xx m:'xxxx'

效果:

<img src="http://111.231.87.204/wp-content/uploads/2018/04/Snip20180418_5-300x288.png" alt="" width="300" height="288" class="alignnone size-medium wp-image-62" />

命令拆解:

fastlane:执行fastlane命令

doit:自己命名的已编辑好由各个action组成的航道lane模块命令(主体脚本)

fr:参数(from缩写,从哪个分支)

to:参数(往哪个分支合并代码)

m:参数(描述)

示例:从自己dev分支往远程master分支提交合并代码,只需:fastlane doit fr:dev to:master m:’xxxx’

一.安装fastlane:

1.确保安装ruby:ruby -v

2.确保xcode-select安装:xcode-select --install

3.安装:sudo gem install fastlane

4.查看版本:fastlane --version

二.如何使用自动化提交代码脚本:

1.将脚本文件夹拖入到项目主目录下

2.在.gitignore添加

	fastlane/report.xml
  
        fastlane/Preview.html
  
	fastlane/screenshots
  
	fastlane/test_output
