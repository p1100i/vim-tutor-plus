# Vim tutor plus
> after you've done the vim tutor

## Notes
- get comfortable before using it in work
- use english keyboard layout
- execute `vimtutor` for getting first steps
- increase key repeat speed `xset r rate 200 35 &`
- avoid mouse/arrows
- https://github.com/mhinz/vim-galore
- http://vim-adventures.com

## Setup playground
```
sudo useradd -m -d /home/tmp tmp
sudo su tmp
cd
```

## Something new every day
```
vim -x secret.txt
:set cm=blowfish2
```

## Modes `:h vim-modes`
- normal
  - cli (executing command => :wq)
  - (ex mode)
- insert (/ replace)
- visual (/ visual-line / visual-block)
- select (Meh..)

## Views
- :h buffers
- :h windows
- :h tabs

## Basic
```
hjkl            " moving into directions
i               " enter insert mode
ESC / C-c       " back to normal mode
u / C-r         " undo / redo
yy              " copy line
p               " paste
.               " repeat last action
:q / :w / :wq   " exit / save / save-exit
:set cursorline " to see where we are
:set number     " see line numbers
```

## Help
> http://vim.wikia.com/wiki/Learn_to_use_help

```
:h <pattern>    " documentation for pattern
C-] / C-t       " stack based tag jump [into / back]
C-i / C-o       " navigate between jumps [next / prev]
```

## Navigation
```
hjkl          " moving
H / M / L     " cursor to [top / mid / bot] of window
0 / $         " jump to [beg / end] of line
w / b / e     " jump to [next / last / end] of word
W / B / E     " jump to [next / last / end] of WORD
% / () / {}   " jump (braces / sentence / paragraph)
/ / ?         " match and jump to [next / previous]
* / #         " match under cursor [next / previous]
n / N         " jump to [next / previous] match
zz / zt / zb  " reposition to [mid / top / bot]
:<lineNumber> " jump to given line
m-<char>      " mark a section
`-<char>      " jump to marked section
gg / G        " jump to [top / bottom]
gi            " jump to last insert point
K             " open `man` by current word
```

## Windows
```
:sp / :vs       " split [horizontal / vertical]
C-w s / C-w v   " split [horizontal / vertical]
C-w _           " maximize
C-w =           " equalize
C-w <direction> " switch window
:sp .           " split with directory view
:sp %:h/<path>  " using special vars
```

## Editing
```
i / a             " insert [before / after]
I / A             " insert [beg-of-line / end-of-line]
s / S             " delete [character / line] and insert
C                 " delete from cursor and insert
c-<movement>      " delete by movement and insert
o / O             " insert new line [below / above]
r / R             " replace [char / continuosly]
~                 " toggle case
J                 " join line
y-<movement> / yy " yank (copy) [movement / line]
d-<movement> / dd " cut the [movement / line]
p / P             " paste [from / before] postion
C-x C-p           " complete by words in file
C-x C-f           " complete by files in path
set [no]paste     " copy / paste from system clipboard
< / > -<movement> " indent
=                 " auto-indent
```

## Visual mode
```
v               " character-based visual mode
S-v             " line-based visual mode
C-v             " block-based visual mode
C-v S-i         " mass insert on visual block selection
gv              " start visual mode with last selection
```

## Scripting
```
q-<char>              " start recording a macro
@-<char>              " try to play macro
<number>-<command>    " repeat the command
:!<shell>             " execute a given shell command
:%s/<search>/<rep>/gc " search'n'replace
:reg                  " listing the registers (0/-)

C-r <reg>             " insert register content
:%s/C-r--/C-r-0/gc    " make use of registers
:w <new-name>         " save as
:g                    " execute command for match
:g <search>/d         " match string and delete line
:v <search>/d         " mismatch string and delete line
:normal gg=G
:g <search>/t.|s/./=/g

" Some nice register magic
:history        " get history
:redir @a>      " redirect into register a
:ls             " list buffers
:history : -10  " get last 10 items from history
:redir end      " stop redirection
"ap             " access register a and paste
```

## .vimrc
- use version control for it
- source a vimrc file by `:so <path>`
- to try .vimrc in this example execute the following:
```
cd; git clone https://github.com/p1100i/vim-tutor-plus.git dotfiles
cd; ln -s $HOME/dotfiles/vim/vimrc.vim .vimrc
vim -u ~/.vimrc  # start vim with only one .vimrc
```

## A plugin manager (Vundle)
> https://github.com/VundleVim/Vundle.vim

- install by `cd; git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim`
- remove comment from `.vimrc`
- start vim and `:PluginInstall`

## Teardown playground
`userdel -r tmp`

## Copy-paste system clipboard
If your Vim is compiled w/ +clipboard (`:echo has('clipboard')` should not return 0) you can use the * and + registers.
Otherwise, use https://github.com/christoomey/vim-system-copy.
> no wonder, the playground user has no Xsession...

## Videos
- https://www.youtube.com/user/ThoughtbotVideo/search?query=vim
- https://vimeo.com/user1690209 (Derek Wyatt)
