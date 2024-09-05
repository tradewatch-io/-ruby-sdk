# tradewatch::CryptoApi

All URIs are relative to *https://api.tradewatch.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**convert**](CryptoApi.md#convert) | **GET** /crypto/convert/{from}/{to} | Conversion |
| [**getQuote**](CryptoApi.md#getQuote) | **GET** /crypto/symbols/{symbol} | Last Quote |
| [**getSymbols**](CryptoApi.md#getSymbols) | **GET** /crypto/symbols | Available Symbols |


## convert

> <CryptoConversion> convert(from, to)

Conversion

Convert one symbol to another

### Examples

```ruby
require 'time'
require 'tradewatch'
# setup authorization
tradewatch.configure do |config|
  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'

  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'
end

api_instance = tradewatch::CryptoApi.new
from = 'from_example' # String | 
to = 'to_example' # String | 

begin
  # Conversion
  result = api_instance.convert(from, to)
  p result
rescue tradewatch::ApiError => e
  puts "Error when calling CryptoApi->convert: #{e}"
end
```

#### Using the convert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CryptoConversion>, Integer, Hash)> convert_with_http_info(from, to)

```ruby
begin
  # Conversion
  data, status_code, headers = api_instance.convert_with_http_info(from, to)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CryptoConversion>
rescue tradewatch::ApiError => e
  puts "Error when calling CryptoApi->convert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **String** |  |  |
| **to** | **String** |  |  |

### Return type

[**CryptoConversion**](CryptoConversion.md)

### Authorization

[api_key_query](../README.md#api_key_query), [api_key_header](../README.md#api_key_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getQuote

> <LastQuote> getQuote(symbol, opts)

Last Quote

Get the last quote tick for the provided symbol.

### Examples

```ruby
require 'time'
require 'tradewatch'
# setup authorization
tradewatch.configure do |config|
  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'

  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'
end

api_instance = tradewatch::CryptoApi.new
symbol = 'symbol_example' # String | 
opts = {
  precision: 56 # Integer | 
}

begin
  # Last Quote
  result = api_instance.getQuote(symbol, opts)
  p result
rescue tradewatch::ApiError => e
  puts "Error when calling CryptoApi->getQuote: #{e}"
end
```

#### Using the getQuote_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LastQuote>, Integer, Hash)> getQuote_with_http_info(symbol, opts)

```ruby
begin
  # Last Quote
  data, status_code, headers = api_instance.getQuote_with_http_info(symbol, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LastQuote>
rescue tradewatch::ApiError => e
  puts "Error when calling CryptoApi->getQuote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** |  |  |
| **precision** | **Integer** |  | [optional][default to 8] |

### Return type

[**LastQuote**](LastQuote.md)

### Authorization

[api_key_query](../README.md#api_key_query), [api_key_header](../README.md#api_key_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getSymbols

> <CursorPageTCustomizedSymbolsOutFull> getSymbols(mode, opts)

Available Symbols

Get list of available symbols

### Examples

```ruby
require 'time'
require 'tradewatch'
# setup authorization
tradewatch.configure do |config|
  # Configure API key authorization: api_key_query
  config.api_key['api_key_query'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_query'] = 'Bearer'

  # Configure API key authorization: api_key_header
  config.api_key['api_key_header'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key_header'] = 'Bearer'
end

api_instance = tradewatch::CryptoApi.new
mode = tradewatch::SymbolsListMode::FULL # SymbolsListMode | Listing mode
opts = {
  size: 56, # Integer | Page offset
  page: 56, # Integer | Page number
  cursor: 'cursor_example' # String | Cursor for the next page
}

begin
  # Available Symbols
  result = api_instance.getSymbols(mode, opts)
  p result
rescue tradewatch::ApiError => e
  puts "Error when calling CryptoApi->getSymbols: #{e}"
end
```

#### Using the getSymbols_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CursorPageTCustomizedSymbolsOutFull>, Integer, Hash)> getSymbols_with_http_info(mode, opts)

```ruby
begin
  # Available Symbols
  data, status_code, headers = api_instance.getSymbols_with_http_info(mode, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CursorPageTCustomizedSymbolsOutFull>
rescue tradewatch::ApiError => e
  puts "Error when calling CryptoApi->getSymbols_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | [**SymbolsListMode**](.md) | Listing mode |  |
| **size** | **Integer** | Page offset | [optional][default to 50] |
| **page** | **Integer** | Page number | [optional][default to 1] |
| **cursor** | **String** | Cursor for the next page | [optional] |

### Return type

[**CursorPageTCustomizedSymbolsOutFull**](CursorPageTCustomizedSymbolsOutFull.md)

### Authorization

[api_key_query](../README.md#api_key_query), [api_key_header](../README.md#api_key_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

