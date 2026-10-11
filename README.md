# epmon-canary

Harmless packages that Cycode EPMON flags on purpose. Installing one on a
protected machine is blocked, which is how you verify that EPMON wraps your
package manager. If an install succeeds, EPMON is not protecting that package
manager, and running the package says so.

| Ecosystem | Package | Verify |
| --- | --- | --- |
| npm | [`cycode-epmon-canary`](https://www.npmjs.com/package/cycode-epmon-canary) ([source](npm/)) | `npm install cycode-epmon-canary` |
| PyPI | [`cycode-epmon-canary`](https://pypi.org/project/cycode-epmon-canary/) ([source](pypi/)) | `pip install cycode-epmon-canary` |

Expected output on a protected machine:

```
[BLOCK] npm cycode-epmon-canary@1.0.0 reason=flagged by cycode-intel: EPMON canary package
[BLOCK] pypi cycode_epmon_canary@1.0.0 reason=flagged by cycode-intel: EPMON canary package
```

The packages contain no install scripts, no dependencies and no network code.

## Publishing

The PyPI package is published by the `publish-pypi` workflow through PyPI
trusted publishing when a `pypi-v*` tag is pushed. The npm package is published
by hand with `npm publish` from `npm/`.
