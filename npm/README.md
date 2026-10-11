# cycode-epmon-canary

A harmless package that Cycode EPMON flags on purpose. Installing it on a
protected machine is blocked, which is how you verify the install:

```sh
npm install cycode-epmon-canary
# [BLOCK] npm cycode-epmon-canary@1.0.0 reason=flagged by cycode-intel: EPMON canary package
```

If the install succeeds, EPMON is not wrapping your package manager. Running
the package says so:

```sh
npx cycode-epmon-canary
# cycode-epmon-canary installed and ran. This package is flagged on purpose, so Cycode EPMON is not protecting this package manager.
```

The package contains no install scripts, no dependencies and no network code.
