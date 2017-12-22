.class final Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;
.super Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;
.source "WhistleVoipEngine.java"

# interfaces
.implements Lcom/vailsys/whistleengine/WhistleEngineDelegate;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_voip_whistle"


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

.field private mEngineReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mEngineStarted:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/voip/VoipAgent;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V
    .locals 2

    .prologue
    .line 73
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngineReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 205
    new-instance v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$2;-><init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mConnection:Landroid/content/ServiceConnection;

    .line 75
    new-instance v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$1;-><init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mVoipReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->onCallDisconnected(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)Lcom/vailsys/whistleengine/WhistleEngine;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;Lcom/vailsys/whistleengine/WhistleEngine;)Lcom/vailsys/whistleengine/WhistleEngine;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->doDialWithEngineCheck()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)I
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->findLine()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)Lcom/netflix/mediaclient/util/l10n/UserLocale;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->getAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->stopEngine()V

    return-void
.end method

.method private callCleanup()V
    .locals 3

    .prologue
    .line 832
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Call was cancelled by user, terminating"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 834
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->cancelNotification()V

    .line 835
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mLockManager:Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->callEnded()V

    .line 836
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->releaseAudioFocus()V

    .line 837
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mStartTime:J

    .line 838
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    .line 839
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->NO_CONNECTION:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 840
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.ui.cs.ACTION_CALL_ENDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 841
    return-void
.end method

.method private cancelNotification()V
    .locals 3

    .prologue
    .line 849
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mNotificationManager:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mNotificationManager:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->cancelNotification(Lcom/netflix/mediaclient/service/NetflixService;Landroid/os/Handler;)V

    .line 852
    :cond_0
    return-void
.end method

.method private doDial()V
    .locals 1

    .prologue
    .line 711
    new-instance v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$3;-><init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->execute(Ljava/lang/Runnable;)V

    .line 762
    return-void
.end method

.method private doDialWithEngineCheck()V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "No dial request, no need to start engine"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :goto_0
    return-void

    .line 698
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->startEngine()Z

    move-result v0

    if-nez v0, :cond_1

    .line 699
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Wait to start dial when callback that VOIP engine is started returns!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 703
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->doDial()V

    goto :goto_0
.end method

.method private doTerminate(I)V
    .locals 1

    .prologue
    .line 816
    new-instance v0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$4;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine$4;-><init>(Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;I)V

    invoke-static {v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->execute(Ljava/lang/Runnable;)V

    .line 829
    return-void
.end method

.method private findLine()I
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->getMaxLines()I

    move-result v0

    if-lez v0, :cond_0

    .line 785
    const/4 v0, 0x1

    .line 789
    :goto_0
    return v0

    .line 788
    :cond_0
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "All lines in use?!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mUserAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mUserAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    check-cast v0, Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mUserAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;->getCurrentAppLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v0

    .line 773
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/user/UserLocaleRepository;->getDeviceLocale()Lcom/netflix/mediaclient/util/l10n/UserLocale;

    move-result-object v0

    goto :goto_0
.end method

.method private getConfiguration()Lcom/vailsys/whistleengine/WhistleEngineConfig;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getUserToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getUserToken()Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getCredential()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getCredential()Ljava/lang/String;

    move-result-object v1

    .line 247
    :goto_1
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 248
    :cond_0
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Unable to create configuration, token or credential not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 284
    :goto_2
    return-object v0

    .line 244
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 245
    :cond_2
    const-string/jumbo v1, ""

    goto :goto_1

    .line 256
    :cond_3
    new-instance v2, Lcom/vailsys/whistleengine/WhistleEngineConfig;

    const-string/jumbo v4, "netflixvoip.vailsys.com"

    invoke-direct {v2, v4, v0}, Lcom/vailsys/whistleengine/WhistleEngineConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string/jumbo v0, "samurai"

    invoke-virtual {v2, v0}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->setApplicationIdentifier(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v2, v1}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->setPassword(Ljava/lang/String;)V

    .line 259
    sget-object v0, Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;->TLS:Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    invoke-virtual {v2, v0}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->setTransportMode(Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;)V

    .line 260
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->setEchoCanceler(Z)V

    .line 261
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->getWhistleEngineThresholds()Lcom/vailsys/whistleengine/WhistleEngineThresholds;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->setConnectivityThresholds(Lcom/vailsys/whistleengine/WhistleEngineThresholds;)V

    .line 263
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->getVoipSampleRateInHz()I

    move-result v0

    .line 269
    invoke-virtual {v2, v0}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->setSamplerate(I)V

    .line 272
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "SSL proxy server validation is enabled, set root certificate(s)..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mContext:Landroid/content/Context;

    const v1, 0x7f080003

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/FileUtils;->readRawString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {v2, v0}, Lcom/vailsys/whistleengine/WhistleEngineConfig;->setRootCertificate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 280
    goto :goto_2

    .line 282
    :catch_0
    move-exception v0

    .line 283
    const-string/jumbo v1, "nf_voip_whistle"

    const-string/jumbo v2, "We failed to load VOIP trust store from res/raw. All attempt to connect will fail!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v3

    .line 284
    goto :goto_2
.end method

.method private getServiceIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 341
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mContext:Landroid/content/Context;

    const-class v2, Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private getVoipSampleRateInHz()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mConfigurationAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mConfigurationAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    .line 334
    :cond_0
    const/16 v0, 0x1f40

    .line 336
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mConfigurationAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getSampleRateInHz()I

    move-result v0

    goto :goto_0
.end method

.method private getWhistleEngineThresholds()Lcom/vailsys/whistleengine/WhistleEngineThresholds;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 295
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mConfigurationAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mConfigurationAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v1

    if-nez v1, :cond_2

    .line 296
    :cond_0
    const-string/jumbo v1, "nf_voip_whistle"

    const-string/jumbo v2, "ConfigAgent null or VOIP config is null. Not expected!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_1
    :goto_0
    return-object v0

    .line 300
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mConfigurationAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v1}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getJitterThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getPacketLosThresholdInPercent()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getRttThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getSipThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    if-nez v2, :cond_3

    .line 302
    const-string/jumbo v1, "nf_voip_whistle"

    const-string/jumbo v2, "Thresholds not found, do not set them!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 306
    :cond_3
    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngineThresholds;

    invoke-direct {v0}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;-><init>()V

    .line 308
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getJitterThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 309
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getJitterThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->getYellow()I

    move-result v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getJitterThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->getRed()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->setJitterThreshold(II)V

    .line 312
    :cond_4
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getSipThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 313
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getSipThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->getYellow()I

    move-result v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getSipThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->getRed()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->setSIPThreshold(II)V

    .line 316
    :cond_5
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getRttThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 317
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getRttThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->getYellow()I

    move-result v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getRttThresholdInMs()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->getRed()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->setRTTThreshold(II)V

    .line 320
    :cond_6
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getPacketLosThresholdInPercent()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 321
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getPacketLosThresholdInPercent()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->getYellow()I

    move-result v2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->getPacketLosThresholdInPercent()Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/Threshold;->getRed()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/vailsys/whistleengine/WhistleEngineThresholds;->setPacketLossThreshold(II)V

    goto/16 :goto_0
.end method

.method private isServiceStartedOrStarting()Z
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STARTED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STARTING:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isServiceStoppedOrStopping()Z
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->NOT_STARTED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STOPPED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STOPPING:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCallDisconnected(I)V
    .locals 4

    .prologue
    .line 393
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_3

    .line 394
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    if-nez v0, :cond_1

    .line 395
    const-string/jumbo v0, "nf_voip_whistle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call was NOT in progress and we received disconnect on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$Call;->getId()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 398
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->callDisconnected(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V

    goto :goto_1

    .line 401
    :cond_2
    const-string/jumbo v0, "nf_voip_whistle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call is in progress on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$Call;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but we received disconnect on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :cond_3
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Engine is null and we received call disconnect! Should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startEngine()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 624
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v2, :cond_0

    .line 625
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngineStarted:Z

    if-nez v2, :cond_2

    .line 627
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->getConfiguration()Lcom/vailsys/whistleengine/WhistleEngineConfig;

    move-result-object v1

    .line 628
    if-nez v1, :cond_1

    .line 629
    const-string/jumbo v1, "nf_voip_whistle"

    const-string/jumbo v2, "Failed to get configuration, unable to start engine!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_0
    :goto_0
    return v0

    .line 633
    :cond_1
    const-string/jumbo v2, "nf_voip_whistle"

    const-string/jumbo v3, "Start VOIP engine"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :try_start_0
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v1, v3}, Lcom/vailsys/whistleengine/WhistleEngine;->start(Lcom/vailsys/whistleengine/WhistleEngineDelegate;Lcom/vailsys/whistleengine/WhistleEngineConfig;Landroid/content/Context;)V

    .line 637
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngineStarted:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 638
    :catch_0
    move-exception v1

    .line 639
    const-string/jumbo v2, "nf_voip_whistle"

    const-string/jumbo v3, "Whistle engine was unable to start, report failure"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/NetflixService;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCancelAction:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory;->getHandlerForEngineFailed(Landroid/content/Context;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    goto :goto_0

    .line 645
    :cond_2
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v2, "Engine already started!"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 646
    goto :goto_0
.end method

.method private declared-synchronized stopEngine()V
    .locals 2

    .prologue
    .line 653
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_0

    .line 654
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngineStarted:Z

    if-eqz v0, :cond_1

    .line 655
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Stop VOIP engine"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->stop()V

    .line 657
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngineReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 662
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngineStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    monitor-exit p0

    return-void

    .line 659
    :cond_1
    :try_start_1
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Engine already stopped!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public authenticationNeeded(Z)V
    .locals 0

    .prologue
    .line 349
    return-void
.end method

.method public declared-synchronized callConnected(I)V
    .locals 4

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_3

    .line 359
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    if-nez v0, :cond_1

    .line 360
    const-string/jumbo v0, "nf_voip_whistle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call was NOT in progress and we received connected on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->reportCallConnected()V

    .line 375
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Sets start time..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mStartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    :goto_1
    monitor-exit p0

    return-void

    .line 361
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$Call;->getId()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 363
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->callConnected(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 366
    :cond_2
    :try_start_2
    const-string/jumbo v0, "nf_voip_whistle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call is in progress on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$Call;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but we received connect on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 370
    :cond_3
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Engine is null and we received call connected! Should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized callDisconnected(I)V
    .locals 4

    .prologue
    .line 386
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->onCallDisconnected(I)V

    .line 387
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByNetflix:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 388
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->callCleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    monitor-exit p0

    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized callEnded(I)V
    .locals 4

    .prologue
    .line 475
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_2

    .line 476
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    if-nez v0, :cond_1

    .line 477
    const-string/jumbo v0, "nf_voip_whistle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call was NOT in progress and we received call ended on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 483
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->callEnded(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 478
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$Call;->getId()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 479
    const-string/jumbo v0, "nf_voip_whistle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call is in progress on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$Call;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but we received call ended on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 487
    :cond_2
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Engine is null and we received call ended! Should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->stopEngine()V

    .line 490
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByNetflix:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 491
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->callCleanup()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized callFailed(ILjava/lang/String;I)V
    .locals 6

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, p3}, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory;->getHandlerForCallFailed(Landroid/content/Context;Ljava/lang/String;I)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    .line 417
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_4

    .line 418
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    if-nez v0, :cond_2

    .line 419
    const-string/jumbo v0, "nf_voip_whistle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call was NOT in progress and we received call failed on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->NO_CONNECTION:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    if-eq v0, v1, :cond_5

    .line 435
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->failedAfterConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 440
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 441
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;-><init>()V

    .line 442
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setFatal(Z)V

    .line 444
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setErrorCode(Ljava/lang/String;)V

    .line 446
    new-instance v3, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    invoke-direct {v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 450
    const-string/jumbo v5, "sipCode"

    invoke-virtual {v4, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 451
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 452
    const-string/jumbo v5, "reason"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 455
    :cond_1
    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setMessage(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 459
    :goto_2
    :try_start_2
    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setDebug(Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)V

    .line 461
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->clientFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v2, v3, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    .line 464
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v0, v3, v2}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 465
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->callCleanup()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 466
    :goto_3
    monitor-exit p0

    return-void

    .line 420
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$Call;->getId()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 421
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 422
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0, v2, p2, p3}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->callFailed(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 425
    :cond_3
    :try_start_4
    const-string/jumbo v0, "nf_voip_whistle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call is in progress on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$Call;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but we received call failed on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 429
    :cond_4
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Engine is null and we received call failed! Should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 437
    :cond_5
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->failedBeforeConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 456
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public callRinging(I)V
    .locals 4

    .prologue
    .line 501
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_3

    .line 502
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    if-nez v0, :cond_1

    .line 503
    const-string/jumbo v0, "nf_voip_whistle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call was NOT in progress and we received call ringing on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$Call;->getId()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 506
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->callRinging(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V

    goto :goto_1

    .line 509
    :cond_2
    const-string/jumbo v0, "nf_voip_whistle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call is in progress on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$Call;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but we received call ringing on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 512
    :cond_3
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Engine is null and we received call ringing! Should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public callSecured(IZ)V
    .locals 0

    .prologue
    .line 521
    return-void
.end method

.method public connectivityUpdate(ILcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;)V
    .locals 3

    .prologue
    .line 529
    const/4 v0, 0x0

    .line 530
    sget-object v1, Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;->GREEN:Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;

    if-ne p2, v1, :cond_1

    .line 531
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->GREEN:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 532
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->green:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    .line 543
    :goto_0
    if-eqz v0, :cond_0

    .line 544
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallQualityChanged(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V

    .line 546
    :cond_0
    return-void

    .line 533
    :cond_1
    sget-object v1, Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;->RED:Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;

    if-ne p2, v1, :cond_2

    .line 534
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->RED:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 535
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->red:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    goto :goto_0

    .line 536
    :cond_2
    sget-object v1, Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;->YELLOW:Lcom/vailsys/whistleengine/WhistleEngineDelegate$ConnectivityState;

    if-ne p2, v1, :cond_3

    .line 537
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->YELLOW:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 538
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->yellow:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    goto :goto_0

    .line 540
    :cond_3
    const-string/jumbo v1, "nf_voip_whistle"

    const-string/jumbo v2, "Uknown state!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized dial()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 671
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Request for dial is already in progress!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    :goto_0
    monitor-exit p0

    return v4

    .line 676
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mSharedSessionId:Ljava/lang/String;

    .line 677
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Sdk;->vail:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Sdk;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mSharedSessionId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Sdk;Ljava/lang/String;Z)V

    .line 679
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 680
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->start()Z

    .line 682
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 683
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Wait to start dial when callback that VOIP service is started returns!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 671
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 687
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->doDialWithEngineCheck()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public engineNotReady()V
    .locals 2

    .prologue
    .line 613
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Engine is NOT ready!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngineReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 615
    return-void
.end method

.method public engineReady()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 575
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Engine is ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngineReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 577
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 578
    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->engineStatusChanged(Z)V

    goto :goto_0

    .line 580
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->doDial()V

    .line 581
    return-void
.end method

.method public getMicrophoneInputLevel()F
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->getInputLevel()F

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getVoipReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mVoipReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public incomingCall(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_0

    .line 554
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "We do not support incomming calls, terminate"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {v0, p1}, Lcom/vailsys/whistleengine/WhistleEngine;->hangup(I)V

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Engine is null and we received callback! Should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isMicrophoneMuted()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public isSpeakerOn()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public networkFailure(I)V
    .locals 4

    .prologue
    .line 590
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCancelAction:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory;->getHandlerForCallFailed(Landroid/content/Context;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    .line 592
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_3

    .line 593
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    if-nez v0, :cond_1

    .line 594
    const-string/jumbo v0, "nf_voip_whistle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call was NOT in progress and we received network failure on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->reportNetworkFailure()V

    .line 608
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->callCleanup()V

    .line 609
    :goto_1
    return-void

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$Call;->getId()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 596
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 597
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->networkFailed(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V

    goto :goto_2

    .line 600
    :cond_2
    const-string/jumbo v0, "nf_voip_whistle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Call is in progress on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$Call;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " but we received network failed on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 604
    :cond_3
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Engine is null and we received network failed! Should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registrationSuccessful()V
    .locals 2

    .prologue
    .line 563
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "RegistrationSuccessful? This should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void
.end method

.method public selectedCodec(ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method public setMicrophoneMute(Z)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {v0, p1}, Lcom/vailsys/whistleengine/WhistleEngine;->setMute(Z)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 105
    :cond_1
    return-void
.end method

.method public setOutputVolume(F)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_0

    .line 128
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Set volume..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {v0, p1}, Lcom/vailsys/whistleengine/WhistleEngine;->setOutputVolume(F)V

    .line 131
    :cond_0
    return-void
.end method

.method public setSpeakerOn(Z)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mLockManager:Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->setSpeakerOn(Z)V

    .line 113
    return-void
.end method

.method public start()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->isEnabled()Z

    move-result v2

    .line 161
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->isServiceStartedOrStarting()Z

    move-result v3

    .line 162
    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    .line 163
    const-string/jumbo v2, "nf_voip_whistle"

    const-string/jumbo v3, "VOIP service is enabled and it is not ready, start it."

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object v2, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STARTING:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    iput-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    .line 165
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/NetflixService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->getServiceIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    if-eqz v2, :cond_0

    .line 168
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v2, "VOIP service is NOT enabled or it started or starting, no need to start it."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 169
    goto :goto_0
.end method

.method public startDTMF(C)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {v0, p1}, Lcom/vailsys/whistleengine/WhistleEngine;->startDTMF(C)V

    .line 148
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->isServiceStoppedOrStopping()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 183
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Stop VOIP service"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STOPPING:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 191
    :cond_0
    return-void
.end method

.method public stopDTMF()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    invoke-virtual {v0}, Lcom/vailsys/whistleengine/WhistleEngine;->stopDTMF()V

    .line 155
    :cond_0
    return-void
.end method

.method public declared-synchronized terminate()Z
    .locals 2

    .prologue
    .line 797
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->reportCallTerminated()V

    .line 799
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mEngine:Lcom/vailsys/whistleengine/WhistleEngine;

    if-nez v0, :cond_0

    .line 800
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Engine is null, unable to terminate call!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    const/4 v0, 0x0

    .line 811
    :goto_0
    monitor-exit p0

    return v0

    .line 804
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    if-nez v0, :cond_1

    .line 805
    const-string/jumbo v0, "nf_voip_whistle"

    const-string/jumbo v1, "Current call is null, unable to terminate call!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :goto_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->callCleanup()V

    .line 811
    const/4 v0, 0x1

    goto :goto_0

    .line 807
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip$Call;->getId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/voip/WhistleVoipEngine;->doTerminate(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 797
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
