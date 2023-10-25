pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
-- foto indica l'animale giusto

cstore()
load("build.p8", nil, 2)

__gfx__
0000008888888ddddddddddd000000007777777777000000800000008888888844444000dddd6dddccc0ccccccc0ccccccc0ccccccc0cccc0000000300000003
00000886668f6ddddddddddd00000000755555555720000080000000888555880aaa0000dd6d06ddc0777cccc0777cccc0777cccc0777ccc0000003300000330
000088666f8ff6dddddddddd000000007555555557200000800000008888885808aa0000dd0d776dc77717ccc77717ccc77717ccc77717cc0000033300033300
000888666f8fffdddddddddd09000000755555555720000080000000885888580aa80000dd7d717dc7777eccc7777eccc7777ecc07777ecc0000033300333000
008888666f8fff6ddddddddd097990007555555557200000800e0e008558885800a00000dd7d77edc00000ccc00000ccc00000ccc00000cc0000033303330000
08888888888888888888888d09799990755555555720000080ddd0005555558800a00000ddddddddc77077ccc70777ccc77707ccc77777cc0000033303300000
88888888888888888888888d0979900075555555572000008ddd1d008558888800000000ddddddddc77777ccc777770c077777cc0777770c00000bbb30000000
88ddddd88888888ddddd88dd090000007555555557200000eddddde08858888800000000ddddddddc0ccc0cccc0ccccccccc0ccccccccccc0000033300000000
dd1002ddddddddd1002ddddd00000000755555555720000000000000eeeeeee00000000000000000000000000000000000000000000000000000033333333333
dd0000ddddddddd0000ddddd00000000755555555720000000000000eee7eee00000000000000000000000000000000000000000000000000000033344444444
dd2001ddddddddd2001ddddd00090000755555555720000000000000eee7eee00000000000000000000000000000000000000000000000000000033344444444
dddddddddddddddddddddddd0009000077777777772000000eeeeeeeeeeeeee00000000000dddd00000000000000000000000000000000000000033344244444
dddddddddddddddddddddddd0099900077777777772000000ee7e7eeeeeeeeeeeeeeeee000dddd0000000000e0aaa00000000000000000000000033344444244
dddddddddddddddddddddddd0099900077777777772000000ee7e7eeeeeeeeeee7e7e7e000dddd00000aaa000eaaae0000a88000000000000000033344244444
dddddddddddddddddddddddd0077700002222222222000000eeeeeeeeeeeeeeee7e7e7e000aaaa0000aaaaa00eeeeaaa0a8880000000000000000bbb44444424
dddddddddddddddddddddddd0999990000000000000000000eeeeeeeeeeeeeeeeeeeeee00dddddd0eeeeeee0aaaaaaa000888000000000000000033342444444
0000bb000b000000555555555555555500000000000000d006000600044004400dd666d006000060090009000000bb0000077700333333333333330044444444
0bb0b900bb7000005555111111155555000000000dd00d6d0666660044444400dd66666d06666660099999000bbbb1b007777100333333333333330044444244
0b9bbbbb7d000000555111111111555500000000d66d0d6d0661616e04144140d61666107616616709199190b1bbbbbb0717dddd333333333333330044242444
bbbbbb7dd0000000555511111115555500000000ddddd1d0066666660444444e06666ddd0766e670799fff97bbb55500077d5500333333333333330044444244
bbdb7dd0000000005555555555555555000e0e000d1dddd00666ee00044ee000066e66d6766555670799f970bbba555a077dd550333333333333330044444444
bbbddd0000000000555555555555555500ddd0000dddddd606666ee00444ee000666ee00066556607f955597bbbaaaa00777dddd333333333333330042424444
bbbdd0000000000055555555555555550ddd1d006ddddd00066666000444400006666ee00066660009955900bbbaaa0077777770333333333333330044244442
bbbd0000000000000000000000000000eddddde006dddd00066666000444400006666000006666000f9999000bbaaa0077777770000dd0000000000044444244
0000000000000000000000000000000000000660000000d00600060004400440ddd666dd06000060090009000000bb0000077700000660000033333300077700
0000000000000000000000000000000000006d600dd00d6d0666660044444400d666666d06666660099999000bbbb1b007777100000660000033333307777770
000000000000000000000066600000000006dd60d66d0d6d0661616004144140061666107616616779199197b1bbbbb00717dddd000660000033333377777777
0666666600000000000666dd600000000006d600ddddd1d00666666e04444440066666600766e670079fff70bbbabbbb077ddddd000660000033333377777777
6ddddddd60000000066ddd66000000000006d6000d1dddd606666666044440e006666ddd766666677999f997bbbaaaa007777770000660000033333307777770
06666666000000006dd6660000000000006dd6000ddd11000666660004444000066666d6006666000f999900bbbaaa0007777770000660000033333300000000
00000000000000006660000000000000006d60006dddd1000666660004444000066660000066660009999900bbbaaa0077777770000660000033333300000000
000000000000000000000000000000000066000006dddd00066666000444400006666000006666000f9999000bbaaa0077777770000660000000000000000000
22222222229999222211112222111122233333325555555555555555555555555555555000000000aaaaaaaa00000000000000000aaaaaaaaaaaaa0000000000
22222222299999922111111221111112233333322222222255555555555555555555555000000aaaaaaaaaaaaaa00000000000aaaeeeeeeeeeeeeaaaaa000000
222222222999999221111112211111122333333222222222555555555555555555555550000aa99999999999aaaaa00000000eeeeeeeeeeeeeeeeeeeeaaa0000
222222222999999221111112211111122333333222222222555aaa5555aaaa5555aa55500099999999999999999aaa0000000eeeeeeeeeeeeeeeeeeeeeeaa000
2222222229999992211111122111111223333d3222222222555a555555555555555a555009999999999999999999aaa0000000eeeeeeeeeeeeeeeeeeeeeee000
2222222229999992211111122111111223333d3222222222555a555555555555555a5550999999999999999999999aaa0000000eeeeee4e4eeeeeeeeeeeee000
22222222222222222222222221111112233333322222222255555555555555555555555099999999999999999999999a0000000000eeee44eee4eeeeeeee0000
222222222999999221111112211111122333333222222222555555500000000055555550999999999994999949999999000000000000eee4ee4eeeeeee000000
333333333993993331131133311111333ffffff35555555555555550555555555555555599999999999499949999999a00000aaaa00000e444eeeee000000000
333333339993999311131113111111133f6666f333333333555555505555555555555555999999994994494999999999000eeeeeeaaaa0044eeee00000000000
333333339993999311131113111111133f6666f333333333555a5550555a5555555a5555099999999494444999999990000eeeeeeeeea0040000000000000000
333333339993999311131113111111133f6666f333333333555a555055aaaa55555aaa5500999999944444999999990000eeeee4ee4ee0040000000000000000
333333333333333333333333111111133ffffff333333333555a5550555a555555555555000999999944499999999000000eeeee444ee0040000000000000000
333333339993999311131113111111133ffff6f333333333555a5550555a5555555555550000099999944999999000000000eeeeee4400440000000000000000
333333339993999311131113111111133ffffff33333333355555550555555555555555500000009999444999000000000000000000400440000000000000000
333333339993999311131113111111133ffffff333333333555555505555555000000000000000000004440000000000000000000004404400000aaaaaa00000
fffffffff999999ff111111ff111111fff3333ff55555555555555505555555555555555bbbbbbbb00044400000000bbbb00000000004444000eeeeeeeaa0000
fffffffff999999ff111111ffffffffff333333fffffffff55555550555555555555555533b33bb3000444000000bb333bb0000000000444400eeeeeeeeaa000
fffffffff999999ff111111ff111111ff333333fffffffff555a555055555555555a55553333333300044400000b3333333b000000000044400eee44eeeee000
fffffffff999999ff111111ff111111ff333333fffffffff55aa555055aaaa5555aaaa55333333330004400000b33333333b0000000000444004444eeeeee000
fffffffff999999ff111111ff111111ff333363fffffffff55555550555a5555555555553333333300044000003333333333b0000000004440444ee44eeee000
fffffffff999999ff111111ff111111ff333333fffffffff55555550555a555555555555333333330044400000033333343330000000004444400eeeeeee0000
fffffffffffffffffffffffff111111ff333333fffffffff55555550555555555555555533333333004440000000343343333000000000444400000000000000
fffffffff999999ff111111ff111111ff333333fffffffff00000000555555500000000033333333004440000000334343330000000000444000000000000000
00000000000000000000000000000000000000000000000055555550000000000000000000000000004440000000034433000000000000444000000000bbb000
000aaa000000a0000000a000000a0000000000000000000055555550000000000333333333333300004440000000000400000000000004444000000003333b00
000aaa20000aaa000aaaaa0000aaaaa00000000000000000555a5550000000000333333333333300004444000000000400000000000004444000000033333b00
000aaa2000aaaaa00aaaaaa00aaaaaa2000000000000000055aa55500000000003333333333333000044440000000004000000000000044444000000333333b0
00aaaaa0000aaa220aaaaa2200aaaaa20000000000000000555a5550000000000050000000005000000444000000066666000000000004444400000003343300
000aaa22000aaa200022a220000a2222000000000ccccc00555a5550000000000333333333333300000444000000066666000000000004444400000000040000
0000a220000aaa20000002000000200000000000ccccccc055555550000000000050000000005000000444000000066666000000000004444400000006666600
0000020000002220000000000000000000000000ccccccc055555550000000000050000000005000000444000000006660000000000044444440000006666600
74747474747474747474969696969696000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0004444440000000000888111000000004444000000000003333333300000000000000000001ddddddddd0000001ddddddddd000000044000000000000000000
0044aaaaa4000000007888111100000004444444440000000000000000000000000000000001ddddddddd0000001d1d1d1d1d000000004011100002220033300
04aaaaa88a400000077788111120000000044444444000002222222200000001000000000001d1d1d1d1d0000001d1d1d1d1d000000300001100002200033000
44aa88a88a400000777788111220000000aaaaaa444200000000000000000001d00000000001d1d1d1d1d0000001d1d1d1d1d000000330000100002200330040
4aaa88aaaa40000066677711222000000888aaaaaa4200001111111100000001d00000000001d1d1d1d1d0000001ddddddddd000002033000110022000330444
4aaaaaaaaa40000066666412222000000888aaaaa22200000000000000000001d00000000001ddddddddd0000001ddddddddd000002203000010022003304400
4a88aa88aa4000006665544333300000088aaaaaa2000000eeeeeeee00000001d00000000001ddddddddd0000001d1d1d1d1d000022220300010020003000000
4a88aa88aa40000055555444333000000aaa888a22000000eeeeeeee00000001d00000000001d1d1d1d1d0000001d1d1d1d1d000000222000000000000000010
04aaaaaa440000000555544443000000aaaa888220000000eeeeeeee00000011dd00000000000000000000000001d1d1d1d1d000000002200000000000001110
00444444000000000055444400000000aaaa88a200000000eeeeeeee0000001ddd00000000000000000000000001ddddddddd000000000000000000000111110
00000000000000000000000000000000a8aaaa2200000000eeeeeeee0000001ddd00000000011100000000000001ddddddddd000011000000000000011110000
00000000000000000000000000000000888aa22000000000eeeeeeee0000001ddd0000000001ddd1100000000001d1d1d1d1d000011111000000000000000000
00000000000000000000000000000000888a220000000000eeeeeeee0001111ddd0000000001dddddd1100000001d1d1d1d1d000011111110000000022000000
0000000000000000000000000000000008a2200000000000eeeeeeee0001ddddddddd0000001ddddddddd0000001d1d1d1d1d000111100000000000002222000
000000000000000000000000000000000aa2000000000000eeeeeeee0001ddddddddd0000001ddddddddd0000001ddddddddd000000000000000000000022220
000000000000000000000000000000000a22000000000000eeeeeeee0001d1d1d1d1d0000001d1d1d1d1d0000001ddddddddd000000000000000000000000220
112221112221112221112221000000000020000000000000eeeeeeee0001d1d1d1d1d00000000000000000000001d1d1d1d1d000000000000000000000330000
122211122211122211122211000000000000000000000000000000000001d1d1d1d1d00000000000000000000001d1d1d1d1d000444403300020100000033330
211122211122211122211122000000000000000000000000111111110001ddddddddd00000000000011100000001d1d1d1d1d000440033000220110000003330
111222111222111222111222000000000000000000000000000000000001ddddddddd0000000001111ddd0000001ddddddddd000003330000220111000000300
112221112221112221112221000000000000000000000000222222220001d1d1d1d1d0000001111dddddd0000001ddddddddd000033300002220011000040000
221112221112221112221112000000000000000000000000000000000001d1d1d1d1d0000001ddddddddd0000001d1d1d1d1d000003300002200011100044000
211122211122211122211122000000000000000000000000333333330001d1d1d1d1d0000001ddddddddd0000001d1d1d1d1d000000000022200011000004400
111222111222111222111222000eeeee0000000eeeeeeee0000000000001ddddddddd0000001d1d1d1d1d0000001d1d1d1d1d000000000000200000000000000
222111222111222111222111000eeeee0000000eeeeeeee200000000000000000044400000000000000000000000000000000000000000000000000000000000
22111222111222111222111200eeeeee0000000eeeeeee2203333333333333000044400000000000000000000000000000000000000000000000000000000000
21112221112221112221112200eeeeee0000000eeeeeee2003333333333333000044440000000000000000000000000000000000000000000000000000000000
1222111222111222111222110eeeeeee0000000eeeeee22003333333333333000044440000000000000000000000000000000000000000000000000000070000
2221112221112221112221110eeeeeee0000000eeeeee20000500000000050000004440000000000000000000000000000000000000000000000000000000000
221112221112221112221112eeeeeeee0000000eeeee220003333333333333000004440000000000000000000000000000000000000000000000000000000000
112221112221112221112221eeeeeeee0000000eeeee200000500000000050000004440000000000000000000000000000000000000000000000000000000000
12221112221112221112221102222222000000022222200000500000000050000004440000000000000000000000000000000000000000000000000000000000
__gff__
008000000000808080000000000001010000008000000103018080808020090b08002222c0c0c0c0c0c0c0c0c0202009080000000000000000000000002020080c04040424062a222a202220202222200c0404042406282a2220202020202020040c040424062222222220212120202000008080002022002020202121202020
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001012100000000000000
__map__
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
27000000000000000000000000000a0600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000004545450000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000004026400000000000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000004040400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0008000000004041400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000004040400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000555555555500000008000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1300001300505150520800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4722234800505050505000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000005600505250515000656565000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000005600505050505000606160000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000005847474747474748606060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000080000000000000058474747474700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000045454545450000000000080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000040424027400000004c4d4e4f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000040404040400000005c5d5e5f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000004040404140000000006d6e6f00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007f01004044404040000078797d7e0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
