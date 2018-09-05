public class AVIndicators {

    private static HttpResponse getIndicator(String indicator, String symbol,
        String interval, String seriesType, Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('symbol', symbol);
        params.put('interval', interval);
        params.put('series_type', seriesType);

        return AV.send(indicator, params);
    }

    private static HttpResponse getIndicator(String indicator, String symbol,
        String interval, String seriesType, String timePeriod,
        Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('time_period', timePeriod);

        return getIndicator(indicator, symbol, interval, seriesType, params);
    }

}
