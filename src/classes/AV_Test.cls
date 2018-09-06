@IsTest
class AV_Test {

    @IsTest
    static void send_should_respondWith200() {
        Test.setMock(HttpCalloutMock.class, new AVMockResponseGenerator());
        HttpResponse resp = AV.send('TestFunc', null);

        System.assertEquals(200, resp.getStatusCode());
    }

}
