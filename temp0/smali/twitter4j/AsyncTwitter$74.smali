.class Ltwitter4j/AsyncTwitter$74;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->createFriendship(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$follow:Z

.field private final val$screenName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "x0"    # Ltwitter4j/TwitterMethod;
    .param p3, "x1"    # Ltwitter4j/TwitterListener;

    .prologue
    .line 1002
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$74;->this$0:Ltwitter4j/AsyncTwitter;

    iput-object p4, p0, Ltwitter4j/AsyncTwitter$74;->val$screenName:Ljava/lang/String;

    iput-boolean p5, p0, Ltwitter4j/AsyncTwitter$74;->val$follow:Z

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
    .line 1004
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$74;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/AsyncTwitter$74;->val$screenName:Ljava/lang/String;

    iget-boolean v2, p0, Ltwitter4j/AsyncTwitter$74;->val$follow:Z

    invoke-virtual {v0, v1, v2}, Ltwitter4j/Twitter;->createFriendship(Ljava/lang/String;Z)Ltwitter4j/User;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->createdFriendship(Ltwitter4j/User;)V

    .line 1005
    return-void
.end method
