.class Ltwitter4j/AsyncTwitter$19;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->getMentions(Ltwitter4j/Paging;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$paging:Ltwitter4j/Paging;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ltwitter4j/Paging;)V
    .locals 0
    .param p2, "x0"    # Ltwitter4j/TwitterMethod;
    .param p3, "x1"    # Ltwitter4j/TwitterListener;

    .prologue
    .line 353
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$19;->this$0:Ltwitter4j/AsyncTwitter;

    iput-object p4, p0, Ltwitter4j/AsyncTwitter$19;->val$paging:Ltwitter4j/Paging;

    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AsyncTwitter$AsyncTask;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    return-void
.end method


# virtual methods
.method public invoke(Ltwitter4j/TwitterListener;)V
    .locals 2
    .param p1, "listener"    # Ltwitter4j/TwitterListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$19;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/AsyncTwitter$19;->val$paging:Ltwitter4j/Paging;

    invoke-virtual {v0, v1}, Ltwitter4j/Twitter;->getMentions(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->gotMentions(Ltwitter4j/ResponseList;)V

    .line 356
    return-void
.end method
