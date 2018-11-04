# Alpha Vantage for SalesForce

[![CircleCI](https://circleci.com/gh/KThompso/avs.svg?style=svg&circle-token=0dc7f94d920d53cd8a6f30b82e6b522893d0b684)](https://circleci.com/gh/KThompso/avs)

Documentation
-------------

A simple Apex client library for using the [Alpha Vantage][alpha-vantage-homepage] API.  Alpha Vantage provides free and paid access to financial market data.  This project has no direct affiliation with Alpha Vantage.  For the full list of functions and parameters used by the AlphaVantage API visit their [API documentation][alpha-vantage-api-docs].

ApexDocs for this project can be found [here][gh-pages].

Alpha Vantage API Documentation can be found [here][alpha-vantage-api-docs].

Install
-------

This project is provided as an unmanaged SalesForce package.  To install:

1. Clone this repository.  `git clone https://github.com/KThompso/avs.git`
2. Change the value of the `API_KEY` variable in `AV.cls` to your Alpha Vantage API key.  Don't have one?  Request one for free [here][alpha-vantage-api-key-request].
3. Deploy the `src` directory to your SalesForce org.  E.g. using the [ForceCLI][force-cli] tool to deploy to your test org:

```Bash
$ force login -i test && force import -d avs/src/
```

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

FAQ
-------
**Q:** *What is the benefit of using this library?*  
**A:** Not much.

**Q:** *Is it secure to store my API token in source code?*  
**A:** No.  If having your API token exposed is an issue (or if you paid for one) do not store it in the AV.cls file.  At the bare minimum store it in a custom setting.

**Q:** *Why do timeseries responses included the interval in the json key?*  
**A:** Building APIs is hard.

[alpha-vantage-homepage]: https://www.alphavantage.co
[alpha-vantage-api-docs]: https://www.alphavantage.co/documentation/
[alpha-vantage-api-key-request]: https://www.alphavantage.co/support/#api-key
[force-cli]: https://force-cli.heroku.com/
[gh-pages]: https://kthompso.github.io/avs
