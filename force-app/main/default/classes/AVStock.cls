/**
 * @description This class contains utility methods for interacting with the
 * Alpha Vantage Stock Time Series API.  The methods and parameters available
 * on the Alpha Vantage API are listed in the Alpha Vantage documentation,
 * https:/www.alphavantage.co/documentation/
 *
 * @group           AlphaVantage
 * @group-content   ../../../../ApexDocContent/AlphaVantage.htm
 */
public class AVStock {

    public static HttpResponse intraday(String symbol,
        String interval, Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('symbol', symbol);
        params.put('interval', interval);

        return AV.send('TIME_SERIES_INTRADAY', params);
    }


    public static HttpResponse daily(String symbol,
        Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('symbol', symbol);

        return AV.send('TIME_SERIES_DAILY', params);
    }

    public static HttpResponse dailyAdjusted(String symbol,
        Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('symbol', symbol);

        return AV.send('TIME_SERIES_DAILY_ADJUSTED', params);
    }

    public static HttpResponse weekly(String symbol,
        Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('symbol', symbol);

        return AV.send('TIME_SERIES_WEEKLY', params);
    }

    public static HttpResponse weeklyAdjusted(String symbol,
        Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('symbol', symbol);

        return AV.send('TIME_SERIES_WEEKLY_ADJUSTED', params);
    }

    public static HttpResponse monthly(String symbol,
        Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('symbol', symbol);

        return AV.send('TIME_SERIES_MONTHLY', params);
    }

    public static HttpResponse monthlyAdjusted(String symbol,
        Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('symbol', symbol);

        return AV.send('TIME_SERIES_MONTHLY_ADJUSTED', params);
    }

    public static HttpResponse globalQuote(String symbol,
        Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('symbol', symbol);

        return AV.send('GLOBAL_QUOTE', params);
    }

}
