# tradewatch::LastQuote

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** | Symbol name |  |
| **ask** | **Float** | The ask price. |  |
| **bid** | **Float** | The bid price. |  |
| **mid** | **Float** | The mid price. |  |
| **timestamp** | **Integer** |  |  |

## Example

```ruby
require 'tradewatch'

instance = tradewatch::LastQuote.new(
  symbol: null,
  ask: 1.23456,
  bid: 1.23456,
  mid: 1.23456,
  timestamp: 1704882030
)
```

