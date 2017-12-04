#!/usr/bin/python

# --------------------------------------------------------------------------------
# for future compatibility for Python 3.2+
from __future__ import print_function
from __future__ import division
# --------------------------------------------------------------------------------

'''
Python programm for demonstrating a "proof of work"

    usage:      ./proof_of_work.py
    no params needed

The proof should be hard to find but easy to verify.
'''

import sys, os, logging, time
from hashlib import sha256, sha512
import sqlite3

# exception handling
try:

    x = 666 # set this to what you want
    # finding y
    results = []
    y = 0  # We don't know what y should be yet... thats the challenge
    xy = (x * y) # this is the proof of work
    pow = '666 * y = 666def'
    print('starting with [%d]' % xy)
    # open sqlite3 database
    db = sqlite3.connect('proof_of_work.sqlite3')
    cursor = db.cursor()

    # here we're compute the crypto hash for the first time
    hash = sha512(('%d' % xy).encode()).hexdigest()

    # if the first six digits of the hash are "666def" then it's proof!
    while 1 :
        if hash[:6] != "666def":
            y += 1
            # print only every 1137th attempt - just a simple work progress thing ...
            if (y/1137.00) == int(y/1137.00):
                print( '.', sep='', end='' )

            xy = (x * y)
            # here we're compute the crypto hash
            hash = sha512(('%d' % xy).encode()).hexdigest()
        else:
            print('\n=======================================================')
            print('The solution is y = [%d] so (%d * y) = [%d]' % (y, x, xy))
            print('with sha512 hash [%s]' % hash)
            print('=======================================================')
            # add to the db
            epoch = time.time()
            # is the found y already in DB?
            cursor.execute('''SELECT no FROM pow WHERE y=?''',
                               (y,))
            y2 = cursor.fetchone()
            # if NOT insert into db
            if  y2 == None:
                cursor.execute('''INSERT INTO pow (epoch, proof, y)
                               VALUES(?,?,?)''', (epoch, pow, y))
                db.commit()
            else:
                print('\ny = [%d] is already in DB with index %s' % (y, y2))

            print('are there another solutions? so we keep going ...', sep='', end='' )
            y += 1
            xy = (x * y)
            hash = sha512(('%d' % xy).encode()).hexdigest()

# --------------------------------------------------------------------------------
# exception handling
except Exception as e:
    logging.exception('Failed: ' + str(e))

finally:
    db.commit()
    db.close()

sys.exit

