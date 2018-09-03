public class AVGlobalEquities {

    public static HttpResponse timeSeriesIntraday(String symbol,
        String interval, Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('symbol', symbol);
        params.put('interval', interval);

        return AV.send('TIME_SERIES_INTRADAY', params);
    }


    public static HttpResponse timeSeriesDaily(String symbol,
        Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('symbol', symbol);

        return AV.send('TIME_SERIES_DAILY', params);
    }

    public static HttpResponse timeSeriesDailyAdjusted(String symbol,
        Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('symbol', symbol);

        return AV.send('TIME_SERIES_DAILY_ADJUSTED', params);
    }

    public static HttpResponse timeSeriesWeekly(String symbol,
        Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('symbol', symbol);

        return AV.send('TIME_SERIES_WEEKLY_ADJUSTED', params);
    }

}