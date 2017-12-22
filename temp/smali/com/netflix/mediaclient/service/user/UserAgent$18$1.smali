.class Lcom/netflix/mediaclient/service/user/UserAgent$18$1;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/user/UserAgent$18;

.field final synthetic val$isPinValid:Z

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent$18;ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 1652
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$18$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$18;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$18$1;->val$isPinValid:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgent$18$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$18$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$18;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$18;->val$callback:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$18$1;->val$isPinValid:Z

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$18$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentCallback;->onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V

    .line 1656
    return-void
.end method
