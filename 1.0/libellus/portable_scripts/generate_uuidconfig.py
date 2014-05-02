# Code by: Libellus
# http://libellus.no
# Licensed under the Apache License, Version 2.0 (the "License"); you may
# not use this file except in compliance with the License. You may obtain
# a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0

import uuid, sys

# Writes new UUID to the configuration file
def config_writer(filepath):
    # Opens the configuration file
    with open(filepath, "wb") as config_file:
        # Writes a UUID in hex only, using uuid1
        # The first 24 bits are random, where the last 8 is the MAC-address
        #   of eth0 on the local network card. This is later used for synchronization
        #   and tracking
        config_file.write("[couchdb]\r\nuuid = {}".format(uuid.uuid1().hex))

if __name__ == '__main__':
    if sys.argv[1] == "windows":
        config_writer("libellus/windows_database/CouchDB/etc/couchdb/local.ini")
    elif sys.argv[1] == "osx":
        print "Only windows for now"
    else:
        print "Only windows for now"