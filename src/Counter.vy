counter: public(uint256)

@external
def __init__():
    self.counter = 0

@external
def getNumber() -> uint256:
    return self.counter

@external
def setNumber(val: uint256):
    self.counter = val

@external
def increment():
    self.counter += 1