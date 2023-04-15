import sys

def printFunc1():
    print("a = %d" % a)

def setA():
    a = 2

def setAglobal():
    global a
    a = 2

def printFunc2():
    a = 3
    printFunc1()

setA()
a = 1
printFunc2()