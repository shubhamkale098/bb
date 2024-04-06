import hashlib
def sha256(message):
  return hashlib.sha256(message.encode('ascii')).hexdigest()

def mine(message,difficulty = 1):
  assert difficulty>=1
  prefix='1'*difficulty
  print("prefix",prefix)

  for i in range(1000):  # attempting to find a valid nonce
    digest = sha256(str(hash(message))+str(i))
    print("TESTINT ==> "+digest)
    if digest.startswith(prefix):
      print("aFTER "+str(i)+" ITERITION found nounce "+digest)
      return 1

mine("Sender",2)
