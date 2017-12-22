.class public Lcom/netflix/mediaclient/service/voip/VoipAgent;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "VoipAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_voip_agent"


# instance fields
.field private final mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private mCurrentSDK:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mRequestFactory:Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;

.field private final mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

.field private mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/configuration/ConfigurationAgent;Lcom/netflix/mediaclient/service/user/UserAgent;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    .line 41
    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mCurrentSDK:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/service/voip/VoipAgent$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent$1;-><init>(Lcom/netflix/mediaclient/service/voip/VoipAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 68
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 69
    iput-object p2, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    .line 70
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/voip/VoipAgent;)Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    return-object v0
.end method

.method private destroyVoipEngineIfExist()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    if-eqz v0, :cond_0

    .line 232
    const-string/jumbo v0, "nf_voip_agent"

    const-string/jumbo v1, "--- VOIPAGENT destroyVoipEngineIfExist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->unregisterReceiver()V

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->stop()V

    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->destroy()V

    .line 236
    iput-object v2, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    .line 237
    iput-object v2, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mCurrentSDK:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    .line 239
    :cond_0
    return-void
.end method

.method private getSdkTypeOverride()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 227
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->destroyVoipEngineIfExist()V

    .line 272
    return-void
.end method

.method public destroyVoipEngine()V
    .locals 3

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->destroyVoipEngineIfExist()V

    .line 205
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 206
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 207
    return-void
.end method

.method protected doInit()V
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 256
    return-void
.end method

.method public fetchVoipConfigData(Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;)V
    .locals 5

    .prologue
    .line 98
    new-instance v0, Lcom/netflix/mediaclient/service/voip/VoipAgent$2;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/voip/VoipAgent$2;-><init>(Lcom/netflix/mediaclient/service/voip/VoipAgent;Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;)V

    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/volley/ConfigDataUtils;->voipConfigPath()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getSdkTypeOverride()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->createFetchVoipConfigData(Ljava/util/List;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;Lcom/netflix/mediaclient/service/configuration/VoipConfigurationAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 108
    return-void
.end method

.method public getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    return-object v0
.end method

.method public initVoipEngine(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)Lcom/netflix/mediaclient/servicemgr/IVoip;
    .locals 8

    .prologue
    .line 128
    invoke-static {p1}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->validateCallAttributes(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const-string/jumbo v0, "nf_voip_agent"

    const-string/jumbo v1, "Invalid call config data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getSdkType()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    move-result-object v1

    .line 136
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getSdkTypeOverride()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 139
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->setSdkType(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;)V

    .line 141
    invoke-static {p1}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->validateCallAttributes(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v7, v0

    .line 152
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mCurrentSDK:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mCurrentSDK:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    invoke-virtual {v0, v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    if-eqz v0, :cond_3

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->setConfigData(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    goto :goto_0

    .line 144
    :cond_1
    const-string/jumbo v0, "nf_voip_agent"

    const-string/jumbo v2, "Invalid call config data for SDK override, keeping configuration sdk %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 145
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->setSdkType(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;)V

    :cond_2
    move-object v7, v1

    goto :goto_1

    .line 157
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->destroyVoipEngineIfExist()V

    .line 160
    sget-object v0, Lcom/netflix/mediaclient/service/voip/VoipAgent$3;->$SwitchMap$com$netflix$mediaclient$service$webclient$model$leafs$VoipCallAttributes$SDKTypes:[I

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 184
    const-string/jumbo v0, "nf_voip_agent"

    const-string/jumbo v1, "Unsupported VoIP SDK type received from CS configuration, falling back to default one"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/voip/VoipAgent;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    .line 190
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 191
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_3
    iput-object v7, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mCurrentSDK:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    .line 197
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->registerReceiver()V

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    goto/16 :goto_0

    .line 163
    :pswitch_0
    new-instance v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/voip/VoipAgent;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    .line 164
    const-string/jumbo v0, "nf_voip_agent"

    const-string/jumbo v1, "Instantiating Vail VoIP engine"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 174
    :pswitch_1
    new-instance v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mUserAgent:Lcom/netflix/mediaclient/service/user/UserAgent;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mConfigurationAgent:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/voip/VoipAgent;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    .line 175
    const-string/jumbo v0, "nf_voip_agent"

    const-string/jumbo v1, "Instantiating Linphone VoIP engine"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 192
    :catch_0
    move-exception v0

    .line 193
    const-string/jumbo v1, "nf_voip_agent"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 160
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isEnableVoip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mVoip:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->isReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isSIPCallAllowed()Z
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 89
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reportCallStatistics(Ljava/lang/String;Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;)V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/VoipAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/VoipAgent;->mRequestFactory:Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;

    invoke-virtual {v1, p1, p2}, Lcom/netflix/mediaclient/service/configuration/volley/ConfigurationRequestFactory;->createReportVoipCallStatistics(Ljava/lang/String;Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->addDataRequest(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;)Z

    .line 118
    return-void
.end method
