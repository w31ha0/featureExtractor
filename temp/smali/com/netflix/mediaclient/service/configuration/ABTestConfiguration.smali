.class public Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;
.super Ljava/lang/Object;
.source "ABTestConfiguration.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "nf_ab_test_config"

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "abTestConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportABConfigDataLoadedEvent(Landroid/content/Context;)V

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "abTestConfig"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    return-void
.end method

.method public persistABTestConfigOverride(Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;)V
    .locals 3

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "abTestConfig object is null - ignore overwrite"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "abTestConfig"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mABTestConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfigData;

    .line 57
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ABTestConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportABConfigDataReceivedEvent(Landroid/content/Context;)V

    goto :goto_0
.end method
