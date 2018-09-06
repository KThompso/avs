@IsTest
class AVForex_Test {

	@IsTest
	static void exchangeRate_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVForex.exchangeRate('USD', 'EUR', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void intraday_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVForex.intraday('EUR', 'USD', '5min', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void daily_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
		HttpResponse resp = AVForex.daily('EUR', 'USD', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void weekly_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
		HttpResponse resp = AVForex.weekly('EUR', 'USD', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void monthly_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
		HttpResponse resp = AVForex.monthly('EUR', 'USD', null);
		System.assertEquals(200, resp.getStatusCode());
	}

}
