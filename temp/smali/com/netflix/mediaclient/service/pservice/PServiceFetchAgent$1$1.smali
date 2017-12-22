.class Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1$1;
.super Ljava/lang/Object;
.source "PServiceFetchAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;

.field final synthetic val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;Lcom/netflix/mediaclient/service/pservice/PDiskData;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1$1;->this$1:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1$1;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 59
    iget-object v2, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1$1;->this$1:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->access$000(Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;Z)V

    .line 61
    const-string/jumbo v2, "nf_preapp_fetchagent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got new data, valid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1$1;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1$1;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1$1;->this$1:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1$1;->val$newData:Lcom/netflix/mediaclient/service/pservice/PDiskData;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->access$102(Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;Lcom/netflix/mediaclient/service/pservice/PDiskData;)Lcom/netflix/mediaclient/service/pservice/PDiskData;

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1$1;->this$1:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->access$200(Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    const-string/jumbo v0, "nf_preapp_fetchagent"

    const-string/jumbo v2, "init done"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1$1;->this$1:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->access$202(Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;Z)Z

    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1$1;->this$1:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1$1;->this$1:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;->val$intent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1$1;->this$1:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;->this$0:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent;->getWidgetAgent()Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceWidgetAgentInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1$1;->this$1:Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/pservice/PServiceFetchAgent$1;->val$intent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/pservice/PServiceAgent$PServiceWidgetAgentInterface;->updateWidgetWithLatestData(Landroid/content/Intent;)V

    .line 75
    :cond_3
    return-void
.end method
