@IsTest
class AVGlobalEquities_Test {

	@IsTest
	static void intraday_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVGlobalEquities.intraday('MSFT', '5min', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void daily_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVGlobalEquities.daily('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void dailyAdjusted_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVGlobalEquities.dailyAdjusted('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void weekly_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVGlobalEquities.weekly('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void weeklyAdjusted_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVGlobalEquities.weeklyAdjusted('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void monthly_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVGlobalEquities.monthly('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void monthlyAdjusted_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVGlobalEquities.monthlyAdjusted('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void globalQuote_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVGlobalEquities.globalQuote('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

}
