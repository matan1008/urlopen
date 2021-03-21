# urlopen

Command line utility to open urls on jailbroken iOS devices.

# Build

In order to build the project, git clone it:

```sh
git clone git@github.com:matan1008/urlopen.git
```

Then just open it with Xcode and build it.
The product will be written to build/urlopen

# Usage

To run urlopen copy it to `/usr/bin` on your jailbroken device and run it with the url you want to open:

```sh
/usr/bin/urlopen https://www.google.com
```

You will then see the output:
```
2021-03-21 02:34:53.546 urlopen[2725:1122079] Opening URL: https://www.google.com
2021-03-21 02:34:53.603 urlopen[2725:1122079] openURL result: 1
```

Note the you can call any url, for example
```sh
/usr/bin/urlopen tel://3333333
```

Will dial 3333333.
