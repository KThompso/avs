@IsTest
class AVIndicators_Test {

	@IsTest
	static void sma_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.sma('MSFT', 'weekly', '10', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void ema_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.ema('MSFT', 'weekly', '10', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void wma_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.wma('MSFT', 'weekly', '10', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void dema_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.dema('MSFT', 'weekly', '10', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void tema_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.tema('MSFT', 'weekly', '10', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void trima_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.trima('MSFT', 'weekly', '10', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void kama_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.kama('MSFT', 'weekly', '10', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void mama_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.mama('MSFT', 'weekly', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void t3_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.t3('MSFT', 'weekly', '10', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void macd_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.macd('MSFT', 'weekly', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void macdext_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.macdext('MSFT', 'weekly', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void stoch_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.stoch('MSFT', 'weekly', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void stochf_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.stochf('MSFT', 'weekly', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void rsi_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.rsi('MSFT', 'weekly', '10', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void stochrsi_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.stochrsi('MSFT', 'weekly', '10', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void willr_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.willr('MSFT', 'weekly', '10', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void adx_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.adx('MSFT', 'weekly', '10', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void adxr_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.adxr('MSFT', 'weekly', '10', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void apo_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.apo('MSFT', 'weekly', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void ppo_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.ppo('MSFT', 'weekly', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void mom_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.mom('MSFT', 'weekly', '10', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void bop_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.bop('MSFT', 'weekly', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void cci_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.cci('MSFT', 'weekly', '10', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void cmo_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.cmo('MSFT', 'weekly', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void roc_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.roc('MSFT', 'weekly', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void rocr_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.rocr('MSFT', 'weekly', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void aroon_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.aroon('MSFT', 'weekly', '10', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void aroonosc_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.aroonosc('MSFT', 'weekly', '10', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void mfi_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.mfi('MSFT', 'weekly', '10', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void trix_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.trix('MSFT', 'weekly', '10', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void ultosc_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.ultosc('MSFT', 'weekly', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void dx_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.dx('MSFT', 'weekly', '10', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void minusDI_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.minusDI('MSFT', 'weekly', '10', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void plusDI_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.plusDI('MSFT', 'weekly', '10', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void minusDM_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.minusDM('MSFT', 'weekly', '10', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void plusDM_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.plusDM('MSFT', 'weekly', '10', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void bbands_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.bbands('MSFT', 'weekly', '10', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void midpoint_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.midpoint('MSFT', 'weekly', '10', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void midprice_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.midprice('MSFT', 'weekly', '10', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void sar_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.sar('MSFT', 'weekly', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void trange_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.trange('MSFT', 'weekly', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void atr_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.atr('MSFT', 'weekly', '10', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void natr_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.natr('MSFT', 'weekly', '10', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void ad_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.ad('MSFT', 'weekly', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void adosc_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.adosc('MSFT', 'weekly', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void obv_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.obv('MSFT', 'weekly', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void htTrendline_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.htTrendline('MSFT', 'weekly', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void htSine_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.htSine('MSFT', 'weekly', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void htTrendmode_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.htTrendmode('MSFT', 'weekly', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void htDCPeriod_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.htDCPeriod('MSFT', 'weekly', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void htDCPhase_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.htDCPhase('MSFT', 'weekly', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void htPhasor_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVIndicators.htPhasor('MSFT', 'weekly', 'open', null);
		System.assertEquals(200, resp.getStatusCode());
	}

}
