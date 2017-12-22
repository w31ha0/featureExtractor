.class Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$1;
.super Landroid/content/BroadcastReceiver;
.source "WhistleVoipEngine.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$1;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.VOIP"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->isDelete(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Intent to cancel call received"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$1;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$1;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$1;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$Call;->getId()J

    move-result-wide v2

    long-to-int v0, v2

    :goto_0
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->access$000(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;I)V

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$1;->this$0:Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->terminate()Z

    .line 92
    :goto_1
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :cond_1
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Uknown VOIP action!"

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    .line 90
    :cond_2
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Received intent with uknown category!"

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1
.end method
