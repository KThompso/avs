public class AVGlobalEquities {

    public enum IntradayInterval {
        ONE_MIN, FIVE_MIN, FIFTEEN_MIN, THIRTY_MIN, SIXY_MIN
    }

    static final String[] intradayIntervalStrings = new String[] {
        '1min', '5min', '15min', '30min', '60min'
    };

    static String toString(IntradayInterval interval) {
        return intradayIntervalStrings[interval.ordinal()];
    }

    public enum OutputSize {
        compact, full
    }

    public static String timeSeriesIntraday(String symbol,
        IntradayInterval interval, OutputSize osize)
    {
        AVRequest req = new AVRequest(AlphaVantage.Function.TIME_SERIES_INTRADAY);
        req.putParam('symbol', symbol, true);
        req.putParam('interval', (interval == null ? null : toString(interval)),
            true);
        req.putParam('outputsize', (osize == null ? null : osize.name()),
            false);
        
        HttpResponse resp = req.send();
        return resp.getBody();
    }

}
