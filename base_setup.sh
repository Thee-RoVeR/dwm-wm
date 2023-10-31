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

check_install_paru() {
    # List of packages you want to install
    packages_to_install=("picom" "bashtop" "bash-completion" "ranger" "nvidia-settings" "xorg-xev" "xorg-xprop" "flameshot" "kitty" "noto-fonts" "noto-fonts-cjk" "noto-fonts-emoji" "ttf-font-awesome" "ttf-jetbrains-mono" "ripgrep" "unzip" "npm" "nodejs" "neovim" "clang" "llvm" "thunar" "gvfs" "feh" "xwallpaper" "unclutter" "xorg-xsetroot" "pamixer" "dmenu" "galculator" "github-cli" "xclip" "awesome-terminal-fonts" "lsd" "ttf-nerd-fonts-symbols")

    for pkg in "${packages_to_install[@]}"; do
        if ! paru -Q "$pkg" &> /dev/null; then
            paru -S "$pkg" --noconfirm
        else
            echo "$pkg is already installed. Skipping installation."
        fi
    done
}

#base_pkgs(){

 #   paru -S picom bashtop bash-completion ranger nvidia-settings xorg-xev xorg-xprop flameshot kitty noto-fonts noto-fonts-cjk noto-fonts-emoji ttf-font-awesome ttf-jetbrains-mono ripgrep unzip npm nodejs neovim clang llvm thunar gvfs fastfetch feh xwallpaper unclutter xorg-xsetroot pamixer dmenu galculator github-cli xclip awesome-terminal-fonts lsd ttf-nerd-fonts-symbols --noconfirm 
 #}


git_install
aur_install
check_install_paru


