if !( has('gui_running') || &t_Co==256 ) | finish | endif

call css_color#init('css', 'extended', 'scssAttribute,scssComment,scssVariableValue,scssMap,scssMapValue,sassCssAttribute,cssComment')
