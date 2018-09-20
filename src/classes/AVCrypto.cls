/**
 * @description This class contains utility methods for interacting with the
 * Alpha Vantage cryptocurrency API.  The methods and parameters available on
 * the Alpha Vantage API are listed in the Alpha Vantage documentation:
 * www.alphavantage.co/documentation/.
 *
 * @group           AlphaVantage
 * @group-content   ../../ApexDocContent/AlphaVantage.htm
 *
 * @author  Kyle Thompson-Bass
 * @date    2018
 */
public class AVCrypto {

    /**
     * @description Get time series data for a digital/crypto currency.
     * 
     * @param symbol   Symbol of the digital/crypto currency, e.g. BTC
     * @param market   Identifier of the market, e.g. CYN
     * @param function Time series function to call, e.g. TIME_SERIES_DAILY
     * @param params   Optional query parameters
     * @return
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
     * @description Get exchange rate between two currencies.
     *
     * @param fromCurrency Symbol to convert from, e.g. BTC
     * @param toCurrency   Symbol to convert to, e.g. USD
     * @param params       Optional query parameters
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
     * @description Get daily time series data for a digital/crypto currency.
     *
     * @param symbol Symbol of digital/crypto currency, e.g. BTC
     * @param market Market identifier, e.g. CYN
     * @param params Optional query parameters
     * @return
     */
    public static HttpResponse daily(String symbol, String market,
        Map<String, String> params)
    {
        return timeseries(symbol, market, 'DIGITAL_CURRENCY_DAILY', params);
    }

    /**
     * @description Get the weekly time series data for a digital/crypto
     * currency.
     *
     * @param symbol Symbol for a digital/crypto currency, e.g. BTC
     * @param market Market identifier, e.g. CYN
     * @param params Optional query parameters
     * @return
     */
    public static HttpResponse weekly(String symbol, String market,
        Map<String, String> params)
    {
        return timeseries(symbol, market, 'DIGITAL_CURRENCY_WEEKLY', params);
    }

    /**
     * @description Get the monthly time series data for a digital/crypto
     * currency.
     *
     * @param symbol Symbol for the digital/crypto currency, e.g. BTC
     * @param market Market identifier, e.g. CYN
     * @param params Optional query parameters
     * @return
     */
    public static HttpResponse monthly(String symbol, String market,
        Map<String, String> params)
    {
        return timeseries(symbol, market, 'DIGITAL_CURRENCY_MONTHLY', params);
    }

}
