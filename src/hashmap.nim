type
  KeyPair*[K, V] = object
    key*: K
    value*: V
    hashcode: int

  HashMap*[K,V] = object
    buckets*: seq[KeyPair[K,V]]

proc newHashMap*[K,V](s: int = 16): HashMap[K,V] =
  result.buckets = newSeq[KeyPair[K,V]](s)

proc put*[K,V](H: var HashMap[K,V], KV: KeyPair[K, V]) =
  H.buckets[0] = KV
