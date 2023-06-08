%dw 2.0
output application/json
---
{
message:payload.message,
values: payload.values map
{
dt:$ mapObject ((value, key, index) ->
if(value ~= 'Murray')
{
'secondname': value
}else if(value ~= 'John.M')
{
'thirdname': value
}else
(key): value)
}.dt} 


//here we are trying to changing the key name by using if condition if the value matches the name then the key changes accorditing to our required name, or elsw print as original key value pairs