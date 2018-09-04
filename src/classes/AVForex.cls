public class AVForex {

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

    public static HttpResponse intraday(String fromCurrency,
        String toCurrency, String interval, Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('from_currency', fromCurrency);
        params.put('to_currency', toCurrency);
        params.put('interval', interval);

        return AV.send('FX_INTRADAY', params);
    }

    public static HttpResponse daily(String fromCurrency,
        String toCurrency, Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('from_currency', fromCurrency);
        params.put('to_currency', toCurrency);

        return AV.send('FX_DAILY', params);
    }

    public static HttpResponse weekly(String fromCurrency,
        String toCurrency, Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('from_currency', fromCurrency);
        params.put('to_currency', toCurrency);

        return AV.send('FX_WEEKLY', params);
    }

    public static HttpResponse monthly(String fromCurrency,
        String toCurrency, Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('from_currency', fromCurrency);
        params.put('to_currency', toCurrency);

        return AV.send('FX_MONTHLY', params);
    }

}
