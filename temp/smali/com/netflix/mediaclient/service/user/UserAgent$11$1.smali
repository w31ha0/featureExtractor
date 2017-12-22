.class Lcom/netflix/mediaclient/service/user/UserAgent$11$1;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/user/UserAgent$11;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent$11;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 999
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$11$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$11;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$11$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$11$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$11;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$11;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$11$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/user/UserAgentCallback;->onAllocateABTestCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1003
    return-void
.end method
