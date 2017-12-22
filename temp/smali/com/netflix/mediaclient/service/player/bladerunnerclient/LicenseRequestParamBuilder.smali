.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;
.super Ljava/lang/Object;
.source "LicenseRequestParamBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_msl_volley_FetchLicenseRequest"


# instance fields
.field mBase64Challenge:Ljava/lang/String;

.field mForceDeviceActivate:Z

.field mLicenseLink:Lorg/json/JSONObject;

.field private mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 23
    return-void
.end method


# virtual methods
.method final build()Ljava/lang/String;
    .locals 5

    .prologue
    .line 36
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mLicenseLink:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 38
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 42
    :cond_0
    :try_start_0
    const-string/jumbo v0, "version"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    const-string/jumbo v0, "method"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mLicenseLink:Lorg/json/JSONObject;

    const-string/jumbo v3, "rel"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string/jumbo v0, "url"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mLicenseLink:Lorg/json/JSONObject;

    const-string/jumbo v3, "href"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getLanguages()[Ljava/lang/String;

    move-result-object v0

    .line 46
    const-string/jumbo v2, "languages"

    new-instance v3, Lorg/json/JSONArray;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    .line 49
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50
    const-string/jumbo v4, "clientTime"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 51
    const-string/jumbo v2, "forceDeviceActivate"

    iget-boolean v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mForceDeviceActivate:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 52
    const-string/jumbo v2, "challengeBase64"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mBase64Challenge:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string/jumbo v2, "params"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string/jumbo v2, "nf_msl_volley_FetchLicenseRequest"

    const-string/jumbo v3, "error creating manifest params"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method buildBaseParams(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->setLicenseLink(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->setBase64Challenge(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;

    move-result-object v0

    .line 62
    return-object v0
.end method

.method setBase64Challenge(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mBase64Challenge:Ljava/lang/String;

    .line 32
    return-object p0
.end method

.method setInvokeLocation(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;
    .locals 2

    .prologue
    .line 67
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;->USER:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;->getValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mForceDeviceActivate:Z

    .line 68
    return-object p0

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setLicenseLink(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->mLicenseLink:Lorg/json/JSONObject;

    .line 27
    return-object p0
.end method
