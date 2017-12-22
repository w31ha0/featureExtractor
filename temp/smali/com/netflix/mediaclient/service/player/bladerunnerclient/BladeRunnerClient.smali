.class public Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;
.super Ljava/lang/Object;
.source "BladeRunnerClient.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient;


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private config:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private context:Landroid/content/Context;

.field private mService:Lcom/netflix/mediaclient/service/NetflixService;

.field private mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "nf_bladerunner"

    sput-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->context:Landroid/content/Context;

    .line 54
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/NetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->config:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 55
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;)Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Landroid/content/Context;JLjava/util/Locale;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->buildYearlyWarningStatusCode(Landroid/content/Context;JLjava/util/Locale;)Lcom/netflix/mediaclient/android/app/Status;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Lcom/netflix/mediaclient/StatusCode;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->handleBlacklistedDevice(Lcom/netflix/mediaclient/StatusCode;)V

    return-void
.end method

.method private buildLinkRequestParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 244
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "building param for link %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 245
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;-><init>()V

    .line 246
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->getLinkJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;->setLink(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 250
    return-object v0
.end method

.method private buildYearlyWarningMessage(Landroid/content/Context;JLjava/util/Locale;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 275
    invoke-static {v4, p4}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 276
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 277
    const v1, 0x7f0901ea

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v0, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 278
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "yearly warning msg: %s"

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 279
    return-object v0
.end method

.method private buildYearlyWarningStatusCode(Landroid/content/Context;JLjava/util/Locale;)Lcom/netflix/mediaclient/android/app/Status;
    .locals 4

    .prologue
    .line 268
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->buildYearlyWarningMessage(Landroid/content/Context;JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 269
    new-instance v1, Lcom/netflix/mediaclient/android/app/NetflixStatus;

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_WARNING_DL_N_TIMES_BEFORE_DATE:Lcom/netflix/mediaclient/StatusCode;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/android/app/NetflixStatus;-><init>(Lcom/netflix/mediaclient/StatusCode;I)V

    .line 270
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/app/NetflixStatus;->setMessage(Ljava/lang/String;)V

    .line 271
    return-object v1
.end method

.method private getLinkJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 254
    if-nez p1, :cond_0

    .line 264
    :goto_0
    return-object v0

    .line 259
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 260
    goto :goto_0

    .line 261
    :catch_0
    move-exception v1

    .line 262
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "error parsing link %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private handleBlacklistedDevice(Lcom/netflix/mediaclient/StatusCode;)V
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DL_BLACKLISTED_DEVICE:Lcom/netflix/mediaclient/StatusCode;

    if-eq p1, v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Device is blacklisted, disable offline"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->config:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->setDeviceAsOfflineBlacklisted()V

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/netflix/mediaclient/ui/player/error/OfflineBlacklistedErrorDescriptor;->build(Landroid/content/Context;Lcom/netflix/mediaclient/StatusCode;)Lcom/netflix/mediaclient/ui/player/error/OfflineBlacklistedErrorDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    goto :goto_0
.end method


# virtual methods
.method public activateOfflineLicense(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 165
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-void

    .line 169
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "activateOfflineLicense"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$2;-><init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;)V

    .line 180
    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "activating license"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->buildLinkRequestParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    new-instance v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;

    invoke-direct {v2, v1, v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLinkRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    goto :goto_0
.end method

.method public deactivateOfflineLicense(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 2

    .prologue
    .line 155
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/DeactivateRequestParamBuilder;

    invoke-direct {v0, p3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/DeactivateRequestParamBuilder;-><init>(Z)V

    .line 156
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->getLinkJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/DeactivateRequestParamBuilder;->setLink(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LinksParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseDeactivate;

    invoke-direct {v1, v0, p4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseDeactivate;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 161
    return-void
.end method

.method public fetchLicense(Lcom/netflix/mediaclient/service/player/drm/LicenseContext;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 6

    .prologue
    .line 102
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    .line 104
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;->buildBaseParams(Lcom/netflix/mediaclient/service/player/drm/LicenseContext;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingLicenseRequestParamBuilder;->build()Ljava/lang/String;

    move-result-object v2

    .line 107
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;->STREAMING:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/drm/LicenseContext;->getFlavor()Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    move-result-object v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;-><init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;Ljava/lang/String;ZLcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 108
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 109
    return-void
.end method

.method public fetchManifests([Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 5

    .prologue
    .line 60
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->config:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;Landroid/content/Context;)V

    .line 61
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getSoftwareVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/StreamingManifestRequestParamBuilder;->uiversion(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;->flavor(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;->playableIds([Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;->build()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;

    invoke-direct {v1, v0, p2, p3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 68
    return-void
.end method

.method public fetchOfflineLicense(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 6

    .prologue
    .line 112
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->getLinkJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->buildBaseParams(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->build()Ljava/lang/String;

    move-result-object v2

    .line 117
    new-instance v5, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$1;

    invoke-direct {v5, p0, p3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$1;-><init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 137
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "fetching offline license"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;->OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;

    const/4 v3, 0x0

    sget-object v4, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;-><init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;Ljava/lang/String;ZLcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 139
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 140
    return-void
.end method

.method public fetchOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->config:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V

    .line 72
    invoke-virtual {v0, p4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->downloadVideoQuality(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p2, p3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->setOfflineIds(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->context:Landroid/content/Context;

    .line 74
    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getSoftwareVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->uiversion(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 75
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;->playableIds([Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;->build()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;

    sget-object v2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;->OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;

    invoke-direct {v1, v0, v2, p5}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchManifestsRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$ManifestRequestFlavor;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 80
    return-void
.end method

.method public refreshOfflineLicense(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 6

    .prologue
    .line 206
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;)V

    .line 208
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->getLinkJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->buildBaseParams(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;

    move-result-object v0

    .line 209
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->setInvokeLocation(Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$OfflineRefreshInvoke;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/LicenseRequestParamBuilder;->build()Ljava/lang/String;

    move-result-object v2

    .line 212
    new-instance v5, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$3;

    invoke-direct {v5, p0, p4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient$3;-><init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 228
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshing offline license"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;

    sget-object v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;->OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;

    const/4 v3, 0x1

    sget-object v4, Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;->OFFLINE:Lcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest;-><init>(Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/FetchLicenseRequest$LicenseReqType;Ljava/lang/String;ZLcom/netflix/mediaclient/service/player/bladerunnerclient/IBladeRunnerClient$LicenseRequestFlavor;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 230
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 231
    return-void
.end method

.method public refreshOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 6

    .prologue
    .line 84
    sget-object v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "refreshOfflineManifest"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getLinks()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 86
    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->fetchOfflineManifest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 99
    :goto_0
    return-void

    .line 90
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->config:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mUser:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;-><init>(Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)V

    .line 91
    invoke-virtual {v0, p4}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->downloadVideoQuality(Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadVideoQuality;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p2, p3}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->setOfflineIds(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->context:Landroid/content/Context;

    .line 93
    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getSoftwareVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/OfflineManifestRequestParamBuilder;->uiversion(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 94
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;->playableIds([Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/ManifestRequestParamBuilderBase;->build()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;

    invoke-direct {v1, v0, p5, p6}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/RefreshOfflineManifestRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    goto :goto_0
.end method

.method public syncActiveLicensesToServer(Ljava/util/List;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SyncActiveLicensesParamBuilder;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SyncActiveLicensesParamBuilder;-><init>()V

    .line 237
    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SyncActiveLicensesParamBuilder;->setDeactiveLinks(Ljava/util/List;)Lcom/netflix/mediaclient/service/player/bladerunnerclient/SyncActiveLicensesParamBuilder;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/SyncActiveLicensesParamBuilder;->build()Ljava/lang/String;

    move-result-object v0

    .line 239
    new-instance v1, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseSyncRequest;

    invoke-direct {v1, v0, p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/OfflineLicenseSyncRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerWebCallback;)V

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/bladerunnerclient/BladeRunnerClient;->mService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 241
    return-void
.end method
