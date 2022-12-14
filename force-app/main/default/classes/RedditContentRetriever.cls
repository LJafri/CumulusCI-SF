public with sharing class RedditContentRetriever {

     
    public static HttpResponse getRedditData() {
        Http httpCallout = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:Reddit');
        request.setMethod('GET');

        HttpResponse response = httpCallout.send(request);
        if(response.getStatusCode() >= 200 && response.getStatusCode() < 300) {
            return response;
        }
        throw new CalloutException(
            'Callout failed with status code ' + response.getStatusCode() + ' Status message:' + response.getStatus()
        );
    }

    public static List<RedditJSONParser.Data> parseRedditData() {
        HttpResponse res = getRedditData();
        String body = res.getBody();
        List<RedditJSONParser.Data> redditData = new List<RedditJSONParser.Data>();
        RedditJSONParser redditPostResponse = RedditJSONParser.parse(body);

        List<RedditJSONParser.Children> redditPosts = redditPostResponse.data.children;

        for(RedditJSONParser.Children child : redditPosts) {
            redditData.add(child.data);
        }

        for(RedditJSONParser.data d : redditData) {
            System.debug(' Reddit Data here : ' + d);
        }
        return redditData;
    }

}
