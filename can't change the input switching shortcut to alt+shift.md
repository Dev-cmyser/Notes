O[[linux]]


1. Set forward switch to Shift+Alt(left)
    
    ```
    gsettings set org.gnome.desktop.wm.keybindings switch-input-source "['<Shift>Alt_L']"
    ```
    
2. Set backward switch to Alt+Shift(left)
    
    ```
    gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward "['<Alt>Shift_L']"
    ```
    

To see the current setting value use _get_ command:

```
gsettings get org.gnome.desktop.wm.keybindings switch-input-source
gsettings get org.gnome.desktop.wm.keybindings switch-input-source-backward
```

Examples of other key bindings:

```
<Primary>space, Alt_R, <Shift>Control_R, <Shift><Super>space
```

Changes will take effect immediately.
