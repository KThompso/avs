public class AVCrypto {

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

    public static HttpResponse daily(String symbol, String market,
        Map<String, String> params)
    {
        return timeseries(symbol, market, 'DIGITAL_CURRENCY_DAILY', params);
    }

    public static HttpResponse weekly(String symbol, String market,
        Map<String, String> params)
    {
        return timeseries(symbol, market, 'DIGITAL_CURRENCY_WEEKLY', params);
    }

    public static HttpResponse monthly(String symbol, String market,
        Map<String, String> params)
    {
        return timeseries(symbol, market, 'DIGITAL_CURRENCY_MONTHLY', params);
    }

}
