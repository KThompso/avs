# Alpha Vantage for SalesForce

[![CircleCI](https://circleci.com/gh/KThompso/avs.svg?style=svg&circle-token=0dc7f94d920d53cd8a6f30b82e6b522893d0b684)](https://circleci.com/gh/KThompso/avs)

Documentation
-------------

A simple Apex client library for using the [Alpha Vantage API][alpha-vantage-api-docs].  Alpha Vantage provides free and paid access to financial market data.  This project has no direct affiliation with Alpha Vantage.

Install
-------

This library is provided as an unmanaged SalesForce Apex package.  To install, clone this repository and deploy the `src` directory to your SalesForce org.  For example, using the Force CLI tool:

`git clone https://github.com/KThompso/avs.git && force import -d avs/src/`

Examples
--------

```Apex
HttpResponse resp = AVGlobalEquities.timeSeriesIntraday('MSFT', '5min', null);

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

[alpha-vantage-api-docs]: https://www.alphavantage.co/documentation/
