public with sharing class AV {

    public static final String BASE_URL = 'https://www.alphavantage.co';
    private static final String API_KEY = 'CHANGE_ME';

    public static HttpResponse send(String function, Map<String, String> params)
    {
        String endpoint = BASE_URL + '/query?function=' + function
            + '&API_KEY=' + API_KEY;

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
