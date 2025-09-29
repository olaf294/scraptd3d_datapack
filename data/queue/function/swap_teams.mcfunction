tag @a[team=Red] add already_red
tag @a[team=Blue] add already_blue
team join Blue @a[tag=already_red]
team join Red @a[tag=already_blue]
tag @a[team=Red] remove already_blue
tag @a[team=Blue] remove already_red
