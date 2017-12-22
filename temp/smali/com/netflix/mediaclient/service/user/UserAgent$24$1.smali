.class Lcom/netflix/mediaclient/service/user/UserAgent$24$1;
.super Ljava/lang/Object;
.source "UserAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/user/UserAgent$24;

.field final synthetic val$res:Lcom/netflix/mediaclient/android/app/Status;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/user/UserAgent$24;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 1909
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$24$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$24;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$24$1;->val$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/user/UserAgent$24$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1912
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/UserAgent$24$1;->this$1:Lcom/netflix/mediaclient/service/user/UserAgent$24;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/user/UserAgent$24;->val$cb:Lcom/netflix/mediaclient/service/user/UserAgentCallback;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/UserAgent$24$1;->val$token:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/UserAgent$24$1;->val$res:Lcom/netflix/mediaclient/android/app/Status;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/UserAgentCallback;->onAutoLoginTokenCreated(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 1913
    return-void
.end method
