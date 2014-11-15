/** 
http://twitter4j.org/en/
Download twitter4j.zip from the source web
unzip 
copy lib/*.jar into ~/.groovy/lib
goto this url to get secret keys and keep them in twitter4j.properties:
https://apps.twitter.com/app/312449/show
*/
import twitter4j.*
import twitter4j.conf.*
import twitter4j.conf.PropertyConfiguration
import twitter4j.auth.AccessToken;
import twitter4j.auth.RequestToken;
	binding['jswordService']=new BibleService()
def getTwitter(){

new TwitterFactory().getInstance()
}
def getTimeLine(){
 	    Twitter twitter = getTwitter()
            User user = twitter.verifyCredentials();
            List<Status> statuses = twitter.getHomeTimeline();
            System.out.println("Showing @" + user.getScreenName() + "'s home timeline.");
            for (Status status : statuses) {
                System.out.println("@" + status.getUser().getScreenName() + " - " + status.getText());
            }


}
def postStatus(themsg){
        try {
            Twitter twitter = new TwitterFactory().getInstance();
	if(themsg){ 
		Status status = twitter.updateStatus(themsg);
            System.out.println("Successfully updated the status to [" + status.getText() + "].");
	}
        } catch (TwitterException te) {
            te.printStackTrace();
            System.out.println("Failed to get timeline: " + te.getMessage());
        } catch (IOException ioe) {
            ioe.printStackTrace();
            System.out.println("Failed to read the system input.");
        }
}
//getTimeLine()
def getVerse(){
	jswordService.randomVerse()
}
//postStatus("Test")

  def update() {
    def verse = jswordService.randomVerse()
    def data = jswordService.getPlainText("KJV", verse)
   try {
   update(verse + " " + data);
    data = jswordService.getPlainText("ChiUn", verse)
    update( verse + " " + data?.replaceAll(" ", ""));
        } catch (InterruptedException ex) {
            ex.printStackTrace()
        }finally{
   }

  }

  def segment(String s,List rst){
          if (s.size()<=140){
            rst.add(s)
          }else{
           rst.add(s.substring(0,140))
           segment(s.substring(140),rst)
          }
          return rst
  }

    def update(String data){
           segment(data,new ArrayList()).each{
            //twitter.updateStatus(it);
		postStatus(it)
           }
           }

    def twist(String data){
	if (data?.size()>140)data=data.substring(0,140)
	data
	}
    def membible() {
        AccessToken atk=new AccessToken("80463491-ZmWMuVYjKU5CLSYZOqNagiSnchyb8J9u8CFoCYgt6","osgqhBhpOpynF5HF8krrxy6mm5VJUaU0gpy2FQqFnes")
      def verse = jswordService.memVerse()
      def data = jswordService.getPlainText("KJV", verse)
      try {
      update(verse + " " + data);
      data = jswordService.getPlainText("ChiUn", verse)

      update(verse + " " + data.replaceAll(" ", ""));
        } catch (InterruptedException ex) {
        ex.printStackTrace()
        }
    }

  def timeline=""
  def ACCEPTEDTWITTER = ['RickWarren','MaxLucado', 'johncmaxwell', 'JohnPiper', 'gsword','membible','c3i_Leadership'] as Set
  def fetchTimeline() {
  //  println "do it here..."
    def timelines=new StringBuffer("On Twitter <a href=\"http://twitter.com/gsword\">gsword</a><br/>")
    ACCEPTEDTWITTER.each{user->

        try {
            def url = "http://twitter.com/$user"
            def data = url.toURL().text
            def line= data.split("\"timeline\">")[1].split("\"entry-content\">")[1].split("</span>")[0]
         // println line
            timelines.append("<a href=\"http://twitter.com/$user\">$user</a>: $line<br/>")
        } catch (Exception e) {
             //e.printStackTrace()
        }
    }
  timeline=timelines.toString()
  }
  def fetchTimelinex() {
   // println " Fetching timeline "+Calendar.getInstance().getTime();
    def rest = new StringBuffer("")
    try {
        AccessToken atk=new AccessToken("33532940-nGxF0r1V30V017XQ2ML19MDkIcLP3RI6xT2oVbePL","d0uSDWzMgkx6GYU5I1zCfJvhxObBjSdl4CS3OMfP4E");
        Twitter twitter=getTwitter()
      /* List<User> users=twitter.getFriendsStatuses()
       users.each {user->
         def nm=user.getScreenName()
           if(ACCEPTEDTWITTER.contains(nm)){
         def status=user.getStatusText()
          rest.append("<a href='http://www.twitter.com/"+nm+"'>"+nm+"</a>"+" "+
                                        status+"<br/>");
       }}
      */
      List<Status> statuses = twitter.getFriendsTimeline()
      for (Status status: statuses) {
        def nm = status.getUser().getScreenName()
        if (ACCEPTEDTWITTER.contains(nm)) {
          rest.append("<a href='http://www.twitter.com/" + nm + "'>" + nm + "</a>" + " " +
                  status.getText() + "<br/>");
        }
      }
      timeline = rest.toString()
         timeline = "<a href='http://www.twitter.com/gsword'>News On Twitter</a><br/>" + timeline
 
      timeline = "<p>" + timeline + "</p>"
    } catch (Exception e) {
     // e.printStackTrace()
    }
    // println retn
    timeline
  }

  def getTimeline() {
    if (!timeline) {
      timeline = fetchTimeline()
    }
    timeline
  }

 //getVerse()
  update() 
