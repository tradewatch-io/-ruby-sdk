# tradewatch::ConversionQuery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** |  |  |
| **to** | **String** |  |  |
| **amount** | **Float** |  | [optional][default to 10] |
| **precision** | **Integer** |  | [optional][default to 5] |

## Example

```ruby
require 'tradewatch'

instance = tradewatch::ConversionQuery.new(
  from: null,
  to: null,
  amount: null,
  precision: null
)
```

