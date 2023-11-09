# ApplyFrameworkDefaultsLibelle

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
