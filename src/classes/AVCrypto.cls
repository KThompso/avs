/**
 * @description This class contains utility functions for interacting with the
 * Alpha Vantage cryptocurrency API.  The functions and parameters available on
 * the Alpha Vantage API are listed in the Alpha Vantage documentation,
 * https://www.alphavantage.co/documentation/
 *
 * @group           AlphaVantage
 * @group-content   ../../ApexDocContent/AlphaVantage.htm
 *
 * @author  Kyle Thompson-Bass
 * @date    2018
 */
public class AVCrypto {

    /**
     * @description Gets a time series for cryptocurrency.
     * 
     * @param symbol Ticker symbol of the cryptocurrency.
     * @param market Identifier of the market.
     * @param params Additional optional parameters.
     * @return       HttpResponse from Alpha Vantage
     */
    private static HttpResponse timeSeries(String symbol, String market,
        String function, Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('symbol', symbol);
        params.put('market', market);

        return AV.send(function, params);
    }

    /**
     * @description Get the exchange rate between two currencies.
     *
     * @param fromCurrency
     * @param toCurrency
     * @param params
     * @return
     */
    public static HttpResponse exchangeRate(String fromCurrency,
        String toCurrency, Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('from_currency', fromCurrency);
        params.put('to_currency', toCurrency);

        return AV.send('CURRENCY_EXCHANGE_RATE', params);
    }

    /**
     * @description Get the daily timeseries for a cryptocurrency.
     *
     * @param symbol
     * @param market
     * @param params
     * @return
     */
    public static HttpResponse daily(String symbol, String market,
        Map<String, String> params)
    {
        return timeseries(symbol, market, 'DIGITAL_CURRENCY_DAILY', params);
    }

    /**
     * @description Get the weekly timeseries for a cryptocurrency.
     *
     * @param symbol
     * @param market
     * @param params
     * @return
     */
    public static HttpResponse weekly(String symbol, String market,
        Map<String, String> params)
    {
        return timeseries(symbol, market, 'DIGITAL_CURRENCY_WEEKLY', params);
    }

    /**
     * @description Get the monthly timeseries for a cryptocurrency.
     *
     * @param symbol
     * @param market
     * @param params
     * @return
     */
    public static HttpResponse monthly(String symbol, String market,
        Map<String, String> params)
    {
        return timeseries(symbol, market, 'DIGITAL_CURRENCY_MONTHLY', params);
    }

}
