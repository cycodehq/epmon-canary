# cycode-epmon-canary

A harmless package that Cycode EPMON flags on purpose. Installing it on a
protected machine is blocked, which is how you verify the install:

```sh
pip install cycode-epmon-canary
# [BLOCK] pypi cycode_epmon_canary@1.0.0 reason=flagged by cycode-intel: EPMON canary package
```

If the install succeeds, EPMON is not wrapping your package manager. Running
the package says so:

```sh
cycode-epmon-canary
# cycode-epmon-canary installed and ran. This package is flagged on purpose, so Cycode EPMON is not protecting this package manager.
```

The package contains no install scripts, no dependencies and no network code.
