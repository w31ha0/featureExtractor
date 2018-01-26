.class Ltwitter4j/AsyncTwitter$86;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->getFriendsIDs(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$cursor:J

.field private final val$userId:I


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;IJ)V
    .locals 0
    .param p2, "x0"    # Ltwitter4j/TwitterMethod;
    .param p3, "x1"    # Ltwitter4j/TwitterListener;

    .prologue
    .line 1138
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$86;->this$0:Ltwitter4j/AsyncTwitter;

    iput p4, p0, Ltwitter4j/AsyncTwitter$86;->val$userId:I

    iput-wide p5, p0, Ltwitter4j/AsyncTwitter$86;->val$cursor:J

    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AsyncTwitter$AsyncTask;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    return-void
.end method


# virtual methods
.method public invoke(Ltwitter4j/TwitterListener;)V
    .locals 4
    .param p1, "listener"    # Ltwitter4j/TwitterListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1140
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$86;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget v1, p0, Ltwitter4j/AsyncTwitter$86;->val$userId:I

    iget-wide v2, p0, Ltwitter4j/AsyncTwitter$86;->val$cursor:J

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/Twitter;->getFriendsIDs(IJ)Ltwitter4j/IDs;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->gotFriendsIDs(Ltwitter4j/IDs;)V

    .line 1141
    return-void
.end method
