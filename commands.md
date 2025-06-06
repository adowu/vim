## vim 命令总结

### 复制

复制 13行和15行的内容到16行

1. 13, 15 copy 16
2. 光标移动到13行行首，按 v 进入可视模式，光标移动到15行行尾，按y, 然后在16行按 p 即可复制

复制全部内容
1. ggyG
2. gg 跳到文件头，yG 从当前位置复制到文件末尾

复制 某个单词
1. 先按 w到单词首部，再按 ye (yank e单词的尾部)

### 方法跳转
1. brew install ctags
2. 在项目根目录下 执行 ctags -R ./*
3. control + ] 跳转到定义
4. control + t 回到上一处


### 撤销or还原

1. u 撤销
2. control + r 还原

### 清空文档

1. gg 跳转到顶部
2. dG 即可删除全部内容

### 行首or行末

1. 0 跳转到行首
2. $ 跳转到行末

### 行内移动
1. w 或 W 光标移动至下一个单词的单词首
2. b 或 B 光标移动至上一个单词的单词首
3. e 或 E 光标移动至下一个单词的单词尾


### 检索多文件

1. vimgrep or (:Ag)

    >a. :vimgrep /user/g **

    >b. 使用 :cw, :copen 可以打开该列表
    
    >c. Ag 命令mac电脑要安装 brew install the_silver_searcher


### 切分窗口

>:split or :vsplit

>control ww 切换窗口

>:q 关闭当前 :qall 关闭搜有  :only 保留当前

>control w +/- 缩放窗口

## nerdTree 命令总结

## 新建文件 
1. ma 在要创建文件的目录中按命令ma然后键入你要创建的文件名称即可。

### 删除文件 
1. md 在要删除的文件上按命令md然后输入y回车即可。

### 移动文件or修改文件名 
1. mm 在要修改的文件上按命令mm然后输入对应的目录和名称回车即可。

### 跳转
1. P 跳到根结点
2. p 跳到父结点
3. gT 前一个 tab
4. gt 后一个 tab

### 打开or关闭
1. t 标签页打开
2. :q 关闭当前窗口

### 调整目录窗口大小
:vertical resize +5


