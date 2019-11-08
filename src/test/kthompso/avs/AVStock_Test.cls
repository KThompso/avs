@IsTest
class AVStock_Test {

	@IsTest
	static void intraday_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVStock.intraday('MSFT', '5min', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void daily_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVStock.daily('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void dailyAdjusted_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVStock.dailyAdjusted('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void weekly_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVStock.weekly('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void weeklyAdjusted_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVStock.weeklyAdjusted('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void monthly_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVStock.monthly('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void monthlyAdjusted_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVStock.monthlyAdjusted('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void globalQuote_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVStock.globalQuote('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

}
