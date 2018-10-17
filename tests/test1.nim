# This is just an example to get you started. You may wish to put all of your
# tests into a single file, or separate them into multiple `test1`, `test2`
# etc. files (better names are recommended, just make sure the name starts with
# the letter 't').
#
# To run these tests, simply execute `nimble test`.

import unittest

import hashmap

test "default hashmap should have 16 hash buckets":
  check 16 == newHashMap[string, int]().buckets.len

test "construct hashmap with bucket size":
  check 10 == newHashMap[string, int](10).buckets.len

test "put keypair":
  var hm = newHashMap[string, int](1)
  var kp = KeyPair[string, int](key: "one", value: 1)
  hm.put(kp)
