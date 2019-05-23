Demoing the failure of buildGoModules when the go.mod file contains no dependencies

If you build this repository you will get this result:

```
builder for '/nix/store/czi1xw8sb2g96wi3kvc704j7azjpqz0h-foo-go-modules.drv' failed with exit code 1; last 8 log lines:
  unpacking sources
  unpacking source archive /nix/store/p684jrpz8k5ps7y45w741g4dxr8x325c-empty-go-modules
  source root is empty-go-modules
  patching sources
  configuring
  building
  installing
  cp: cannot stat '/build/go/pkg/mod/cache/download': No such file or directory
cannot build derivation '/nix/store/4kcg0p5vy5pvbvkvbgpbkjkqlkwsbyyb-foo.drv': 1 dependencies couldn't be built
[0 built (1 failed), 0.0 MiB DL]
error: build of '/nix/store/4kcg0p5vy5pvbvkvbgpbkjkqlkwsbyyb-foo.drv' failed
```

This is because the go module cache is not created if there are no modules to cache.
