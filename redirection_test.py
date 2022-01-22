import sys

for line in sys.stdin:
    for v in map(int, line.strip().split()):
        print(v * 10)
        
print("ERROR MSG", file=sys.stderr)
