public class AVLineChartController {

    public String ticker {get; set;}
    public String interval {get; set;}

    // Return the chart data
    public List<AVTimeSeriesResponse.Point> getData() {
        HttpResponse resp = AVStock.intraday(ticker, interval, null);
        AVTimeSeriesResponse timeseries = new AVTimeSeriesResponse();

        try {
            timeseries.parse(resp.getBody());
        } catch (Exception e) {
            ApexPages.addMessage(new ApexPages.Message(
                        ApexPages.Severity.ERROR, e.getMessage()));
            return new List<AVTimeSeriesResponse.Point>();
        }
        return timeseries.points;
    }

    public static List<SelectOption> getIntervals() {
        return new SelectOption[] {
            new SelectOption('1min', '1 minute'),
            new SelectOption('5min', '5 minutes'),
            new SelectOption('15min', '15 minutes'),
            new SelectOption('30min', '30 minutes'),
            new SelectOption('60min', '60 minutes')
        };
    }
    
}
