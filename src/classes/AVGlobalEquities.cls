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

}
