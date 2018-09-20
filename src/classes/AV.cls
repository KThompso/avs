/**
 * @description This class contains utility functions for interacting with the
 * Alpha Vantage API.  The functions and parameters available on the Alpha
 * Vantage API are listed in the Alpha Vantage documentation,
 * https://www.alphavantage.co/documentation/
 *
 * @group           AlphaVantage
 * @group-content   ../../ApexDocContent/AlphaVantage.htm
 *
 * @author  Kyle Thompson-Bass
 * @date    2018
 */
public with sharing class AV {

    /**
     * Set this to your Alpha Vantage API Key, or get one at:
     * https://www.alphavantage.co/support/#api-key
     */
    private static final String API_KEY = 'CHANGE_ME';
    public static final String BASE_URL = 'https://www.alphavantage.co';

    /**
     * @description A low level function that sends a request to the Alpha
     * Vantage API.  This would not typically be invoked outside of the
     * wrapper methods provided by this package.
     *
     * @param   function    The function to call, e.g. TIME_SERIES_INTRADAY
     * @param   params      Map of URL parameter names to their values.  See the
     *                      Alpha Vantage API documentation for a full list of
     *                      functions and parameters.
     * @return              The HttpResponse from Alpha Vantage.
     */
    public static HttpResponse send(String function, Map<String, String> params)
    {
        String endpoint = BASE_URL + '/query?function=' + function
            + '&apikey=' + API_KEY;

        if (params != null) {
            for (String key : params.keySet()) {
                endpoint += '&' + key + '=' + params.get(key);
            }
        }

        HttpRequest req = new HttpRequest();
        req.setEndpoint(endpoint);
        req.setMethod('GET');
        return (new Http()).send(req);
    }

}
