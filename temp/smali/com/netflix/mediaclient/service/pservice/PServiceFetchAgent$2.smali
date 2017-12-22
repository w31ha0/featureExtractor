.class Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$2;
.super Ljava/lang/Object;
.source "PServiceFetchAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

.field final synthetic val$loadCallback:Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$2;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$2;->val$loadCallback:Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$2;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$2;->val$loadCallback:Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository;->startLoadFromDisk(Landroid/content/Context;Lcom/netflix/mediaclient/service/pservice/PDiskDataRepository$LoadCallback;)V

    .line 86
    return-void
.end method
