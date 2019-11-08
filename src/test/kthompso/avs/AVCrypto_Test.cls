@IsTest
class AVCrypto_Test {

	@IsTest
	static void exchangeRate_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVCrypto.exchangeRate('USD', 'BTC', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void daily_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
		HttpResponse resp = AVCrypto.daily('BTC', 'CNY', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void weekly_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
		HttpResponse resp = AVCrypto.weekly('BTC', 'CNY', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void monthly_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
		HttpResponse resp = AVCrypto.monthly('BTC', 'CNY', null);
		System.assertEquals(200, resp.getStatusCode());
	}

}
