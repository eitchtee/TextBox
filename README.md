# TextBox

TextBox is a simple plugin for Lintalist that allows for multi-line input with customizable width and height.

## Installation
Refer to Lintalist's [HOW TO WRITE A PLUGIN FOR LINTALIST BUNDLES/SNIPPETS](https://github.com/lintalist/lintalist/blob/master/plugins/readme-howto.txt) for a guide on how to install this plugin.

## Usage
```
[[TextBox=Text|numberOfLines|width]]
```

`Text` is the Text that will be shown on top of the textbox

`numberOfLines` is an intenger defining the number of lines the textbox will have. Defaults to 5

`width` is the width of the textbox. Defaults to 300

## Quirks
- While both `numberOfLines` and `width` are optional, you **must** set `numberOfLines` in order to set the width.
