-- Solarized color codes Copyright (c) 2011 Ethan Schoonover
local lexers = vis.lexers

local fg = ',fore:default,'
local bg = ',back:default,'

lexers.STYLE_DEFAULT = bg..fg
lexers.STYLE_NOTHING = bg
lexers.STYLE_CLASS = 'fore:yellow'
lexers.STYLE_COMMENT = 'fore:101'
lexers.STYLE_CONSTANT = 'fore:141'
lexers.STYLE_DEFINITION = 'fore:81'
lexers.STYLE_ERROR = 'fore:89,italics'
lexers.STYLE_FUNCTION = 'fore:112'
lexers.STYLE_KEYWORD = 'fore:197'
lexers.STYLE_LABEL = 'fore:185'
lexers.STYLE_NUMBER = 'fore:141'
lexers.STYLE_OPERATOR = 'fore:197'
lexers.STYLE_REGEX = 'fore:green'
lexers.STYLE_STRING = 'fore:185'
lexers.STYLE_PREPROCESSOR = 'fore:112'
lexers.STYLE_TAG = 'fore:197'
lexers.STYLE_TYPE = 'fore:81'
lexers.STYLE_VARIABLE = 'fore:81'
lexers.STYLE_WHITESPACE = ''
lexers.STYLE_EMBEDDED = 'back:blue'
lexers.STYLE_IDENTIFIER = fg

lexers.STYLE_LINENUMBER = 'fore:250,back:237'
lexers.STYLE_CURSOR = 'fore:235,back:230'
lexers.STYLE_CURSOR_PRIMARY = lexers.STYLE_CURSOR..',blink'
lexers.STYLE_CURSOR_LINE = 'back:237'
lexers.STYLE_COLOR_COLUMN = 'back:237'
lexers.STYLE_SELECTION = 'back:239'
