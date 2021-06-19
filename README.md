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
- `numberOfLines` and `width` are optional. `numberOfLines` can be empty to use the default value (5), example `[[TextBox=Text||500]]`
- Unlike the Input plugin that continues by pressing Enter, due to the multi-line nature of TextBox you will need to click the Ok button (or press Tab and Enter).

## Screenshots
![image](https://user-images.githubusercontent.com/10510126/122600924-e567b800-d046-11eb-822a-39c5ddb2fec0.png)

![image](https://user-images.githubusercontent.com/10510126/122600928-e698e500-d046-11eb-905a-4ce169432489.png)
