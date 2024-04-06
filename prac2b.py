import random
from Crypto.PublicKey import RSA
from Crypto import Random
import binascii
from Crypto.Cipher import PKCS1_v1_5
from Crypto.Hash import SHA1
import datetime
from Crypto.Signature import PKCS1_v1_5
import collections
from Crypto.Signature import PKCS1_v1_5
from collections import OrderedDict

class Client:
  def __init__(self):
    random=Random.new().read
    self._private_key=RSA.generate(1024,random) # private key is used for record keeping
    self._public_key=self._private_key.publickey()
    self._signer=PKCS1_v1_5.new(self._private_key)
  @property
  def identity(self):
     return binascii.hexlify(self._public_key.exportKey(format='DER')).decode('ascii')

class Transaction:
  def __init__(self,sender,receiver,value):
    self.sender=sender
    self.receiver=receiver
    self.value=value
    self.time=datetime.datetime.now()

  def to_dict(self):
    if self.sender=="Genesis":
      identity="Gensis"
    else:
      identity=self.sender.identity
    return collections.OrderedDict({
        "sender":identity,
        "receiver":self.receiver,
        "value":self.value,
        "time":self.time
    })
  def sign_tran(self):
    private_key=self.sender._private_key
    signer=PKCS1_v1_5.new(private_key)
    h=SHA1.new(str(self.to_dict()).encode('utf8'))
    return binascii.hexlify(signer.sign(h)).decode('ascii')

def display_tran(transaction):
    dict=transaction.to_dict()
    print('\nsender,sender-->\n'+dict['sender'])
    print('\nreceiver,receiver-->\n'+dict['receiver'])
    print('\nvalue-->\n'+str(dict['value']))
    print('\nstime-->\n'+str(dict['time']))

transaction=[]

sender=Client()
receiver=Client()

t1=Transaction(sender,receiver.identity,15)

t1.sign_tran()
display_tran(t1)
