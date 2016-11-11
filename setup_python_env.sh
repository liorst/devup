set -e

# pyenv
#sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev xz-utils
#sudo pip install --egg pyenv

#echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
#echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
msgs="\
	To create a virtualenv run:\n\
	pyenv virtualenv <ve_name>\n\
	next run \n\
	pyenv install <python-version>\n\
	pyenv activate <ve_name>\n\
	"


export python_env_msg="${msgs}"
export MESSAGES=$MESSAGES:python_env_msg
