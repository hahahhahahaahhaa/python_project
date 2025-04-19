"""
import sys

input = sys.stdin.readline

t = int(input())

for i in range(t):
    h, w, n = map(int, input().split())
    if n % h == 0:
        y = h
        x = n // h
    else:
        x = n // h + 1
        y = n % h
    print(str(y)+str(x).zfill(2))

t = int(input())
for i in range(t):
    k = int(input())
    n = int(input())
    member = [_ for _ in range(1, n+1)] # 리스트 컴프리헨션
    for u in range(k):
        new_member = [1]
        for m in range(1, len(member)):
            new_member.append(member[m]+new_member[m-1])
        member = new_member
    print(member[n-1])
"""
