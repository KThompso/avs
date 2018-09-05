public class AVSector {

    public static HttpResponse sector(Map<String, String> params) {
        return AV.send('SECTOR', params);
    }

}
