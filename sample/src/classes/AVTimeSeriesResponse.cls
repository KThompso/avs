public class AVTimeSeriesResponse {

    public List<Point> points = new List<Point>();

    public void parse(String jsonStr) {
        Map<String, Object> m = (Map<String, Object>) JSON.deserializeUntyped(jsonStr);
        Map<String, Object> timeseries = (Map<String, Object>) m.get('Time Series (5min)');

        for (String k : timeseries.keyset()) {
            Map<String, Object> data = (Map<String, Object>) timeseries.get(k);

            Point p = new Point();
            p.timestamp = k;
            p.open = Double.valueOf(data.get('1. open'));
            p.high = Double.valueOf(data.get('2. high'));
            p.low = Double.valueOf(data.get('3. low'));
            p.close = Double.valueOf(data.get('4. close'));
            p.volume = Integer.valueOf(data.get('5. volume'));
            points.add(p);
        }
    }

    public class Point {
        public String timestamp {get; set;}
        public Double open {get; set;}
        public Double high {get; set;}
        public Double low {get; set;}
        public Double close {get; set;}
        public Integer volume {get; set;}
    }

}
