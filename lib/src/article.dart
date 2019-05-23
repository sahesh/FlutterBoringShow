class Article {
  final String text;
  final String url;
  final String by;
  final String time;
  final int score;
  final String domain;
  final int commentsCount;

  const Article(
      {this.text,
      this.url,
      this.by,
      this.time,
      this.score,
      this.domain,
      this.commentsCount});

 
}

final articles = [
  new Article(
    text:
        "Circular Shock Acoustic Waves in Ionosphere Triggered by Launch of Formosat-5",
    url: "wiley.com",
    by: "zdw",
    time: "3 hours",
    score: 177,
    domain: "reutres.com",
    commentsCount: 62,
  ),
  new Article(
    text: "BMW says electric car mass production not viable until 2020",
    url: "reuters.com",
    by: "Mononokay",
    time: "2 hours",
    score: 81,
    domain: "reutres.com",
    commentsCount: 128,
  ),
  new Article(
    text: "Evolution Is the New Deep Learning",
    url: "sentient.ai",
    by: "jonbaer",
    time: "4 hours",
    score: 200,
    domain: "reutres.com",
    commentsCount: 87,
  ),
  new Article(
    text: "TCP Traceopoints hace arrived in Linux",
    url: "brndangregg.com",
    by: "brendangregg",
    time: "1 hour",
    score: 35,
    domain: "reutres.com",
    commentsCount: 0,
  ),
  new Article(
    text:
        "Section 230: A Key Legal Shield for Facebook, Google Is About to Change",
    url: "npr.org",
    by: "Monokay",
    time: "5 hours",
    score: 156,
    domain: "reutres.com",
    commentsCount: 66,
  ),
  new Article(
    text: "A Visiting Star Jostled Our Solar System 70,000 Years Ago",
    url: "gizmodo.com",
    by: "rbanffy",
    time: "7 hours",
    score: 122,
    domain: "reutres.com",
    commentsCount: 43,
  ),
  new Article(
    text:
        "Number systems of the world, sorted by complexity of counting (2006)",
    url: "airnet.ne.jp",
    by: "ColinWright",
    time: "8 hours",
    score: 196,
    domain: "reutres.com",
    commentsCount: 90,
  ),
  new Article(
    text: "MIT's new device can pull water from desert air",
    url: "techcrunch.com",
    by: "evo_9",
    time: "43 minutes",
    score: 11,
    domain: "reutres.com",
    commentsCount: 11,
  ),
  new Article(
    text:
        "TravisBuddy: Adds comments to failed pull requests, tells author what went wrong",
    url: "github.com",
    by: "bluzzi",
    time: "8 hours",
    score: 37,
    domain: "reutres.com",
    commentsCount: 26,
  ),
  new Article(
    text: "Using Technical Debt in Your Favor",
    url: "gitconnected.com",
    by: "treyhuffine",
    time: "7 hours",
    score: 140,
    domain: "reutres.com",
    commentsCount: 123,
  ),
];
