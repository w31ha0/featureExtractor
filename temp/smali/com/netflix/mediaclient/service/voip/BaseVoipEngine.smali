.class abstract Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;
.super Ljava/lang/Object;
.source "BaseVoipEngine.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IVoip;


# static fields
.field protected static final APP_ID:Ljava/lang/String; = "samurai"

.field private static final SIP:Ljava/lang/String; = "sip:"

.field private static final TAG:Ljava/lang/String; = "nf_voip"

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field protected mAudioFocusRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mAudioManager:Landroid/media/AudioManager;

.field protected mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

.field protected mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

.field protected mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

.field mCancelAction:Ljava/lang/Runnable;

.field protected mConfigurationAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field protected mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

.field protected mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mLockManager:Lcom/netflix/mediaclient/service/voip/PowerLockManager;

.field protected mMainHandler:Landroid/os/Handler;

.field protected mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

.field protected mNotificationManager:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

.field protected mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field protected mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

.field protected mSharedSessionId:Ljava/lang/String;

.field protected mStartTime:J

.field protected mUserAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

.field protected mVoipAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

.field protected mVoipReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 423
    new-instance v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mListeners:Ljava/util/List;

    .line 76
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->NO_CONNECTION:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 81
    sget-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->NOT_STARTED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    .line 118
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mAudioFocusRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mMainHandler:Landroid/os/Handler;

    .line 292
    new-instance v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$1;-><init>(Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 432
    new-instance v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$3;-><init>(Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mCancelAction:Ljava/lang/Runnable;

    .line 149
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mContext:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mVoipAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    .line 151
    iput-object p3, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

    .line 152
    iput-object p4, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mUserAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;

    .line 153
    iput-object p5, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mConfigurationAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 154
    iput-object p6, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    .line 155
    new-instance v0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    check-cast p2, Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mLockManager:Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    .line 156
    new-instance v0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mNotificationManager:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    .line 157
    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    .line 158
    return-void
.end method

.method protected static execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 421
    return-void
.end method

.method protected static setUrgentAudioThreadPriority()V
    .locals 1

    .prologue
    .line 453
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 454
    const/16 v0, -0x13

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 455
    return-void
.end method

.method public static validateCallAttributes(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 463
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 475
    :cond_1
    :goto_0
    return v0

    .line 467
    :cond_2
    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->VAIL:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getSdkType()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 468
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getCredential()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 469
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getUserToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    .line 471
    :cond_4
    sget-object v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->TWILIO:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getSdkType()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 472
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getTwilioAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 475
    :cond_5
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getDesinationNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 476
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getDestinationPORT()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 477
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getDestinationAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_6
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addOutboundCallListener(Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;)V
    .locals 2

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Listener is already added!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_0
    monitor-exit p0

    return-void

    .line 195
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "--- DESTROY VOIP engine"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mCancelAction:Ljava/lang/Runnable;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mVoipReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCallStartTimeInMs()J
    .locals 2

    .prologue
    .line 220
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mStartTime:J

    return-wide v0
.end method

.method public getConnectivityState()Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    return-object v0
.end method

.method public getCurrentCall()Lcom/netflix/mediaclient/servicemgr/IVoip$Call;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    return-object v0
.end method

.method protected getSipUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getDesinationNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getDestinationAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getDestinationPORT()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getVoipReceiver()Landroid/content/BroadcastReceiver;
.end method

.method public isCallInProgress()Z
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->NO_CONNECTION:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mConfigurationAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mConfigurationAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    check-cast v0, Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mConfigurationAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->shouldDisableVoip()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 185
    :goto_0
    return v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 185
    goto :goto_0
.end method

.method public recordAudioToSdcard()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method protected registerReceiver()V
    .locals 3

    .prologue
    .line 262
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Registering VOIP receiver..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 264
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Context is null, nothing to register."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->getVoipReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->getNotificationIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 268
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Registered VOIP receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected releaseAudioFocus()V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mAudioFocusRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "We had audio focus, release it."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 339
    if-eqz v0, :cond_0

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Failed to request audio focus release"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized removeOutboundCallListener(Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;)Z
    .locals 1

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected reportCallConnected()V
    .locals 3

    .prologue
    .line 357
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->GREEN:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mNotificationManager:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->updateConnectedNotification(Lcom/netflix/mediaclient/service/NetflixService;Landroid/os/Handler;)V

    .line 359
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;->green:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallConnected(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$CallQuality;)V

    .line 360
    return-void
.end method

.method public reportCallStatistics()V
    .locals 3

    .prologue
    .line 407
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mVoipAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mVoipAgentInterface:Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getUserToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;->reportCallStatistics(Ljava/lang/String;Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;)V

    .line 410
    :cond_0
    return-void
.end method

.method protected reportCallTerminated()V
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->NO_CONNECTION:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    if-eq v0, v1, :cond_0

    .line 395
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByUserAfterConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 399
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 400
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->NO_CONNECTION:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    .line 401
    return-void

    .line 397
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByUserBeforeConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    goto :goto_0
.end method

.method protected reportNetworkFailure()V
    .locals 7

    .prologue
    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mConnectivityState:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;->NO_CONNECTION:Lcom/netflix/mediaclient/servicemgr/IVoip$ConnectivityState;

    if-eq v0, v1, :cond_0

    .line 365
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->failedAfterConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    .line 370
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;-><init>()V

    .line 372
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setFatal(Z)V

    .line 374
    const-string/jumbo v3, "networkFailed"

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setErrorCode(Ljava/lang/String;)V

    .line 376
    new-instance v3, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;

    invoke-direct {v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;-><init>()V

    .line 379
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 380
    const-string/jumbo v5, "reason"

    const-string/jumbo v6, "networkFailed"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;->setMessage(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_1
    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->setDebug(Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement$Debug;)V

    .line 387
    new-instance v2, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    sget-object v3, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->networkFailure:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-direct {v2, v3, v1}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V

    .line 389
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    invoke-static {v1, v0, v3, v2}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 390
    return-void

    .line 367
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->failedBeforeConnected:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    goto :goto_0

    .line 382
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method protected requestAudioFocus()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mAudioFocusRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Already asked for audip focus..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 319
    if-eqz v0, :cond_0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mOnAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Failed to request audio focus"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected setAudioManagerInCallMode()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 302
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 304
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "[AudioManager] already in MODE_IN_COMMUNICATION, skipping..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "[AudioManager] Mode: MODE_IN_COMMUNICATION"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0
.end method

.method public setConfigData(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    .line 171
    return-void
.end method

.method protected unregisterReceiver()V
    .locals 4

    .prologue
    .line 275
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 276
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Context is null, nothing to unregister."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    return-void

    .line 281
    :cond_0
    :try_start_0
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Unregistering VOIP receiver..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;->getVoipReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 283
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Unregistered VOIP receiver"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string/jumbo v1, "nf_voip"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregister VOIP receiver  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
