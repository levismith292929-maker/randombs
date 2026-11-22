advancement revoke @s only aote:use_pet_remover
function aote:pet/remove_silent
tellraw @s {"text":"Your pet has been removed. Your normal stats have been restored.","color":"red"}
