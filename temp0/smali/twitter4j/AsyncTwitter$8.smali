.class Ltwitter4j/AsyncTwitter$8;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->getWeeklyTrends(Ljava/util/Date;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$date:Ljava/util/Date;

.field private final val$excludeHashTags:Z


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/util/Date;Z)V
    .locals 0
    .param p2, "x0"    # Ltwitter4j/TwitterMethod;
    .param p3, "x1"    # Ltwitter4j/TwitterListener;

    .prologue
    .line 213
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$8;->this$0:Ltwitter4j/AsyncTwitter;

    iput-object p4, p0, Ltwitter4j/AsyncTwitter$8;->val$date:Ljava/util/Date;

    iput-boolean p5, p0, Ltwitter4j/AsyncTwitter$8;->val$excludeHashTags:Z

    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AsyncTwitter$AsyncTask;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    return-void
.end method


# virtual methods
.method public invoke(Ltwitter4j/TwitterListener;)V
    .locals 3
    .param p1, "listener"    # Ltwitter4j/TwitterListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$8;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/AsyncTwitter$8;->val$date:Ljava/util/Date;

    iget-boolean v2, p0, Ltwitter4j/AsyncTwitter$8;->val$excludeHashTags:Z

    invoke-virtual {v0, v1, v2}, Ltwitter4j/Twitter;->getWeeklyTrends(Ljava/util/Date;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->gotWeeklyTrends(Ljava/util/List;)V

    .line 217
    return-void
.end method
