#Text Miner#

*not completed*

## Synopsis

Sets of failing tests that require functions written using Regular Expression to enable them to pass.

## Code Example
```ruby   
describe '#phone_number' do
  it 'returns a hash with phone number and area code' do
    expect(@s.phone_number('919-555-1212')).to eq({'area_code': '919', 'number': '555-1212'})
    expect(@s.phone_number('(919) 555-1212')).to eq({'area_code': '919', 'number': '555-1212'})
    expect(@s.phone_number('9195551212')).to eq({'area_code': '919', 'number': '555-1212'})
    expect(@s.phone_number('919.555.1212')).to eq({'area_code': '919', 'number': '555-1212'})
    expect(@s.phone_number('919 555-1212')).to eq({'area_code': '919', 'number': '555-1212'})
    expect(@s.phone_number('555-121')).to eq nil
  end
end
  ```

## Motivation
Purposes for developing this program include:
  * To practice reading and writing the regular expression language
  * To be able to use Ruby regular expression objects and methods



## Tests
Automated unit tests written using RSpec version 3.5.4

For info:
https://github.com/rspec/rspec

<!-- ```ruby
``` -->
