.class Ltwitter4j/AsyncTwitter$49;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->createUserList(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$description:Ljava/lang/String;

.field private final val$isPublicList:Z

.field private final val$listName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ltwitter4j/TwitterMethod;
    .param p3, "x1"    # Ltwitter4j/TwitterListener;

    .prologue
    .line 722
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$49;->this$0:Ltwitter4j/AsyncTwitter;

    iput-object p4, p0, Ltwitter4j/AsyncTwitter$49;->val$listName:Ljava/lang/String;

    iput-boolean p5, p0, Ltwitter4j/AsyncTwitter$49;->val$isPublicList:Z

    iput-object p6, p0, Ltwitter4j/AsyncTwitter$49;->val$description:Ljava/lang/String;

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
    .line 724
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$49;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/AsyncTwitter$49;->val$listName:Ljava/lang/String;

    iget-boolean v2, p0, Ltwitter4j/AsyncTwitter$49;->val$isPublicList:Z

    iget-object v3, p0, Ltwitter4j/AsyncTwitter$49;->val$description:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/Twitter;->createUserList(Ljava/lang/String;ZLjava/lang/String;)Ltwitter4j/UserList;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->createdUserList(Ltwitter4j/UserList;)V

    .line 725
    return-void
.end method
