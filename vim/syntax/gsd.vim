" syntax/gsd.vim

syn region gsdProject start="\_^[0-9A-Z]\{5\}\:" end="\_$"
syn region gsdList    start="\_^\:" end="\_$"

"syn match gsdActionId  start="\_^  "  end="\:" contains=@NoSpell
"syn region gsdProjectId start="\_^P\:" end=" " contains=@NoSpell
"syn region gsdItemId    start="\_^L\:" end=" " contains=@NoSpell

"syn region gsdProjectDescription start="\_^P\:[0-9A-Z]\{5}\: " end="\_$" contains=@NoSpell

"hi def link gsdActionId Comment
"hi def link gsdProjectId Comment
"hi def link gsdProjectDescription Keyword
"hi def link gsdItemId Comment
hi def link gsdProject String
hi def link gsdList    String

