public class AVRequest {

    AlphaVantage.Function func;
    Map<String, String> params;

    public AVRequest(AlphaVantage.Function func) {
        this.func = func;
        params = new Map<String, String>();
    }

    public AlphaVantage.Function getFunction() {
        return func;
    }

    public Map<String, String> getParams() {
        return params; // clone?
    }

    public void putParam(String key, String value, Boolean required) {
        if (!String.isBlank(value)) {
            params.put(key, value);
        } else if (required == true) {
            throw new AVException('Missing required parameter: ' + key);
        }
    }

    public HttpResponse send() {
        return AlphaVantage.send(this);
    }

}
