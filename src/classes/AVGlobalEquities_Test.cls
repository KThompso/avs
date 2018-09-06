@IsTest
class AVGlobalEquities_Test {

	@IsTest
	static void timeSeriesIntraday_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVGlobalEquities.timeSeriesIntraday('MSFT', '5min', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void timeSeriesDaily_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVGlobalEquities.timeSeriesDaily('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void timeSeriesDailyAdjusted_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVGlobalEquities.timeSeriesDailyAdjusted('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void timeSeriesWeekly_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVGlobalEquities.timeSeriesWeekly('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void timeSeriesWeeklyAdjusted_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVGlobalEquities.timeSeriesWeeklyAdjusted('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void timeSeriesMonthly_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVGlobalEquities.timeSeriesMonthly('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void timeSeriesMonthlyAdjusted_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVGlobalEquities.timeSeriesMonthlyAdjusted('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void globalQuote_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVGlobalEquities.globalQuote('MSFT', null);
		System.assertEquals(200, resp.getStatusCode());
	}

}
