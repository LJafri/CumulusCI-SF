public class RedditJSONParser {

    @AuraEnabled
	public Post data;

    public class Post {
        @AuraEnabled
        public List<Children> children;
    }

    public class Children {
        @AuraEnabled
		public Data data;
	}

	public class Data {

        @AuraEnabled
		public String name;

        @AuraEnabled
		public String author;

        @AuraEnabled
		public String url;

        @AuraEnabled
        public String selftext;
	}
	
	public static RedditJSONParser parse(String json) {
		return (RedditJSONParser) System.JSON.deserialize(json, RedditJSONParser.class);
	}
}