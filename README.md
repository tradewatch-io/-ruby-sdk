<a href="https://tradewatch.io/">
<img src="https://pub-e8bb70a6cc1844138d6a55fa4a44ba42.r2.dev/logo-purple.png" alt="TradeWatch.io logo" title="TradeWatch.io" align="right" height="60" />
</a>

# TradeWatch.io Ruby SDK

[TradeWatch.io](https://tradewatch.io) offers a comprehensive financial data API designed for developers and businesses. The platform provides real-time access to market data, covering a wide range of assets such as currencies, cryptocurrencies, stocks, indices, and commodities. It emphasizes seamless integration, reliability, and scalability, making it ideal for building financial tools and services. Additional features include serverless functions, customizable API domains, and webhook notifications for market events, all aimed at enhancing business efficiency and informed decision-making.

## Table of Contents
- [Quick start](#-quick-start)
- [Requirements](#-requirements)
- [Installation & usage](#-installation--usage)
- [Example](#-example)
- [Available methods](#-available-methods)
- [Available models](#-available-models)
- [Authorization](#-authorization)
- [Feedback and Contributions](#-feedback-and-contributions)
- [License](#-license)
- [Contact and Support](#-contact-and-support)

## 🚀 Quick start

Visit our [Dashboard](https://dash.tradewatch.io/register) and register a free account.

Follow the [Getting started](https://tradewatch.io/docs/platform/getting-started) section in our Developer Portal.

## 📝 Requirements

## 🔨 Installation & usage

### Build a gem

To build the Ruby code into a gem:

```shell
gem build tradewatch.gemspec
```

Then either install the gem locally:

```shell
gem install ./tradewatch-1.0.0.gem
```

(for development, run `gem install --dev ./tradewatch-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'tradewatch', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/tradewatch-io/ruby-sdk, then add the following in the Gemfile:

    gem 'tradewatch', :git => 'https://github.com/tradewatch-io/ruby-sdk.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## 👨‍💻 Example

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'tradewatch'

# Setup authorization
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

api_instance = tradewatch::AccountApi.new
opts = {
  limit: 56, # Integer | 
  interval: tradewatch::AccountUsageStatisticsInterval::N1H # AccountUsageStatisticsInterval | 
}

begin
  #Usage statistics
  result = api_instance.getUsage(opts)
  p result
rescue tradewatch::ApiError => e
  puts "Exception when calling AccountApi->getUsage: #{e}"
end

```

## 📖 Available methods

All URIs are relative to *https://api.tradewatch.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*tradewatch::AccountApi* | [**getUsage**](docs/AccountApi.md#getUsage) | **GET** /account/usage | Usage statistics
*tradewatch::CommoditiesApi* | [**getQuote**](docs/CommoditiesApi.md#getQuote) | **GET** /commodities/symbols/{symbol} | Last Quote
*tradewatch::CommoditiesApi* | [**getSymbols**](docs/CommoditiesApi.md#getSymbols) | **GET** /commodities/symbols | Available Symbols
*tradewatch::CommoditiesApi* | [**getTypes**](docs/CommoditiesApi.md#getTypes) | **GET** /commodities/types | Available Types
*tradewatch::CryptoApi* | [**convert**](docs/CryptoApi.md#convert) | **GET** /crypto/convert/{from}/{to} | Conversion
*tradewatch::CryptoApi* | [**getExchanges**](docs/CryptoApi.md#getExchanges) | **GET** /crypto/exchanges | Available Exchanges
*tradewatch::CryptoApi* | [**getQuote**](docs/CryptoApi.md#getQuote) | **GET** /crypto/symbols/{symbol} | Last Quote
*tradewatch::CryptoApi* | [**getSymbols**](docs/CryptoApi.md#getSymbols) | **GET** /crypto/symbols | Available Symbols
*tradewatch::CurrenciesApi* | [**convert**](docs/CurrenciesApi.md#convert) | **GET** /currencies/convert/{from}/{to} | Conversion
*tradewatch::CurrenciesApi* | [**getQuote**](docs/CurrenciesApi.md#getQuote) | **GET** /currencies/symbols/{symbol} | Last Quote
*tradewatch::CurrenciesApi* | [**getSymbols**](docs/CurrenciesApi.md#getSymbols) | **GET** /currencies/symbols | Available Symbols
*tradewatch::IndicesApi* | [**getQuote**](docs/IndicesApi.md#getQuote) | **GET** /indices/symbols/{symbol} | Last Quote
*tradewatch::IndicesApi* | [**getSymbols**](docs/IndicesApi.md#getSymbols) | **GET** /indices/symbols | Available Symbols
*tradewatch::StocksApi* | [**getCountries**](docs/StocksApi.md#getCountries) | **GET** /stocks/countries | Available Countries
*tradewatch::StocksApi* | [**getQuote**](docs/StocksApi.md#getQuote) | **GET** /stocks/symbols/{symbol} | Last Quote
*tradewatch::StocksApi* | [**getSymbols**](docs/StocksApi.md#getSymbols) | **GET** /stocks/symbols | Available Symbols


## 📖 Available models

 - [tradewatch::AccountUsageStatisticsInterval](docs/AccountUsageStatisticsInterval.md)
 - [tradewatch::ApiUsageDataTransfer](docs/ApiUsageDataTransfer.md)
 - [tradewatch::ApiUsageEntry](docs/ApiUsageEntry.md)
 - [tradewatch::CommodityType](docs/CommodityType.md)
 - [tradewatch::CommodityTypeObj](docs/CommodityTypeObj.md)
 - [tradewatch::CommodityTypesList](docs/CommodityTypesList.md)
 - [tradewatch::Conversion](docs/Conversion.md)
 - [tradewatch::ConversionInfo](docs/ConversionInfo.md)
 - [tradewatch::ConversionQuery](docs/ConversionQuery.md)
 - [tradewatch::CountriesList](docs/CountriesList.md)
 - [tradewatch::Country](docs/Country.md)
 - [tradewatch::CountryObj](docs/CountryObj.md)
 - [tradewatch::CryptoConversion](docs/CryptoConversion.md)
 - [tradewatch::CryptoConversionQuery](docs/CryptoConversionQuery.md)
 - [tradewatch::CryptoExchangeItem](docs/CryptoExchangeItem.md)
 - [tradewatch::CryptoExchangesList](docs/CryptoExchangesList.md)
 - [tradewatch::CursorPageTCustomizedSymbolsOutFull](docs/CursorPageTCustomizedSymbolsOutFull.md)
 - [tradewatch::ErrorDetails](docs/ErrorDetails.md)
 - [tradewatch::ErrorResponseBody](docs/ErrorResponseBody.md)
 - [tradewatch::HTTPValidationError](docs/HTTPValidationError.md)
 - [tradewatch::LastQuote](docs/LastQuote.md)
 - [tradewatch::SymbolsListMode](docs/SymbolsListMode.md)
 - [tradewatch::SymbolsOutFull](docs/SymbolsOutFull.md)
 - [tradewatch::ValidationError](docs/ValidationError.md)
 - [tradewatch::ValidationErrorLocInner](docs/ValidationErrorLocInner.md)


## 🔑 Authorization


Authentication schemes defined for the API:
### api_key_header


- **Type**: API key
- **API key parameter name**: api-key
- **Location**: HTTP header

### api_key_query


- **Type**: API key
- **API key parameter name**: api-key
- **Location**: URL query string


## 🤝 Feedback and Contributions

We appreciate your support and look forward to making our product even better with your help!

## ©️ License

This project is licensed under the [MIT License](http://opensource.org/licenses/MIT).

## 🗨️ Contact and Support

For more details about our products, services, or any general information, feel free to reach out to us.

See the list of available [Support Channels](https://tradewatch.io/docs/support/channels).
