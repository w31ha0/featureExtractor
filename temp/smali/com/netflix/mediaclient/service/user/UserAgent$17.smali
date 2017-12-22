.class Lcom/netflix/mediaclient/service/user/UserAgent$17;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 0

    .prologue
    .line 1514
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$17;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$17;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvatarsListFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$17;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$17;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-interface {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgentCallback;->onAvailableAvatarsListFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1520
    :cond_0
    return-void
.end method
