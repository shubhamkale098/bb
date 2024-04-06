
from Crypto.PublicKeyimport RSA
import time
st=time.time()
key=RSA.generate(1024)
p_key=key.public_key().export_key("PEM")
priv_key=key.export_key("PEM")
print(p_key)
print(priv_key)
et=time.time()
en=et-st
print(en)