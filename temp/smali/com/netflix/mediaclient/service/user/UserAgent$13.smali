.class Lcom/netflix/mediaclient/service/user/UserAgent$13;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

.field final synthetic val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent;Lcom/netflix/mediaclient/service/user/UserAgentCallback;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$13;->this$0:Lcom/netflix/mediaclient/service/user/UserAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$13;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgent$13;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$13;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$13;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$13;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentCallback;->onLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1158
    :cond_0
    return-void
.end method
