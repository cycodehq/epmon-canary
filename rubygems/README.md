# cycode-epmon-canary

A harmless gem that Cycode EPMON flags on purpose. Installing it on a
protected machine is blocked, which is how you verify the install:

```sh
gem install cycode-epmon-canary
# [BLOCK] rubygems cycode-epmon-canary@1.0.0 reason=flagged by cycode-intel: EPMON canary package
```

If the install succeeds, EPMON is not wrapping your package manager. Running
the gem says so:

```sh
cycode-epmon-canary
# cycode-epmon-canary installed and ran. This package is flagged on purpose, so Cycode EPMON is not protecting this package manager.
```

The gem contains no install hooks, no native extensions, no dependencies and
no network code.
