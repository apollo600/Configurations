#!/bin/bash

install_project() {
    local step="$1"
    local project_name="$2"
    local install_command="$3"

    # 提示用户是否要安装指定的项目
    echo -n "Step $step: Install $project_name [Y/n] "

    # 读取用户输入
    read -r response

    # 检查用户输入是否为空，若为空则默认为 Y
    if [[ -z "$response" ]]; then
        response="y"
    fi

    # 根据用户输入进行操作
    if [[ "$response" =~ ^[Yy]$ ]]; then
        echo "Installing $project_name..."
        # 执行安装命令或调用安装函数
        eval "$install_command"
    elif [[ "$response" =~ ^[Nn]$ ]]; then
        echo "Skipping $project_name installation."
    else
        echo "Invalid input. Please enter Y or n."
    fi
}

# git proxy
install_git_proxy() {
    set -x

    sudo apt install corkscrew
    
    cat <<EOF >> $HOME/.ssh/config
Host github.com
    ProxyCommand corkscrew 127.0.0.1 7890 %h %p
EOF
}
install_project 1 "Git Proxy" "install_git_proxy"

# git proxy
install_git() {
    set +x

    # alias
    git config --global alias.st status
    echo -n "Git User name: "
    read -r response
    git config --global user.name $response
    echo -n "Git User email: "
    read -r response
    git config --global user.email $response
}
install_project 2 "Git" "install_git"

# zsh
install_zsh() {
    ROOT_DIR=$(pwd)

    set -x

    # 安装 zsh
    sudo apt install zsh

    # 安装 oh-my-zsh 并设置插件
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    cd $HOME/.oh-my-zsh/plugins
    git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git
    git clone --depth=1 https://github.com/zsh-users/zsh-completions.git
    git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git

    # 替换 .zshrc 并激活
    cp $ROOT_DIR/.zshrc $HOME/.zshrc
    chsh -s $(whereis zsh | awk '{print $2}')

    set +x
    echo "Install finished! Please restart your terminal."
}
install_project 3 "ZSH" "install_zsh"

# shell tools
install_shell_tools() {
    set -ex

    curl -sS https://starship.rs/install.sh | sh
    eval "$(starship init zsh)"
    sudo apt install tldr fzf
    tldr -u # 更新 tldr 缓存

    set +ex
    echo "Install finished! Please restart your terminal."
}
install_project 4 "Sheel Tools" "install_shell_tools"

