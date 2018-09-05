public with sharing class AV {

    public static final String baseurl = 'https://www.alphavantage.co';
    private static final String apikey = 'CHANGE_ME';

    public static HttpResponse send(String function, Map<String, String> params)
    {
        String endpoint = baseurl + '/query?function=' + function
            + '&apikey=' + apikey;

        if (params == null) {
            params = new Map<String, String>();
        }

        for (String key : params.keySet()) {
            endpoint += '&' + key + '=' + params.get(key);
        }

        HttpRequest req = new HttpRequest();
        req.setEndpoint(endpoint);
        req.setMethod('GET');
        return (new Http()).send(req);
    }

}
