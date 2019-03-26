import sys

file_name = sys.argv[1]

f = open(file_name, "r")

i = 0
values = [[0,0,0],[0,0,0],[0,0,0]]
for line in f:
    values[i] = line.split("\t")
    values[i][2] = values[i][2].strip()
    print(values[i])
    i += 1

i = 0
a = int(values[0][0])
b = int(values[0][1])
c = int(values[0][2])
d = int(values[1][2])
e = int(values[2][2])
f = int(values[2][1])
g = int(values[2][0])
h = int(values[1][0])
i = int(values[1][1])
sum_1 = 8*max(max(b,g)+(a+h), max(a,d)+(b+c), max(c,f)+(d+e), max(e,h)+(f+g))
sum_2 = 3*(a+b+c+d+e+f+g+h)
sum = sum_1 - sum_2

if (sum > 383): 
    print("have an edge")
else:
    print("no edge")

print("=====================================")

dir_E=5*(c + d + e) - 3*(a + b + f + g + h)
dir_W=5*(a + g + h) - 3*(b + c + d + e + f)
dir_N= 5*(a + b + c) - 3*(d + e + f + h + g)
dir_S= 5*(e + f + g) - 3*(a + b + c + d + h)
dir_NW= 5*(a + b + h) - 3*(c + d + e + f + g)
dir_SE= 5*(d + e + f) - 3*(a + b + c + g + h)
dir_NE= 5*(b + c + d) - 3*(a + e + f + g + h)
dir_SW= 5*(f + g + h) - 3*(a + b + c + d + e)

second_sum = max(dir_E, dir_W, dir_N, dir_S, dir_NW, dir_SE, dir_NE, dir_SW)
if (second_sum > 383):
    print("should have an edge")
else:
    print("should have NO edge")
print("sum_1 = " + str(sum_1) + ", sum_2 = " + str(sum_2) + ", sum = " + str(sum) + ", benchmark sum = " + str(second_sum))