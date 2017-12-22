.class Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;
.super Ljava/lang/Object;
.source "AdvertiserIdLoggingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->access$100(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "advertisement_id"

    invoke-static {v1, v2, v6}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->access$002(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->access$100(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "advertisement_id_ts"

    const-wide/16 v4, 0x0

    invoke-static {v1, v2, v4, v5}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getLongPref(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->access$202(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;J)J

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->access$100(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "advertisement_id_opted_in"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getBooleanPref(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->access$302(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->access$100(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProviderFactory;->getInstance(Landroid/content/Context;)Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->access$402(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;)Lcom/netflix/mediaclient/service/logging/ads/AdvertisingIdProvider;

    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->access$500(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-static {v1, v6}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->access$502(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    .line 93
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->access$100(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isFirstApplicationStartAfterInstallation(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    const-string/jumbo v1, "nf_adv_id"

    const-string/jumbo v2, "Not first start after installation"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_0
    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->sendAdvertiserId(Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V

    .line 103
    :cond_0
    return-void

    .line 96
    :cond_1
    const-string/jumbo v1, "nf_adv_id"

    const-string/jumbo v2, "First start after installation"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$1;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;->install:Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->sendAdvertiserId(Lcom/netflix/mediaclient/servicemgr/AdvertiserIdLogging$EventType;)V

    goto :goto_0
.end method
