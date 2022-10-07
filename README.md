# JetBrains Coding Styles
These are a bit dated and required for work, not all of these preferences 
I actually agree with personally.

# Neovim Config
See: [Neovim Readme](./nvim/README.md) for more information.

# Powershell Scripts

## Windows (/windows)

### Jumplist - jumplist.ps1
This is a basic dictionary for Powershell which lets you customize jumping
to different custom locations. It does not have any guard rails and will let you
mess things up, but it works well for smoothly moving around.

Usage:
```
# Add conf as the current location, add newloc with a full path
F:\Configs\> at conf .
F:\Configs\> at newloc X:\NewLocation\

# Jump to newloc
F:\Configs\> gt newloc
X:\NewLocation\>

# Jump to conf
X:\NewLocation\> gt conf

F:\Configs\>
```
