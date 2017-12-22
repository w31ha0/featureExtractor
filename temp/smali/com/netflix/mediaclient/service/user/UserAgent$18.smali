.class Lcom/netflix/mediaclient/service/user/UserAgent$18;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 0

    .prologue
    .line 1644
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$18;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$18;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$18;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    if-nez v0, :cond_0

    .line 1658
    :goto_0
    return-void

    .line 1652
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$18;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgent$18$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/service/user/UserAgent$18$1;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$18;ZLcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
