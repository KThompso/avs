/**
 * @description This class contains utility methods for interacting with the
 * Alpha Vantage Forex API.  The methods and parameters available on the
 * Alpha Vantage API are listed in the Alpha Vantage documentation,
 * www.alphavantage.co/documentation/.
 * List of digital/crypto currencies can be found here:
 * www.alphavantage.co/digital_currency_list/
 * List of physical currencies can be found here:
 * www.alphavantage.co/physical_currency_list/.
 *
 * @group           AlphaVantage
 * @group-content   ../../../../ApexDocContent/AlphaVantage.htm
 */
public class AVForex {

    private static HttpResponse getForex(String function,
        String fromCurrency, String toCurrency, Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('from_currency', fromCurrency);
        params.put('to_currency', toCurrency);

        return AV.send(function, params);
    }

    /**
     * @description Get the exchange rate from one currency to another.
     *
     * @param fromCurrency Symbol to convert from, e.g. USD
     * @param toCurrency   Symbol to convert to, e.g. EUR
     * @param params       Optional query parameters
     * @return
     */
    public static HttpResponse exchangeRate(String fromCurrency,
        String toCurrency, Map<String, String> params)
    {
        return getForex('CURRENCY_EXCHANGE_RATE', fromCurrency, toCurrency,
            params);
    }

    /**
     * @description Get the intraday time series from one currency to another.
     *
     * @param fromCurrency Symbol to convert from, e.g. USD
     * @param toCurrency   Symbol to convert to, e.g. EUR
     * @param internval    Time series interval, e.g. 5min
     * @param params       Optional query parameters
     * @return
     */
    public static HttpResponse intraday(String fromCurrency,
        String toCurrency, String interval, Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('interval', interval);

        return getForex('FX_INTRADAY', fromCurrency, toCurrency, params);
    }

    /**
     * @description Get the daily time series from one currency to another.
     *
     * @param fromCurrency Symbol to convert from, e.g. USD
     * @param toCurrency   Symbol to convert to, e.g. EUR
     * @param params       Optional query parameters
     * @return
     */
    public static HttpResponse daily(String fromCurrency,
        String toCurrency, Map<String, String> params)
    {
        return getForex('FX_DAILY', fromCurrency, toCurrency, params);
    }

    /**
     * @description Get the weekly time series of exchange rates from one
     * currency to another.
     *
     * @param fromCurrency Symbol to convert from, e.g. USD
     * @param toCurrency   Symbol to convert to, e.g. EUR
     * @param params       Optional query parameters
     * @return
     */
    public static HttpResponse weekly(String fromCurrency,
        String toCurrency, Map<String, String> params)
    {
        return getForex('FX_WEEKLY', fromCurrency, toCurrency, params);
    }

    /**
     * @description Get the monthly time series of exchange rates from one
     * currency to another.
     *
     * @param fromCurrency Symbol to convert from, e.g. USD
     * @param toCurrency   Symbol to convert to, e.g. EUR
     * @param params       Optional query parameters
     * @return
     */
    public static HttpResponse monthly(String fromCurrency,
        String toCurrency, Map<String, String> params)
    {
        return getForex('FX_MONTHLY', fromCurrency, toCurrency, params);
    }

}
