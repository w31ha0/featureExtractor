.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;
.super Ljava/lang/Object;
.source "StreamingLicenseRequestParamBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_msl_volley_FetchLicenseRequest"


# instance fields
.field mBase64Challenge:Ljava/lang/String;

.field mLicenseLink:Ljava/lang/String;

.field mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

.field mXid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 23
    return-void
.end method


# virtual methods
.method base64Challenge(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;->mBase64Challenge:Ljava/lang/String;

    .line 27
    return-object p0
.end method

.method final build()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 41
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 44
    :try_start_0
    const-string/jumbo v0, "version"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    const-string/jumbo v0, "url"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;->mLicenseLink:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 48
    const-string/jumbo v2, "clientTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string/jumbo v2, "challengeBase64"

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;->mBase64Challenge:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v2}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->getLanguages()[Ljava/lang/String;

    move-result-object v2

    .line 51
    const-string/jumbo v3, "xid"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;->mXid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string/jumbo v3, "params"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v0, "languages"

    new-instance v3, Lorg/json/JSONArray;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string/jumbo v0, "nf_msl_volley_FetchLicenseRequest"

    const-string/jumbo v2, "licenseRequestParams, %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string/jumbo v2, "nf_msl_volley_FetchLicenseRequest"

    const-string/jumbo v3, "error creating manifest params"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method buildBaseParams(Lcom/netflix/mediaclient/service/player/drm/LicenseContext;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getLicenseLink()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;->setLicenseLink(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getBase64Challenge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;->base64Challenge(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getXid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;->xid(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method setLicenseLink(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;->mLicenseLink:Ljava/lang/String;

    .line 32
    return-object p0
.end method

.method xid(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;->mXid:Ljava/lang/String;

    .line 37
    return-object p0
.end method
