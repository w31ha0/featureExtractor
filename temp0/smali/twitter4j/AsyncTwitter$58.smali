.class Ltwitter4j/AsyncTwitter$58;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->addUserListMember(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$listId:I

.field private final val$userId:I


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;II)V
    .locals 0
    .param p2, "x0"    # Ltwitter4j/TwitterMethod;
    .param p3, "x1"    # Ltwitter4j/TwitterListener;

    .prologue
    .line 822
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$58;->this$0:Ltwitter4j/AsyncTwitter;

    iput p4, p0, Ltwitter4j/AsyncTwitter$58;->val$listId:I

    iput p5, p0, Ltwitter4j/AsyncTwitter$58;->val$userId:I

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
    .line 824
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$58;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget v1, p0, Ltwitter4j/AsyncTwitter$58;->val$listId:I

    iget v2, p0, Ltwitter4j/AsyncTwitter$58;->val$userId:I

    invoke-virtual {v0, v1, v2}, Ltwitter4j/Twitter;->addUserListMember(II)Ltwitter4j/UserList;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->addedUserListMember(Ltwitter4j/UserList;)V

    .line 825
    return-void
.end method
