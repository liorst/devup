TMUX_PATH = ${HOME}/.tmuxifier
git clone https://github.com/jimeh/tmuxifier.git $TMUX_PATH
if [[ ! ":$PATH:" == *":$TMUX_PATH/bin:"* ]]; then
	export $PATH="$TMUX_PATH/bin:$PATH"
fi


