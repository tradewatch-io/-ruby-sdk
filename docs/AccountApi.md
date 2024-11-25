# tradewatch::AccountApi

All URIs are relative to *https://api.tradewatch.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**getUsage**](AccountApi.md#getUsage) | **GET** /account/usage | Usage statistics |


## getUsage

> Object getUsage(opts)

Usage statistics

Get the usage statistics of your API account

### Examples

```ruby
require 'time'
require 'tradewatch'
# setup authorization
tradewatch.configure do |config|
  # Configure API key authorization: api_key_query
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'

  # Configure API key authorization: api_key_header
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = tradewatch::AccountApi.new
opts = {
  limit: 56, # Integer | 
  interval: tradewatch::AccountUsageStatisticsInterval::N1H # AccountUsageStatisticsInterval | 
}

begin
  # Usage statistics
  result = api_instance.getUsage(opts)
  p result
rescue tradewatch::ApiError => e
  puts "Error when calling AccountApi->getUsage: #{e}"
end
```

#### Using the getUsage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> getUsage_with_http_info(opts)

```ruby
begin
  # Usage statistics
  data, status_code, headers = api_instance.getUsage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue tradewatch::ApiError => e
  puts "Error when calling AccountApi->getUsage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional] |
| **interval** | [**AccountUsageStatisticsInterval**](.md) |  | [optional] |

### Return type

**Object**

### Authorization

[api_key_query](../README.md#api_key_query), [api_key_header](../README.md#api_key_header)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

