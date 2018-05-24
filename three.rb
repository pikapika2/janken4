def hand(x)
case x
when 0 then puts"\n一人はグーです"
when 1 then puts"\n一人はチョキです"
when 2 then puts"\n一人はパーです"
end
end

def judge(y, z, h)
t = y - z
case t
when 0 then 
when 1, -2 then 
when -1, 2 then h = h + 1
end

return h
end

def max(m1, m2, m3)
m = m1
if(m < m2) then m = m2 end
if(m < m3) then m = m3 end

return m
end

def battle 

n1 = 0
n2 = 0
n3 = 0

while 1
	print("数字を入力\n0グー\n1チョキ\n2パー\n")
	a = gets.to_i
	if(a >= 0 && a <= 2) then break end
	print("もう一回\n")
end

b = rand(2)
c = rand(2)

d = a + b + c

hand(b)
hand(c)

if(d % 3 == 0) then battle end
 
n1 = judge(a, b, n1)
n2 = judge(b, a, n2)
n2 = judge(b, c, n2)
n3 = judge(c, b, n3)
n3 = judge(c, a, n3)
n1 = judge(a, c, n1)

m = max(n1, n2, n3)

if(m == n1) then puts"あなたは勝ち" end
if(m == n2) then puts"com2の勝ち" end
if(m == n3) then puts"com3の勝ち" end

end

battle

