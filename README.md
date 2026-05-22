# Bare-metal Hypervisor on ARMv8-A

This project contains a tutorial ebook concerning implementation of a bare-metal hypervisor on ARMv8-A profile. A realistic goal is a minimal bare-metal hypervisor that:

- boots at EL2
- initializes virtualization
- creates one guest VM (Linux or bare-metal)
- traps selected exceptions
- handles guest context switching
- supports UART virtualization
- supports timer virtualization

Some future features later in mind:

- multiple VMs
- GIC virtualization
- Device passthrough
- VirtIO

# Table of Contents

[TBD]

# Repository structure

The `doc` folder contains the chapters of the ebook. The `src` folder contains the source code corresponding to each chapter. Thus, for instance, `src/01_elx` contains the source code of the chapter `4`.

Happy virtualizing!
