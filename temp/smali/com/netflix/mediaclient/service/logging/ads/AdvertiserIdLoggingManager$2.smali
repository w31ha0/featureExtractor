.class Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$2;
.super Ljava/lang/Object;
.source "AdvertiserIdLoggingManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$optedIn:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$2;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$2;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$2;->val$optedIn:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .prologue
    .line 193
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "Advertiser ID failed to be delivered"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method public onSuccess()V
    .locals 5

    .prologue
    .line 179
    const-string/jumbo v0, "nf_adv_id"

    const-string/jumbo v1, "Advertiser ID delivered"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 181
    new-instance v2, Lcom/netflix/mediaclient/util/NetflixPreference;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$2;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-static {v3}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->access$100(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netflix/mediaclient/util/NetflixPreference;-><init>(Landroid/content/Context;)V

    .line 182
    const-string/jumbo v3, "advertisement_id"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$2;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/netflix/mediaclient/util/NetflixPreference;->putStringPref(Ljava/lang/String;Ljava/lang/String;)Z

    .line 183
    const-string/jumbo v3, "advertisement_id_ts"

    invoke-virtual {v2, v3, v0, v1}, Lcom/netflix/mediaclient/util/NetflixPreference;->putLongPref(Ljava/lang/String;J)Z

    .line 184
    const-string/jumbo v3, "advertisement_id_opted_in"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$2;->val$optedIn:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/netflix/mediaclient/util/NetflixPreference;->putBooleanPref(Ljava/lang/String;Z)Z

    .line 185
    invoke-virtual {v2}, Lcom/netflix/mediaclient/util/NetflixPreference;->commit()Z

    .line 186
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$2;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$2;->val$id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->access$002(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;Ljava/lang/String;)Ljava/lang/String;

    .line 187
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$2;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    invoke-static {v2, v0, v1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->access$202(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;J)J

    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$2;->this$0:Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager$2;->val$optedIn:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;->access$302(Lcom/netflix/mediaclient/service/logging/ads/AdvertiserIdLoggingManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 189
    return-void
.end method
