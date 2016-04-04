---
draft: true
categories: [ nb-nfcsec ]

title: "Jauzi"
keywords: 

publishdate: 2016-04-02
date: 2016-04-02
---

`./jauzi db new -vrd ~/nfc/mfdumps/`

```
sudo dnf install autoconf libtool libusb-devel libpcsclite-devel
sudo dnf install libnfc

git clone https://github.com/nfc-tools/mfoc.git
cd mfoc/
autoreconf -vis
./configure
make
make install
```

```
nfc-list #o nfc-poll
mfoc -O output.mfd
hexdump -vC output.mfd
```

- [github.com/nfc-tools](https://github.com/nfc-tools/)
- [fuzxxl/nfc](https://github.com/fuzxxl/nfc)
