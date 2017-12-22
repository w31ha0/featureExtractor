.class public Lcom/netflix/mediaclient/service/player/drm/LicenseContext;
.super Ljava/lang/Object;
.source "LicenseContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfPlayerDrmManager"


# instance fields
.field private licenseData:[B

.field private mBase64Challenge:Ljava/lang/String;

.field private mDrmHeader:[B

.field private mFlavor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

.field private mLdlLicenseLink:Ljava/lang/String;

.field private mLicenseType:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

.field private mStandardLicenseLink:Ljava/lang/String;

.field private mXid:Ljava/lang/String;

.field private providerSessionToken:Ljava/lang/String;

.field private releaseLicenseLink:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mXid:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mDrmHeader:[B

    .line 57
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mStandardLicenseLink:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mLdlLicenseLink:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_STANDARD:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->setLicenseType(Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;)V

    .line 61
    return-void
.end method


# virtual methods
.method public addLicenseReponse(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 89
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "parsing license response start."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :try_start_0
    const-string/jumbo v0, "links"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    const-string/jumbo v1, "releaseLicense"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string/jumbo v1, "releaseLicense"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    const-string/jumbo v1, "releaseLicense"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->releaseLicenseLink:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    const-string/jumbo v0, "providerSessionToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->providerSessionToken:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, "licenseResponseBase64"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lcom/netflix/msl/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->licenseData:[B

    .line 104
    const-string/jumbo v0, "NfPlayerDrmManager"

    const-string/jumbo v1, "parsing license response end."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-object p1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    const-string/jumbo v1, "NfPlayerDrmManager"

    const-string/jumbo v2, "error parsing license"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 114
    instance-of v1, p1, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    if-eqz v1, :cond_0

    .line 115
    check-cast p1, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getDrmHeader()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getDrmHeader()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mStandardLicenseLink:Ljava/lang/String;

    iget-object v2, p1, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mStandardLicenseLink:Ljava/lang/String;

    .line 117
    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 119
    :cond_0
    return v0
.end method

.method public getBase64Challenge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mBase64Challenge:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmHeader()[B
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mDrmHeader:[B

    return-object v0
.end method

.method public getFlavor()Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mFlavor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    return-object v0
.end method

.method public getLicenseData()[B
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->licenseData:[B

    return-object v0
.end method

.method public getLicenseLink()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mStandardLicenseLink:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mFlavor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->LIMITED:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    if-ne v1, v2, :cond_0

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mLdlLicenseLink:Ljava/lang/String;

    .line 131
    :cond_0
    return-object v0
.end method

.method public getLicenseType()Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mLicenseType:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    return-object v0
.end method

.method public getXid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mXid:Ljava/lang/String;

    return-object v0
.end method

.method public getmLicenseType()Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mLicenseType:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    return-object v0
.end method

.method public setChallenge([B)V
    .locals 1

    .prologue
    .line 77
    invoke-static {p1}, Lcom/netflix/msl/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mBase64Challenge:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setLicenseType(Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;)V
    .locals 1

    .prologue
    .line 64
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mLicenseType:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    .line 65
    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_STANDARD:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    if-ne p1, v0, :cond_0

    .line 66
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->STANDARD:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mFlavor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_LDL:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    if-ne p1, v0, :cond_1

    .line 68
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->LIMITED:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mFlavor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    goto :goto_0

    .line 69
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_OFFLINE:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    if-ne p1, v0, :cond_2

    .line 70
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mFlavor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    goto :goto_0

    .line 72
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->UNKNOWN:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->mFlavor:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    goto :goto_0
.end method
