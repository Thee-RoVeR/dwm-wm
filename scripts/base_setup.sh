git_install(){
    if ! command -v git &> /dev/null; then
        echo -e "Installing Git in 2s"
        sleep 2s
        sudo pacman -S git --noconfirm
    else
        echo "Git already installed. Skipping installation."
        sleep 3s
    fi
    cd ~
}

aur_install() {
    if ! command -v paru &> /dev/null; then
        echo "paru is not installed. Installing paru..."
        sleep 3s
        git clone https://aur.archlinux.org/paru.git
        cd paru
        makepkg -si --noconfirm
    else
        echo "paru already installed. Skipping installation."
        sleep 3s
    fi
}

check_install_starship() {
    if ! command -v starship &> /dev/null; then
        echo "Starship is not installed. Installing Starship..."
        sleep 3s
        cargo install starship
    else
        echo "Starship is already installed. Skipping installation."
        sleep 3s
    fi
}
check_and_install_pkg() {
    # List of packages you want to install
    packages_to_install=("picom" "eza" "fish" "libreoffice-fresh" "xinit-xsession" "bashtop" "bash-completion" "ranger" "nvidia-dkms" "linux-zen-headers" "nvidia-settings" "xorg-xev" "xorg-xprop" "flameshot" "kitty" "noto-fonts" "noto-fonts-cjk" "noto-fonts-emoji" "ttf-font-awesome" "ttf-jetbrains-mono" "ripgrep" "unzip" "npm" "nodejs" "neovim" "clang" "llvm" "thunar" "gvfs" "feh" "xwallpaper" "unclutter" "xorg-xsetroot" "pamixer" "dmenu" "galculator" "github-cli" "xclip" "awesome-terminal-fonts" "lsd" "ttf-nerd-fonts-symbols")

    # Create a list of packages that are not installed
    packages_to_install_not_installed=()

    for pkg in "${packages_to_install[@]}"; do
        if ! paru -Q "$pkg" &> /dev/null; then
            packages_to_install_not_installed+=("$pkg")
        else
            echo "$pkg is already installed. Skipping installation."
        fi
    done

    if [ ${#packages_to_install_not_installed[@]} -gt 0 ]; then
        echo "Installing the following packages: ${packages_to_install_not_installed[@]}"
        yes | paru -S "${packages_to_install_not_installed[@]}"
    else
        echo "All packages are already installed. Skipping installation."
    fi
}
git_install
aur_install
check_install_starship
check_and_install_pkg

