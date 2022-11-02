# Alpha Vantage SalesForce Client

[![CircleCI](https://circleci.com/gh/KThompso/avs.svg?style=svg&circle-token=0dc7f94d920d53cd8a6f30b82e6b522893d0b684)](https://circleci.com/gh/KThompso/avs)

Documentation
-------------

A simple Apex client library for using the [Alpha Vantage][alpha-vantage-homepage] API.  Alpha Vantage provides free and paid access to financial market data.  For the full list of functions and parameters used by the AlphaVantage API visit their [API documentation][alpha-vantage-api-docs].

ApexDocs for this project can be found [here][gh-pages].

Examples
--------

```Apex
HttpResponse resp = AVStock.intraday('MSFT', '5min', null);

if (resp.getStatusCode() == 200) {
    Map<String, Object> m = (Map<String, Object>) JSON.deserializeUntyped(resp.getBody());
    Map<String, Object> timeseries = (Map<String, Object>) m.get('Time Series (5min)');
    
    for (String k : timeseries.keyset()) {
        Map<String, Object> point = (Map<String, Object>) timeseries.get(k);
        System.debug(k + ' : ' + point.get('1. open'));
    }
} else {
    System.debug(LoggingLevel.ERROR, resp.getBody());
}
```

Disclaimer
----------
This project is not affiliated with Alpha Vantage.

[alpha-vantage-homepage]: https://www.alphavantage.co
[alpha-vantage-api-docs]: https://www.alphavantage.co/documentation/
[alpha-vantage-api-key-request]: https://www.alphavantage.co/support/#api-key
[gh-pages]: https://kthompso.github.io/avs
