# Rapid7 Windows
## Description
This cookbook has recipes to enable/disable some Windows security features.

### TODO: Document which recipes work with which Windows flavors.

## Requirements
### Platform
* Windows

## Attributes

## Usage
Set the `node[:windows][:dep]` and/or `node[:windows][:dep]` attributes and
either run the specific recipe or the `rapid7-windows::default` recipe which will check all Rapid7 Windows attributes and update the node the specified state.


The ruby format would be:

```ruby
{
  :windows => {
    :aslr => 1
    :dep => 'AlwaysOn'
  }
}
```

### mirror::default
Checks all attributes defined in the attributes file: [`rapid-windows::default`](https://github.com/rapid7-cookbooks/rapid7-windows/blob/master/attributes/default.rb).

## License and Author
### Authors
* Erran Carey (erran_carey@rapid7.com)
