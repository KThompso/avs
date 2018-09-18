/**
 * @description This class contains utility functions for interacting with the
 * Alpha Vantage Sector Performance API.  The functions and parameters
 * available on the Alpha Vantage API are listed in the Alpha Vantage
 * documentation, https://www.alphavantage.co/documentation/
 *
 * @group           AlphaVantage
 * @group-content   ../../ApexDocContent/AlphaVantage.htm
 *
 * @author  Kyle Thompson-Bass
 * @date    2018
 */
public class AVSector {

    /**
     * @description Gets the sector performance for the S&P500 incumbents
     *
     * @param       params  Map of extra URL parameters.
     * @response
     */
    public static HttpResponse sector(Map<String, String> params) {
        return AV.send('SECTOR', params);
    }

    /**
     * @description Convience function that takes no parameters and returns      * the sector performances calculated from S&P500 incumbents.
     *
     * @response
     */
    public static HttpResponse sector() {
        return sector('SECTOR', null);
    }

}
