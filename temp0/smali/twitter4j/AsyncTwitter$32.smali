.class Ltwitter4j/AsyncTwitter$32;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->destroyStatus(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$statusId:J


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;J)V
    .locals 0
    .param p2, "x0"    # Ltwitter4j/TwitterMethod;
    .param p3, "x1"    # Ltwitter4j/TwitterListener;

    .prologue
    .line 496
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$32;->this$0:Ltwitter4j/AsyncTwitter;

    iput-wide p4, p0, Ltwitter4j/AsyncTwitter$32;->val$statusId:J

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
    .line 498
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$32;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/AsyncTwitter$32;->val$statusId:J

    invoke-virtual {v0, v1, v2}, Ltwitter4j/Twitter;->destroyStatus(J)Ltwitter4j/Status;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->destroyedStatus(Ltwitter4j/Status;)V

    .line 499
    return-void
.end method
