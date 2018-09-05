public class AVIndicators {

    private static HttpResponse getIndicator(String indicator, String symbol,
        String interval, Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('symbol', symbol);
        params.put('interval', interval);

        return AV.send(indicator, params);
    }

    private static HttpResponse getIndicator(String indicator, String symbol,
        String interval, String seriesType, Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('series_type', seriesType);

        return getIndicator(indicator, symbol, interval, params);
    }

    private static HttpResponse getIndicator(String indicator, String symbol,
        String interval, String timePeriod, String seriesType, 
        Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('time_period', timePeriod);

        return getIndicator(indicator, symbol, interval, seriesType, params);
    }

    // Simple moving average
    public static HttpResponse sma(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('SMA', symbol, interval, timePeriod, seriesType,
            params);
    }

    // Exponential moving average
    public static HttpResponse ema(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('EMA', symbol, interval, timePeriod, seriesType,
            params);
    }

    // Weighted moving average
    public static HttpResponse wma(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('WMA', symbol, interval, timePeriod, seriesType,
            params);
    }

    // Double exponential moving average
    public static HttpResponse dema(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('DEMA', symbol, interval, timePeriod, seriesType,
            params);
    }

    // Triple exponential moving average
    public static HttpResponse tema(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('TEMA', symbol, interval, timePeriod, seriesType,
            params);
    }

    // Trinagular moving average
    public static HttpResponse trima(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('TRIMA', symbol, interval, timePeriod, seriesType,
            params);
    }

    // Kaufman adaptive moving average
    public static HttpResponse kama(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('KAMA', symbol, interval, timePeriod, seriesType,
            params);
    }

    // MESA adaptive moving average
    public static HttpResponse mama(String symbol, String interval,
        string seriesType, Map<String, String> params)
    {
        return getIndicator('MAMA', symbol, interval, seriesType, params);
    }

    // Triple exponential moving average 
    public static HttpResponse t3(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('T3', symbol, interval, timePeriod, seriesType,
            params);
    }

    // Average convergence / divergence
    public static HttpResponse macd(String symbol, String interval,
        string seriesType, Map<String, String> params)
    {
        return getIndicator('MACD', symbol, interval, seriesType, params);
    }

    // Moving average convergence / divergence
    public static HttpResponse macdext(String symbol, String interval,
        string seriesType, Map<String, String> params)
    {
        return getIndicator('MACDEXT', symbol, interval, seriesType, params);
    }

    // Stochastic oscillator
    public static HttpResponse stoch(String symbol, String interval,
        Map<String, String> params)
    {
        return getIndicator('STOCH', symbol, interval, params);
    }

    // Stochastic fast
    public static HttpResponse stochf(String symbol, String interval,
        Map<String, String> params)
    {
        return getIndicator('STOCHF', symbol, interval, params);
    }

    // Relative strength index
    public static HttpResponse rsi(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('RSI', symbol, interval, timePeriod, seriesType,
            params);
    }

    // Stochastic relative strength index
    public static HttpResponse stochrsi(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('STOCHRSI', symbol, interval, timePeriod,
            seriesType, params);
    }

    // Williams' %R
    public static HttpResponse willr(String symbol, String interval,
        String timePeriod, Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('time_period', timePeriod);

        return getIndicator('WILLR', symbol, interval, params);
    }

    // Average directional movement index
    public static HttpResponse adx(String symbol, String interval,
        String timePeriod, Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('time_period', timePeriod);

        return getIndicator('ADX', symbol, interval, params);
    }

    // Average directional movement index rating
    public static HttpResponse adxr(String symbol, String interval,
        String timePeriod, Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        params.put('time_period', timePeriod);

        return getIndicator('ADXR', symbol, interval, params);
    }

    // Absolute price oscillator
    public static HttpResponse apo(String symbol, String interval,
        string seriesType, Map<String, String> params)
    {
        return getIndicator('APO', symbol, interval, seriesType, params);
    }

    // Percentage price oscillator
    public static HttpResponse ppo(String symbol, String interval,
        string seriesType, Map<String, String> params)
    {
        return getIndicator('PPO', symbol, interval, seriesType, params);
    }

    // Momentum
    public static HttpResponse mom(String symbol, String interval,
        String timePeriod, String seriesType, Map<String, String> params)
    {
        return getIndicator('MOM', symbol, interval, timePeriod, seriesType,
               params);
    }

}
