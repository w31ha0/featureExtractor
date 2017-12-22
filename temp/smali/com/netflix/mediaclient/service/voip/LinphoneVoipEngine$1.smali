.class Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$1;
.super Landroid/content/BroadcastReceiver;
.source "LinphoneVoipEngine.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$1;->this$0:Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.VOIP"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->isDelete(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Intent to cancel call received"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$1;->this$0:Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->terminate()Z

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Uknown VOIP action!"

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 110
    :cond_1
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Received intent with uknown category!"

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0
.end method
