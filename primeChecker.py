# prime numbers are only divisible by unity and themselves
# (1 is not considered a prime number by convention)

def isprime(n):
    '''check if integer n is a prime'''
    # make sure n is a positive integer
    n = abs(int(n))
    # 0 and 1 are not primes
    if n < 2:
        return False
    # 2 is the only even prime number
    if n == 2: 
        return True    
    # all other even numbers are not primes
    if not n & 1: 
        return False
    # range starts with 3 and only needs to go up the squareroot of n
    # for all odd numbers
    for x in range(3, int(n**0.5)+1, 2):
        if n % x == 0:
            return False
    return True

# test ...
i=0
for x in range(2, 2000000):
	if isprime(x):
#		print x[0]
		i+=1
	#	print i
	if i==10001:
		print x
		print i
		break

print "Here it goes"      
print isprime(25)       # False
print isprime(2)       # True
print isprime(3)       # True
print isprime(29)      # True
print isprime(345)     # False
print isprime(999979)  # True
print isprime(999981)  # False
