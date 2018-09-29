public class AVTimeSeriesResponse {

    public class AVException extends Exception {}

    public List<Point> points = new List<Point>();

    public void parse(String jsonStr) {
        // Convert json response into a map and get the time series
        Map<String, Object> m = (Map<String, Object>) JSON.deserializeUntyped(jsonStr);

        String err;
        if ((err = (String)m.get('Error Message')) != null) {
            AVException ex = new AVException();
            ex.setMessage(err);
            throw ex;
        }

        Map<String, Object> timeseries;
        for (String key : m.keySet()) {
            if (key.startsWith('Time Series')) {
                timeseries = (Map<String, Object>) m.get(key);
            }
        }

        // Convert time series values to points.  Whoever added spaces and
        // non alphanum chars to these attributes needs a stern talking to...
        for (String k : timeseries.keyset()) {
            Map<String, Object> data = (Map<String, Object>) timeseries.get(k);

            Point p = new Point();
            p.timestamp = k;
            p.timeval = DateTime.valueOf(k).format('h:mm a');
            p.open = Double.valueOf(data.get('1. open'));
            p.high = Double.valueOf(data.get('2. high'));
            p.low = Double.valueOf(data.get('3. low'));
            p.close = Double.valueOf(data.get('4. close'));
            p.volume = Integer.valueOf(data.get('5. volume'));
            points.add(p);
        }

        points.sort(); // Sort the points by date
    }

    public class Point implements Comparable {
        public String timestamp {get; set;}
        public String timeval {get; set;}
        public Double open {get; set;}
        public Double high {get; set;}
        public Double low {get; set;}
        public Double close {get; set;}
        public Integer volume {get; set;}

        public Integer compareTo(Object o) {
            Point p = (Point) o;
            return timestamp.compareTo(p.timestamp);
        }
    }

}
