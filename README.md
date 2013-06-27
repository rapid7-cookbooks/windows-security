# Windows Security
[![Build Status](https://secure.travis-ci.org/rapid7-cookbooks/windows-security.png)](http://travis-ci.org/rapid7-cookbooks/windows-security)
## Description
This cookbook has recipes to enable/disable some Windows security features.

## Requirements
### Platform
### TODO: Specify which recipes work with which Windows flavors.
* Windows

## Attributes
* `node[:windows][:security]` A hash of Windows security options that are read by the `windows-security::default` recipe.
* `node[:windows][:security][:aslr]` What to set the ASLR registry key to. Available: 0, 1, -1 Default: 1
* `node[:windows][:security][:dep]` What to set the DEP registry key to. Available: AlwaysOff, AlwaysOn, OptIn, or OptOut Default: OptIn
 
## Usage
Override the `node[:windows][:security]` hash and run a specific recipe or run `windows-security::default` to Windows security settings.

```ruby
{
  :windows => {
    :aslr => 1
    :dep => 'AlwaysOn'
  }
}
```

### windows-security::default
Checks all attributes defined in the attributes file: [`windows-security::default`](https://github.com/rapid7-cookbooks/rapid7-windows/blob/master/attributes/default.rb).

## License and Author
### Authors
* Erran Carey (erran_carey@rapid7.com)
