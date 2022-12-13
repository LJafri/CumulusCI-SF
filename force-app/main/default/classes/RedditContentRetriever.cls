public with sharing class RedditContentRetriever {

     
    public static HttpResponse getRedditData() {
        Http httpCallout = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:Reddit');
        req.setMethod('GET');

        HttpResponse res = httpCallout.send(req);
        return res;
        
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
