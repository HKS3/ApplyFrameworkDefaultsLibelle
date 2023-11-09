# ApplyFrameworkDefaultsLibelle

# Installation

Get a kzp file from the [release page](https://github.com/HKS3/HKS3-SRU-HTTPS-Proxy/releases) and install it via the Koha plugin system.

## Build kzp file from source

```
cd lib; zip -r ../hks3_sru_https_proxy-0.900.kpz Koha/; cd ..
```

## Koha Plugin

for plugin hook for "framework_defaults_override"

this plugin overrides already set values in the Marc Editor, useful eg when switching frameworks

    '000' => { '@' => 1 },
    '336' => { '2' => 1, 'a' => 1 , 'b' => 1 },
    '337' => { '2' => 1, 'a' => 1 , 'b' => 1 },
    '338' => { '2' => 1, 'a' => 1 , 'b' => 1 },
    '500' => { 'a' => 1 },
    '655' => { 'a' => 1 , 'b' => 1 },
    '773' => { 'i' => 1 },
    '942' => { 'c' => 1 },

see code. This mean eg Marc Field 336a will be changed on framework change
