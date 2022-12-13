public with sharing class RedditContentRetriever {
    
    public static List<RedditJSONParser.Data> getRedditData() {
        List<RedditJSONParser.Data> redditData = new List<RedditJSONParser.Data>();

        Http httpCallout = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:Reddit');
        req.setMethod('GET');

        HttpResponse res = httpCallout.send(req);
        RedditJSONParser redditPostResponse = RedditJSONParser.parse(res.getBody());

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
