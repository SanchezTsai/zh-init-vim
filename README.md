# init.vim

这是我的 neovim 配置文件。init.vim 文件加载了 /init 目录下的配置文件，如作更改在 /init 目录下进行即可。

此项目使用了 vim-plug 以用于加载插件。



**/init 目录内容：**

- init-basic.vim   -- 基础配置文件
- init-config.vim  -- 正常模式下的配置，加载在 init-basic.vim 之后
- init-plugins.vim -- 插件配置文件
- init-style.vim   -- 个性化配置文件（或风格文件）
- init-tabsize.vim -- Tab 键（缩进）配置文件

## 如何使用

放置 zh-init-vim/ 路径下的全部文件至你的用户配置目录下即可。

**Neovim:**

复制到 `~/.config/nvim/` 目录下。

**Vim:**

更改 init.vim 为 .vimrc 放至 `~/.` （即用户配置目录下）。

其它系统不多赘述，网上查询即可。
