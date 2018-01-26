.class Ltwitter4j/AsyncTwitter$50;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->updateUserList(ILjava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$isPublicList:Z

.field private final val$listId:I

.field private final val$newDescription:Ljava/lang/String;

.field private final val$newListName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ltwitter4j/TwitterMethod;
    .param p3, "x1"    # Ltwitter4j/TwitterListener;

    .prologue
    .line 733
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$50;->this$0:Ltwitter4j/AsyncTwitter;

    iput p4, p0, Ltwitter4j/AsyncTwitter$50;->val$listId:I

    iput-object p5, p0, Ltwitter4j/AsyncTwitter$50;->val$newListName:Ljava/lang/String;

    iput-boolean p6, p0, Ltwitter4j/AsyncTwitter$50;->val$isPublicList:Z

    iput-object p7, p0, Ltwitter4j/AsyncTwitter$50;->val$newDescription:Ljava/lang/String;

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
    .line 735
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$50;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget v1, p0, Ltwitter4j/AsyncTwitter$50;->val$listId:I

    iget-object v2, p0, Ltwitter4j/AsyncTwitter$50;->val$newListName:Ljava/lang/String;

    iget-boolean v3, p0, Ltwitter4j/AsyncTwitter$50;->val$isPublicList:Z

    iget-object v4, p0, Ltwitter4j/AsyncTwitter$50;->val$newDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Ltwitter4j/Twitter;->updateUserList(ILjava/lang/String;ZLjava/lang/String;)Ltwitter4j/UserList;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->updatedUserList(Ltwitter4j/UserList;)V

    .line 736
    return-void
.end method
