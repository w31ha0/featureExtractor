.class Lcom/netflix/mediaclient/service/user/UserAgent$11;
.super Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;
.source "UserAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;)V
    .locals 0

    .prologue
    .line 991
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$11;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$11;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/SimpleUserAgentWebCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllocateABTestCompleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 995
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$11;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    if-nez v0, :cond_0

    .line 1005
    :goto_0
    return-void

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$11;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/user/UserAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/user/UserAgent$11$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/user/UserAgent$11$1;-><init>(Lcom/netflix/mediaclient/service/user/UserAgent$11;Lcom/netflix/mediaclient/android/app/Status;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
