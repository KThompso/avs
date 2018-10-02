public class AVLineChartController {

    public String ticker {get; set;}
    public String interval {get; set;}
    public List<AVTimeSeriesResponse.Point> data {get; private set;}
    public static List<SelectOption> intervals {get; private set;}

    static {
        intervals = new SelectOption[]
        {
            new SelectOption('1min', '1 minute'),
            new SelectOption('5min', '5 minutes'),
            new SelectOption('15min', '15 minutes'),
            new SelectOption('30min', '30 minutes'),
            new SelectOption('60min', '60 minutes')
        };
    }

    public AVLineChartController() {
        data = new List<AVTimeSeriesResponse.Point>();
        // Default values
        ticker = 'MSFT';
        interval = '15min';
        getChartData();
    }

    // Return the chart data
    public void getChartData() {
        HttpResponse resp = AVStock.intraday(ticker, interval, null);
        AVTimeSeriesResponse timeseries = new AVTimeSeriesResponse();

        try {
            timeseries.parse(resp.getBody());
        } catch (Exception e) {
            ApexPages.addMessage(new ApexPages.Message(
                        ApexPages.Severity.ERROR, e.getMessage()));
        }

        data = timeseries.points;
    }


}
