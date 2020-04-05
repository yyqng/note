#!/bin/python
import threading
 
 
def hello(n, sema):
    sema.acquire()
    #print('Call thread {0}'.format(n))
 
sema = threading.Semaphore(value=0)
workers = 1
for n in range(workers):
    t = threading.Thread(target=hello, args=(n+1, sema, ))
    t.start()
 
#print('Start thread')
sema.release()
