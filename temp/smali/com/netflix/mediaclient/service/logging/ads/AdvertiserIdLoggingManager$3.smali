.class Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$3;
.super Landroid/content/BroadcastReceiver;
.source "AdvertiserIdLoggingManager.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$3;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 227
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "Received intent "

    invoke-static {v0, v1, p2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 229
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_ONLOGIN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "onLogin"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$3;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->access$600(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)V

    .line 243
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PUSH_ONLOGOUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "onLogout"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$3;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->access$700(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)V

    goto :goto_0

    .line 236
    :cond_1
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.ONSIGNUP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "onSignUp"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$3;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->sign_up:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->sendAdvertiserId(Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V

    goto :goto_0

    .line 240
    :cond_2
    const-string/jumbo v1, "nf_adv_id"

    const-string/jumbo v2, "We do not support action %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
