/**
 * @description This class contains utility functions for interacting with the
 * Alpha Vantage technical indicators API.  The functions and parameters
 * available on the Alpha Vantage API are listed in the Alpha Vantage
 * documentation: www.alphavantage.co/documentation/.
 *
 * @group           AlphaVantage
 * @group-content   ../../ApexDocContent/AlphaVantage.htm
 *
 * @author  Kyle Thompson-Bass
 * @date    2018
 */
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
        String interval, String timePeriod, String seriesType, 
        Map<String, String> params)
    {
        if (params == null) {
            params = new Map<String, String>();
        }

        if (timePeriod != null) {
            params.put('time_period', timePeriod);
        }

        if (seriesType != null) {
            params.put('series_type', seriesType);
        }

        return getIndicator(indicator, symbol, interval, params);
    }

    /**
     * @description Simple moving average
     *
     * @param symbol
     * @param interval
     * @param timePeriod
     * @param seriesType
     * @param params
     * @return
     */
    public static HttpResponse sma(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('SMA', symbol, interval, timePeriod, seriesType,
            params);
    }

    /**
     * @description Exponential moving average
     *
     * @param symbol
     * @param interval
     * @param timePeriod
     * @param seriesType
     * @param params
     * @return
     */
    public static HttpResponse ema(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('EMA', symbol, interval, timePeriod, seriesType,
            params);
    }

    /**
     * @description Weighted moving average
     *
     * @param symbol
     * @param interval
     * @param timePeriod
     * @param seriesType
     * @param params
     * @return
     */
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

    /**
     * @description Triple exponential moving average
     */
    public static HttpResponse tema(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('TEMA', symbol, interval, timePeriod, seriesType,
            params);
    }

    /**
     * @description Trinagular moving average
     */
    public static HttpResponse trima(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('TRIMA', symbol, interval, timePeriod, seriesType,
            params);
    }

    /**
     * @description Kaufman adaptive moving average
     */
    public static HttpResponse kama(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('KAMA', symbol, interval, timePeriod, seriesType,
            params);
    }

    /**
     * @description MESA adaptive moving average
     */
    public static HttpResponse mama(String symbol, String interval,
        string seriesType, Map<String, String> params)
    {
        return getIndicator('MAMA', symbol, interval, null, seriesType, params);
    }

    /**
     * @description Triple exponential moving average 
     */
    public static HttpResponse t3(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('T3', symbol, interval, timePeriod, seriesType,
            params);
    }

    /**
     * @description Average convergence / divergence
     */
    public static HttpResponse macd(String symbol, String interval,
        string seriesType, Map<String, String> params)
    {
        return getIndicator('MACD', symbol, interval, null, seriesType, params);
    }

    /**
     * @description Moving average convergence / divergence
     */
    public static HttpResponse macdext(String symbol, String interval,
        string seriesType, Map<String, String> params)
    {
        return getIndicator('MACDEXT', symbol, interval, null, seriesType,
                params);
    }

    /**
     * @description Stochastic oscillator
     */
    public static HttpResponse stoch(String symbol, String interval,
        Map<String, String> params)
    {
        return getIndicator('STOCH', symbol, interval, params);
    }

    /**
     * @description Stochastic fast
     */
    public static HttpResponse stochf(String symbol, String interval,
        Map<String, String> params)
    {
        return getIndicator('STOCHF', symbol, interval, params);
    }

    /**
     * @description Relative strength index
     */
    public static HttpResponse rsi(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('RSI', symbol, interval, timePeriod, seriesType,
            params);
    }

    /**
     * @description Stochastic relative strength index
     */
    public static HttpResponse stochrsi(String symbol, String interval,
        String timePeriod, string seriesType, Map<String, String> params)
    {
        return getIndicator('STOCHRSI', symbol, interval, timePeriod,
            seriesType, params);
    }

    /**
     * @description Williams' %R
     */
    public static HttpResponse willr(String symbol, String interval,
        String timePeriod, Map<String, String> params)
    {
        return getIndicator('WILLR', symbol, interval, timePeriod, null,
                params);
    }

    /**
     * @description Average directional movement index
     */
    public static HttpResponse adx(String symbol, String interval,
        String timePeriod, Map<String, String> params)
    {
        return getIndicator('ADX', symbol, interval, timePeriod, null, params);
    }

    /**
     * @description Average directional movement index rating
     */
    public static HttpResponse adxr(String symbol, String interval,
        String timePeriod, Map<String, String> params)
    {
        return getIndicator('ADXR', symbol, interval, timePeriod, null, params);
    }

    /**
     * @description Absolute price oscillator
     */
    public static HttpResponse apo(String symbol, String interval,
        string seriesType, Map<String, String> params)
    {
        return getIndicator('APO', symbol, interval, null, seriesType, params);
    }

    /**
     * @description Percentage price oscillator
     */
    public static HttpResponse ppo(String symbol, String interval,
        string seriesType, Map<String, String> params)
    {
        return getIndicator('PPO', symbol, interval, null, seriesType, params);
    }

    /**
     * @description Momentum
     */
    public static HttpResponse mom(String symbol, String interval,
        String timePeriod, String seriesType, Map<String, String> params)
    {
        return getIndicator('MOM', symbol, interval, timePeriod, seriesType,
               params);
    }

    /**
     * @description Balance of powers
     */
    public static HttpResponse bop(String symbol, String interval,
        Map<String, String> params)
    {
        return getIndicator('BOP', symbol, interval, params);
    }

    /**
     * @description Commodity channel index
     */
    public static HttpResponse cci(String symbol, String interval,
        String timePeriod, Map<String, String> params)
    {
        return getIndicator('CCI', symbol, interval, timePeriod, null, params);
    }

    /**
     * @description Change momentum oscillator
     */
    public static HttpResponse cmo(String symbol, String interval,
        string seriesType, Map<String, String> params)
    {
        return getIndicator('CMO', symbol, interval, null, seriesType, params);
    }

    /**
     * @description Rate of change
     */
    public static HttpResponse roc(String symbol, String interval,
        string seriesType, Map<String, String> params)
    {
        return getIndicator('ROC', symbol, interval, null, seriesType, params);
    }

    /**
     * @description Rate of change ratio
     */
    public static HttpResponse rocr(String symbol, String interval,
        string seriesType, Map<String, String> params)
    {
        return getIndicator('ROCR', symbol, interval, null, seriesType, params);
    }

    /**
     * @description Aroon
     */
    public static HttpResponse aroon(String symbol, String interval,
        string timePeriod, Map<String, String> params)
    {
        return getIndicator('AROON', symbol, interval, timePeriod, null,
                params);
    }

    /**
     * @description Aroon oscillator
     */
    public static HttpResponse aroonosc(String symbol, String interval,
        string timePeriod, Map<String, String> params)
    {
        return getIndicator('AROONOSC', symbol, interval, timePeriod, null,
                params);
    }

    /**
     * @description Money flow index
     */
    public static HttpResponse mfi(String symbol, String interval,
        string timePeriod, Map<String, String> params)
    {
        return getIndicator('MFI', symbol, interval, timePeriod, null, params);
    }

    /**
     * @description 1-day r ate of change of a triple smooth exponential moving
     * average
     */
    public static HttpResponse trix(String symbol, String interval,
        String timePeriod, String seriesType, Map<String, String> params)
    {
        return getIndicator('TRIX', symbol, interval, timePeriod, seriesType,
               params);
    }

    /**
     * @description Ultimate oscillator
     */
    public static HttpResponse ultosc(String symbol, String interval,
        Map<String, String> params)
    {
        return getIndicator('ULTOSC', symbol, interval, params);
    }

    /**
     * @description Directional movement index
     */
    public static HttpResponse dx(String symbol, String interval,
        String timePeriod, Map<String, String> params)
    {
        return getIndicator('DX', symbol, interval, timePeriod, null, params);
    }

    /**
     * @description Minus directional indicator
     */
    public static HttpResponse minusDI(String symbol, String interval,
        String timePeriod, Map<String, String> params)
    {
        return getIndicator('MINUS_DI', symbol, interval, timePeriod, null,
                params);
    }

    /**
     * @description Plus directional indicator
     */
    public static HttpResponse plusDI(String symbol, String interval,
        String timePeriod, Map<String, String> params)
    {
        return getIndicator('PLUS_DI', symbol, interval, timePeriod, null,
                params);
    }

    /**
     * @description Minus directional movement
     */
    public static HttpResponse minusDM(String symbol, String interval,
        String timePeriod, Map<String, String> params)
    {
        return getIndicator('MINUS_DM', symbol, interval, timePeriod, null,
                params);
    }

    /**
     * @description Plus directional movement
     */
    public static HttpResponse plusDM(String symbol, String interval,
        String timePeriod, Map<String, String> params)
    {
        return getIndicator('PLUS_DM', symbol, interval, timePeriod, null,
                params);
    }

    /**
     * @description Bollinger bands
     */
    public static HttpResponse bbands(String symbol, String interval,
        String timePeriod, String seriesType, Map<String, String> params)
    {
        return getIndicator('BBANDS', symbol, interval, timePeriod, seriesType,
                params);
    }

    /**
     * @description Midpoint (high + low)/2
     */
    public static HttpResponse midpoint(String symbol, String interval,
        String timePeriod, String seriesType, Map<String, String> params)
    {
        return getIndicator('MIDPOINT', symbol, interval, timePeriod,
                seriesType, params);
    }

    /**
     * @description Midprice (high + low)/2
     */
    public static HttpResponse midprice(String symbol, String interval,
        String timePeriod, Map<String, String> params)
    {
        return getIndicator('MIDPRICE', symbol, interval, timePeriod, null,
                params);
    }

    /**
     * @description Parabolic SAR
     */
    public static HttpResponse sar(String symbol, String interval,
        Map<String, String> params)
    {
        return getIndicator('SAR', symbol, interval, params);
    }

    /**
     * @description True range
     */
    public static HttpResponse trange(String symbol, String interval,
        Map<String, String> params)
    {
        return getIndicator('TRANGE', symbol, interval, params);
    }

    /**
     * @description Average true range
     */
    public static HttpResponse atr(String symbol, String interval,
        String timePeriod, Map<String, String> params)
    {
        return getIndicator('ATR', symbol, interval, timePeriod, null,
               params);
    }

    /**
     * @description Normalized average true range
     */
    public static HttpResponse natr(String symbol, String interval,
        String timePeriod, Map<String, String> params)
    {
        return getIndicator('NATR', symbol, interval, timePeriod, null,
               params);
    }

    /**
     * @description Chaikin A/D line
     */
    public static HttpResponse ad(String symbol, String interval,
        Map<String, String> params)
    {
        return getIndicator('AD', symbol, interval, params);
    }

    /**
     * @description Chaikin A/D oscillator
     */
    public static HttpResponse adosc(String symbol, String interval,
        Map<String, String> params)
    {
        return getIndicator('ADOSC', symbol, interval, params);
    }

    /**
     * @description Balance volume
     */
    public static HttpResponse obv(String symbol, String interval,
        Map<String, String> params)
    {
        return getIndicator('OBV', symbol, interval, params);
    }

    /**
     * @description Hilbert transform instantaneous trendline
     */
    public static HttpResponse htTrendline(String symbol, String interval,
        String seriesType, Map<String, String> params)
    {
        return getIndicator('HT_TRENDLINE', symbol, interval, null, seriesType,
                params);
    }

    /**
     * @description Hilbert transform sine wave
     */
    public static HttpResponse htSine(String symbol, String interval,
        String seriesType, Map<String, String> params)
    {
        return getIndicator('HT_SINE', symbol, interval, null, seriesType,
                params);
    }

    /**
     * @description Hilbert transform trend vs cycle mode
     */
    public static HttpResponse htTrendmode(String symbol, String interval,
        String seriesType, Map<String, String> params)
    {
        return getIndicator('HT_TRENDMODE', symbol, interval, null, seriesType,
                params);
    }

    /**
     * @description Hilbert transform dominant cycle period
     */
    public static HttpResponse htDCPeriod(String symbol, String interval,
        String seriesType, Map<String, String> params)
    {
        return getIndicator('HT_DCPERIOD', symbol, interval, null, seriesType,
                params);
    }

    /**
     * @description Hilbert transform dominant cycle phase 
     */
    public static HttpResponse htDCPhase(String symbol, String interval,
        String seriesType, Map<String, String> params)
    {
        return getIndicator('HT_DCPHASE', symbol, interval, null, seriesType,
                params);
    }

    /**
     * @description Hilbert transform phasor components
     */
    public static HttpResponse htPhasor(String symbol, String interval,
        String seriesType, Map<String, String> params)
    {
        return getIndicator('HT_PHASOR', symbol, interval, null, seriesType,
                params);
    }

}
