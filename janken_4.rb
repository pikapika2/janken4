nd(x)
case x
when 0 then puts"\n一人はグーです"
when 1 then puts"\n一人はチョキです"
when 2 then puts"\n一人はパーです"
end
end

def judge_draw(a)
x = draw_data(a[0], a[1], a[2])
y = draw_data(a[0], a[2], a[3]) 
z = draw_data(a[0], a[1], a[3]) 
w = draw_data(a[1], a[2], a[3])
return w + x + y + z

end

def draw_data(a1, a2, a3)
v = a1 + a2 + a3
if(a1 == a2 && a2 == a3) then return 5 end
if(v % 3 == 0) then return 1 end

return 0

end

def judge(y, z)
t = y - z
case t 
when -1, 2 then return 1
end

return 0
end

def max_search(n)
max = n[0]

(1..3).each do |j|
if(max < n[j]) then max = n[j] end
end

return max
end

def battle 

n = [0, 0, 0, 0]
a = [0, 0, 0, 0]

while 1
	print("数字を入力\n0グー\n1チョキ\n2パー\n")
	a[0] = gets.to_i
	if(a[0] >= 0 && a[0] <= 2) then break end
	print("もう一回\n\n")
end


(1..3).each do |x|
	a[x] = rand(2)
end

a.each do |x|
	hand(x)
end

draw = judge_draw(a)

if(draw == 20) then  puts"\nあいこになりました\n\n"
             battle

elsif(draw < 5 && draw > 0) then puts"\nあいこになりました\n\n"
                   battle 
else 

	k = 0

	while k < n.length do
		k2 = 0

		while k2 < a.length do
			n[k] += judge(a[k], a[k2]) 
			k2 += 1
		end
	k += 1
	end

	win = max_search(n)


	if(win == n[0]) then puts"あなたは勝ち" end
	if(win == n[1]) then puts"com2の勝ち" end
	if(win == n[2]) then puts"com3の勝ち" end
	if(win == n[3]) then puts"com4の勝ち" end

end
end

battle

