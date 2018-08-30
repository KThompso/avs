public with sharing class AlphaVantage {

	public enum Function {
		TIME_SERIES_INTRADAY
	}

	private static AlphaVantageConfig__c config;

	static {
		AlphaVantageConfig__c[] configs = [SELECT baseurl__c, apikey__c
							   		      FROM AlphaVantageConfig__c];

		if (configs.size() > 0) {
			config = config[0];
		}
	}

	public static HttpResponse send(Function func, Map<String, String> params) {
		HttpRequest req = new HttpRequest();
		String endpoint = config.baseurl__c + '/query?function=' + func.name() +
			'&apikey=' + config.apikey__c;

		for (String key : params.keySet()) {
			endpoint += '&' + key + '=' + params.get(key);
		}

		req.setEndpoint(endpoint);
		req.setMethod('GET');
		return (new Http()).send(req);
	}

}
