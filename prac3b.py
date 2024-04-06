import hashlib
import json
from time import time

class Blockchain:
  def __init__(self):
    self.chain = []
    self.pending_transactions = []

    #create a genesis block
    self.add_block(previous_hash='1')

  def add_block(self, proof = None, previous_hash = None):
    block = {
        'index' : len(self.chain)+1,
        'timestamp' : time(),
        'transactions': self.pending_transactions,
        'proof' : proof or 0, #Proofof Work
        'previous_hash': previous_hash or self.hash(self.chain[-1]) if self.chain else None,
    }

    #Reset the list of pending transaction
    self.pending_transactions = []
    self.chain.append(block)
    return block

  def add_transaction(self, sender, recipient , amount):
    transaction = {
        'sender': sender,
        'recipient' : recipient,
        'amount': amount,
    }
    self.pending_transactions.append(transaction)
    return self.last_block['index']+1

  @staticmethod
  def hash(block):
    #hashes a block
    block_string= json.dumps(block, sort_keys = True).encode()
    return hashlib.sha256(block_string).hexdigest()

  @property
  def last_block(self):
    return self.chain[-1]

my_blockchain = Blockchain()

#Add transactions
my_blockchain.add_transaction('Alice','Bob',10)
my_blockchain.add_transaction('Bob','Charlie',5)
my_blockchain.add_transaction('Charlie','Sender',10)
my_blockchain.add_transaction('Sender','Receiver',5)

proof_of_work = 123
previous_hash = my_blockchain.hash(my_blockchain.last_block)

my_blockchain.add_block(proof_of_work, previous_hash)

#Dump the blockchain
for block in my_blockchain.chain:
  print(block)
