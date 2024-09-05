# tradewatch::StocksApi

All URIs are relative to *https://api.tradewatch.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**getCountries**](StocksApi.md#getCountries) | **GET** /stocks/countries | Available Countries |
| [**getQuote**](StocksApi.md#getQuote) | **GET** /stocks/symbols/{symbol} | Last Quote |
| [**getSymbols**](StocksApi.md#getSymbols) | **GET** /stocks/symbols | Available Symbols |


## getCountries

> <CountriesList> getCountries

Available Countries

Get list of available countries

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

api_instance = tradewatch::StocksApi.new

begin
  # Available Countries
  result = api_instance.getCountries
  p result
rescue tradewatch::ApiError => e
  puts "Error when calling StocksApi->getCountries: #{e}"
end
```

#### Using the getCountries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CountriesList>, Integer, Hash)> getCountries_with_http_info

```ruby
begin
  # Available Countries
  data, status_code, headers = api_instance.getCountries_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CountriesList>
rescue tradewatch::ApiError => e
  puts "Error when calling StocksApi->getCountries_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CountriesList**](CountriesList.md)

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

api_instance = tradewatch::StocksApi.new
symbol = 'symbol_example' # String | 
opts = {
  precision: 56 # Integer | 
}

begin
  # Last Quote
  result = api_instance.getQuote(symbol, opts)
  p result
rescue tradewatch::ApiError => e
  puts "Error when calling StocksApi->getQuote: #{e}"
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
  puts "Error when calling StocksApi->getQuote_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** |  |  |
| **precision** | **Integer** |  | [optional][default to 5] |

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

api_instance = tradewatch::StocksApi.new
mode = tradewatch::SymbolsListMode::FULL # SymbolsListMode | Listing mode
opts = {
  size: 56, # Integer | Page offset
  country: tradewatch::Country::FR, # Country | 
  page: 56, # Integer | Page number
  cursor: 'cursor_example' # String | Cursor for the next page
}

begin
  # Available Symbols
  result = api_instance.getSymbols(mode, opts)
  p result
rescue tradewatch::ApiError => e
  puts "Error when calling StocksApi->getSymbols: #{e}"
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
  puts "Error when calling StocksApi->getSymbols_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | [**SymbolsListMode**](.md) | Listing mode |  |
| **size** | **Integer** | Page offset | [optional][default to 50] |
| **country** | [**Country**](.md) |  | [optional] |
| **page** | **Integer** | Page number | [optional][default to 1] |
| **cursor** | **String** | Cursor for the next page | [optional] |

### Return type

[**CursorPageTCustomizedSymbolsOutFull**](CursorPageTCustomizedSymbolsOutFull.md)

### Authorization

[api_key_query](../README.md#api_key_query), [api_key_header](../README.md#api_key_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

