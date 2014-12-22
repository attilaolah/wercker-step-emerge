# Wercker Gentoo `emerge` step [![wercker status](https://app.wercker.com/status/88631f779b82c8d53039be8c04f1598e/s "wercker status")](https://app.wercker.com/project/bykey/88631f779b82c8d53039be8c04f1598e)

A Wercker step that executes `emerge` inside the `/gentoo` `chroot`.

This step is meant to be used with the [`gentoo`][1] box or one of its derived
boxes.

## Usage

```yaml
build:
  steps:
    - attilaolah/emerge:
        atom: figlet
    - attilaolah/emerge:
        atom: "=dev-lang/python-3.4.2"
        use: "wininst -examples -doc"
```

## Usage with `crossdev` toolchains

This step can be used to emerge packages inside `crossdev` toolchains, in boxes
that have those toolchains pre-installed. For example, in a box called
`gentoo-crossdev-avr`, providing the `prefix: avr-` option will execute
`avr-emerge` instead of `emerge`, resulting in `atom` being installed inside
the `crossdev` environment.

Here's another example that will install `app-arch/lzma` (including the LZMA
header files) inside the ARMv7-A toolchain, making it available when
cross-compiling for Android targets:

```yaml
build:
  steps:
    - attilaolah/emerge:
        prefix: "armv7a-hardfloat-linux-uclibceabi-"
        atom: "=app-arch/lzma-9.20"
```

[1]: //github.com/attilaolah/wercker-box-gentoo
