.class Ltwitter4j/AsyncTwitter$61;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->getUserListSubscribers(Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$cursor:J

.field private final val$listId:I

.field private final val$listOwnerScreenName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;IJ)V
    .locals 0
    .param p2, "x0"    # Ltwitter4j/TwitterMethod;
    .param p3, "x1"    # Ltwitter4j/TwitterListener;

    .prologue
    .line 857
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$61;->this$0:Ltwitter4j/AsyncTwitter;

    iput-object p4, p0, Ltwitter4j/AsyncTwitter$61;->val$listOwnerScreenName:Ljava/lang/String;

    iput p5, p0, Ltwitter4j/AsyncTwitter$61;->val$listId:I

    iput-wide p6, p0, Ltwitter4j/AsyncTwitter$61;->val$cursor:J

    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AsyncTwitter$AsyncTask;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    return-void
.end method


# virtual methods
.method public invoke(Ltwitter4j/TwitterListener;)V
    .locals 5
    .param p1, "listener"    # Ltwitter4j/TwitterListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 859
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$61;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/AsyncTwitter$61;->val$listOwnerScreenName:Ljava/lang/String;

    iget v2, p0, Ltwitter4j/AsyncTwitter$61;->val$listId:I

    iget-wide v3, p0, Ltwitter4j/AsyncTwitter$61;->val$cursor:J

    invoke-virtual {v0, v1, v2, v3, v4}, Ltwitter4j/Twitter;->getUserListSubscribers(Ljava/lang/String;IJ)Ltwitter4j/PagableResponseList;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->gotUserListSubscribers(Ltwitter4j/PagableResponseList;)V

    .line 860
    return-void
.end method
