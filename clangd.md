### 构建 LLVM 套件

从 [Download LLVM releases](https://releases.llvm.org/) 下载 LLVM 并编译

配置系统环境变量

测试：

```
clang --version
clangd --version
```

### 安装 VS Code 插件

- clangd

### 配置 clangd

#### VS Code 配置

```json
{
    "editor.inlayHints.enabled": "offUnlessPressed",
    "clangd.arguments": [
        "--query-driver=clang",
        "--compile-commands-dir=${workspaceFolder}/",
        "--log=error",
        "--background-index",
    ],
    "clangd.path": "clangd",
    "clangd.fallbackFlags": [],
    "editor.indentSize": "tabSize",
    "editor.fontLigatures": false,
}
```

#### 项目配置

在项目目录的 `.clangd` 文件中，如果没有新建一个

```yaml
CompileFlags:
  Remove: [
    -mabi=lp64,
    -fno-allow-store-data-races,
    -fconserve-stack,
  ]
  Add: [
    -I./tools/testing/selftests/bpf,
    -I./include,
    -I/usr/include/aarch64-linux-gnu,
    --target=aarch64-linux-gnu,
  ]

Diagnostics:
  ClangTidy:
    Add: [
      
    ]
    Remove: [
      bugprone-*,
    ]
```

详细配置信息：[Configuration (llvm.org)](https://clangd.llvm.org/config)

### 生成 compile_commands.json

如果项目支持 CMake，可以使用 CMake 直接生成。

如果不支持，可以安装 bear 工具，使用下面的命令生成 compile_commands.json 文件：

```shell
# 必须从头编译，否则 compile_commands.json 中内容不全
make clean
# 生成 compile_commands.json
bear -- make
```