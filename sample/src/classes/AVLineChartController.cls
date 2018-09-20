public class AVLineChartController {
    // Return a list of data points for a chart
    public List<AVTimeSeriesResponse.Point> getData() {
        return AVLineChartController.getChartData();
    }

    // The actual chart data; needs to be static to be
    // called by a @RemoteAction method
    public static List<AVTimeSeriesResponse.Point> getChartData() {
        HttpResponse resp = AVStock.intraday('MSFT', '5min', null);
        AVTimeSeriesResponse timeseries = new AVTimeSeriesResponse();
        timeseries.parse(resp.getBody());
        return timeseries.points;
    }
    
}
