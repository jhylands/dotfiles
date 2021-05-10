apt update
apt install vim zip unzip ctags curl tmux fzf httpie bat htop python3-pip lm-sensors progress net-tools
apt install r-base
pip3 install ptpython yamllint flake8 mypy
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
