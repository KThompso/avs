@IsTest
class AVSector_Test {

	@IsTest
	static void sector_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVSector.sector();
		System.assertEquals(200, resp.getStatusCode());
	}

	@IsTest
	static void sectorWithMap_should_return200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
    	HttpResponse resp = AVSector.sector(null);
		System.assertEquals(200, resp.getStatusCode());
	}

}
