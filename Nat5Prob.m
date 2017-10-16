format compact
clear
clc

ms_question = 'How many Mystical Scrolls do you have?\n';
ms = input(ms_question);
es_question = 'How many Exclusive Summons do you have?\n';
es = input(es_question);
ld_question = 'How many Light & Dark Scrolls do you have?\n';
ld = input(ld_question);
lg_question = 'How many Legendary Scrolls do you have?\n';
lg = input(lg_question);

Prob = (1 - [(.995)^ms * (.995)^es * (.9965)^ld * (.935)^lg])*100;

Output = sprintf('You have a %.2f percent chance to get at least 1 Natural 5 star', Prob)

if Prob <= 50
temp = Prob;
new_ms = ms;
while(temp < 50)
    new_ms = new_ms + 10;
    temp = (1 - [(.995)^new_ms * (.995)^es * (.9965)^ld * (.935)^lg])*100;
end
get = new_ms - ms;
Output2 = sprintf(['You should get %d more Mystical Scrolls before summoning to', ... 
                  ' have a %.2f percent chance to get at least 1 Natural 5 star.'], get, temp)
end 
 
    