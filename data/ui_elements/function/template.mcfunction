$item replace block $(coords) container.$(slot) with $(item)[custom_name='{"bold":$(nbold),"color":"$(ncolor)","italic":$(nitalic),"obfuscated":$(nobfuscated),"strikethrough":$(nstrikethrough),"text":"$(name)","underlined":$(nunderlined)}',lore=['{"bold":$(lbold),"color":"$(lcolor)","italic":$(litalic),"obfuscated":$(lobfuscated),"strikethrough":$(lstrikethrough),"text":"$(lore)","underlined":$(lunderlined)}'],custom_data={ui:true}]
$execute as @a if items entity @s player.cursor $(item)[custom_name='{"bold":$(nbold),"color":"$(ncolor)","italic":$(nitalic),"obfuscated":$(nobfuscated),"strikethrough":$(nstrikethrough),"text":"$(name)","underlined":$(nunderlined)}',lore=['{"bold":$(lbold),"color":"$(lcolor)","italic":$(litalic),"obfuscated":$(lobfuscated),"strikethrough":$(lstrikethrough),"text":"$(lore)","underlined":$(lunderlined)}'],custom_data={ui:true}] run $(command)
#$clear @a $(item)[custom_name='{"bold":$(nbold),"italic":$(nitalic),"obfuscated":$(nobfuscated),"strikethrough":$(nstrikethrough),"text":"$(name)","underlined":$(nunderlined)}',lore=['{"bold":$(lbold),"italic":$(litalic),"obfuscated":$(lobfuscated),"strikethrough":$(lstrikethrough),"text":"$(lore)","underlined":$(lunderlined)}'],custom_data={ui:true}]

$data merge block $(coords) {CustomName:'{"bold":$(bnbold),"color":"$(bncolor)","italic":$(bnitalic),"obfuscated":$(bnobfuscated),"strikethrough":$(bnstrikethrough),"text":"$(blockname)","underlined":$(bnunderlined)}'}



