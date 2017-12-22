.class Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;
.super Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;
.source "PServiceFetchAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoaded(Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1$1;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1$1;-><init>(Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method
