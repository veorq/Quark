Quark
=====

Reference implementation of Quark, a family of lightweight cryptographic
hash functions composed of 4 instances:
* u-Quark (at least 64-bit security)
* d-Quark (at least 80-bit security)
* s-Quark (at least 112-bit security) 
* c-Quark (at least 160-bit security)

Quark instances can be used as cryptographic hash functions, as well as
building blocks of [authenticated
ciphers](https://131002.net/data/papers/AKM12.pdf).

Quark was designed by [Jean-Philippe Aumasson](https://131002.net) with
Luca Henzen, Simon Knellwolf, Willi Meier, and Maria Naya-Plasencia.


Usage
-----

Running

```sh
  make
```

will build sanity checks (test vectors) for all 4 Quark instances. For
example:

```C
  ./uquark_test
```

verifies that u-Quark returns the expected hash value given the empty
message, and

```c
  ./uquark_test_debug
```

does the same and prints intermediate values.

Similar executables are provided for d-Quark, s-Quark, and c-Quark.


Intellectual property
---------------------

The Quark reference code is released under [CC0
license](https://creativecommons.org/publicdomain/zero/1.0/), a public
domain-like licence.

We aren't aware of any patents or patent applications relevant to
Quark, and we aren't planning to apply for any.


References
----------

The [Quark page](https://131002.net/quark) includes
* academic publications (CHES 2010, Journal of Cryptology) 
* slides of Quark presentations at conferences and workshops
