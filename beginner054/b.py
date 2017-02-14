# -*- coding:utf8

N,M = [int(x) for x in raw_input().split(' ')]

A = [raw_input() for x in range(N)]
B = [raw_input() for x in range(M)]

def getpattern(image, s = 0, x = 0, y = 0):
    if s == 0:
        s = len(image)

    return ''.join([image[i][x:x+s] for i in range(y, y + s)])

def match(N,M,A,B):
    size = len(B)

    bpattern = getpattern(B)
    for j in range(0, N - len(B)):
        for i in range(0, N - len(B)):
            if getpattern(A, size, i, j) == bpattern:
                return 'Yes'

    return 'No'

print match(N,M,A,B)
