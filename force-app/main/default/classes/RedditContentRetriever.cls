public with sharing class RedditContentRetriever {

     
    public static List<RedditJSONParser.Data> getRedditData() {
        Http httpCallout = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('callout:Reddit');
        req.setMethod('GET');

        HttpResponse res = httpCallout.send(req);
        List<RedditJSONParser.Data> redditData = parseRedditData(res.getBody());

        return redditData;
        
    }

    public static List<RedditJSONParser.Data> parseRedditData(String body) {
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
