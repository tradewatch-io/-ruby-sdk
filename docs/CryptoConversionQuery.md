# tradewatch::CryptoConversionQuery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** |  |  |
| **to** | **String** |  |  |
| **amount** | **Float** |  | [optional][default to 10] |
| **precision** | **Integer** |  | [optional][default to 8] |

## Example

```ruby
require 'tradewatch'

instance = tradewatch::CryptoConversionQuery.new(
  from: null,
  to: null,
  amount: null,
  precision: null
)
```

