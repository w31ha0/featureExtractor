.class Lcom/netflix/mediaclient/service/voip/PowerLockManager;
.super Ljava/lang/Object;
.source "PowerLockManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_voip"


# instance fields
.field private mAgent:Lcom/netflix/mediaclient/service/ServiceAgent;

.field private mAudioRoutingChangedReceiver:Lcom/netflix/mediaclient/service/voip/PowerLockManager$AudioRoutingChangedReceiver;

.field private mCallInProgress:Z

.field private mConnectedHeadphones:Z

.field private mContex:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSpeakerOn:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/netflix/mediaclient/service/voip/PowerLockManager$AudioRoutingChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/voip/PowerLockManager$AudioRoutingChangedReceiver;-><init>(Lcom/netflix/mediaclient/service/voip/PowerLockManager;Lcom/netflix/mediaclient/service/voip/PowerLockManager$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mAudioRoutingChangedReceiver:Lcom/netflix/mediaclient/service/voip/PowerLockManager$AudioRoutingChangedReceiver;

    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mContex:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mAgent:Lcom/netflix/mediaclient/service/ServiceAgent;

    .line 77
    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/voip/PowerLockManager;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->handleStateChange()V

    return-void
.end method

.method private acquireCpuLock()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mContex:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 190
    if-nez v0, :cond_2

    .line 191
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Power manager is not available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    const/4 v1, 0x1

    :try_start_0
    const-string/jumbo v2, "nf_voip"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 203
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "acquireCpuLock: acquiring..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 205
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "acquireCpuLock: acquired."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Failed to created new wake lock for promixity!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private acquireScreenLock()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mAgent:Lcom/netflix/mediaclient/service/ServiceAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/ServiceAgent;->getConfigurationAgent()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getDeviceCategory()Lcom/netflix/mediaclient/util/DeviceCategory;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/util/DeviceCategory;->TABLET:Lcom/netflix/mediaclient/util/DeviceCategory;

    if-ne v0, v1, :cond_1

    .line 140
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Device is tablet, do NOT acquire screen lock!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Device is phone, do acquire screen lock!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mContex:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 147
    if-nez v0, :cond_2

    .line 148
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Power manager is not available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_2
    const/16 v1, 0x20

    :try_start_0
    const-string/jumbo v2, "nf_voip"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    .line 160
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Proximity screen wake off is supported on this device. Aquiring..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 162
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Proximity sensor aquired."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Failed to created new wake lock for promixity!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 164
    :cond_3
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Proximity screen wake off is not supported on this device"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleStateChange()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 226
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->setStates()V

    .line 228
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCallInProgress:Z

    if-nez v1, :cond_0

    .line 250
    :goto_0
    return-void

    .line 232
    :cond_0
    const/4 v1, 0x0

    .line 233
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mSpeakerOn:Z

    if-eqz v2, :cond_1

    .line 234
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Speaker is on, release proximity lock."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_1
    if-eqz v0, :cond_3

    .line 244
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Release proximity lock..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->releaseScreenLock()V

    goto :goto_0

    .line 236
    :cond_1
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mConnectedHeadphones:Z

    if-eqz v2, :cond_2

    .line 237
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Headphones are used for call, release proximity lock."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 240
    :cond_2
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v2, "Internal speaker is used, acquire proximity lock."

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_1

    .line 247
    :cond_3
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Acquire proximity lock..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->acquireScreenLock()V

    goto :goto_0
.end method

.method private releaseCpuLock()V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "releaseCpuLock: releasing..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 221
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .line 219
    :cond_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "releaseCpuLock: lock already released!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private releaseScreenLock()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "releaseScreenLock: releasing..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 180
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    .line 178
    :cond_1
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "releaseScreenLock: lock already released!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setStates()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mContex:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 103
    if-eqz v0, :cond_2

    .line 106
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mConnectedHeadphones:Z

    .line 107
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mSpeakerOn:Z

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_2
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mConnectedHeadphones:Z

    .line 114
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mSpeakerOn:Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized callEnded()V
    .locals 2

    .prologue
    .line 122
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCallInProgress:Z

    .line 123
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->releaseScreenLock()V

    .line 124
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->releaseCpuLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mContex:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mAudioRoutingChangedReceiver:Lcom/netflix/mediaclient/service/voip/PowerLockManager$AudioRoutingChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized callStarted()V
    .locals 3

    .prologue
    .line 84
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mCallInProgress:Z

    .line 86
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->acquireCpuLock()V

    .line 87
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->handleStateChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mContex:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->mAudioRoutingChangedReceiver:Lcom/netflix/mediaclient/service/voip/PowerLockManager$AudioRoutingChangedReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    :try_start_2
    const-string/jumbo v1, "nf_voip"

    const-string/jumbo v2, "Failed to register audio jack receiver"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSpeakerOn(Z)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->handleStateChange()V

    .line 254
    return-void
.end method
