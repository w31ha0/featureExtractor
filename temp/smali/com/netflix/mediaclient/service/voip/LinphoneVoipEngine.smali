.class final Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;
.super Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;
.source "LinphoneVoipEngine.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$Listener;
.implements Lorg/linphone/core/LinphoneCoreListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_voip_linphone"

.field private static sMainHandler:Landroid/os/Handler;

.field private static sStopping:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private mAddress:Lorg/linphone/core/LinphoneAddress;

.field private mDialPostponed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLc:Lorg/linphone/core/LinphoneCore;

.field private final mLinphoneConfigFile:Ljava/lang/String;

.field private final mLinphoneFactoryConfigFile:Ljava/lang/String;

.field private final mLinphoneRootCAFile:Ljava/lang/String;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->sMainHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->sStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/voip/VoipAgent;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    invoke-direct/range {p0 .. p6}, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$VoipAgentInterface;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;)V

    .line 72
    iput-object v2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mAddress:Lorg/linphone/core/LinphoneAddress;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mDialPostponed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    iput-object v2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/.linphonerc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLinphoneConfigFile:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/linphonerc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLinphoneFactoryConfigFile:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/rootca.pem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLinphoneRootCAFile:Ljava/lang/String;

    .line 97
    new-instance v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$1;-><init>(Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mVoipReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;)Lorg/linphone/core/LinphoneCore;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->sMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->sStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->stopLinphoneCore()V

    return-void
.end method

.method private callCleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 731
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "--- Calling CALL CLEANUP"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->releaseAudioFocus()V

    .line 735
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLockManager:Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->callEnded()V

    .line 738
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->disableBluetoothSCO()V

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 744
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_3

    .line 745
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 746
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_2

    .line 749
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v0, v3}, Lorg/linphone/core/LinphoneCore;->enableSpeaker(Z)V

    .line 751
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLockManager:Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->setSpeakerOn(Z)V

    .line 752
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "All call terminated, AudioManager: back to MODE_NORMAL and routing back to earpiece"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mNotificationManager:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    if-eqz v0, :cond_4

    .line 757
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mNotificationManager:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

    sget-object v2, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->cancelNotification(Lcom/netflix/mediaclient/service/NetflixService;Landroid/os/Handler;)V

    .line 759
    :cond_4
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mStartTime:J

    .line 760
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 761
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    .line 762
    return-void
.end method

.method private containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 605
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 606
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    const/4 v0, 0x1

    .line 610
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private copyFromPackage(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 525
    const/16 v2, 0x1f70

    new-array v2, v2, [B

    .line 526
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 527
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    const-string/jumbo v1, "nf_voip_linphone"

    const-string/jumbo v2, "Cannot copy config from package with id %d to file %s, message:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 535
    :goto_1
    return-void

    .line 529
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 530
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 531
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private copyIfNotExist(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 514
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 516
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->copyFromPackage(ILjava/lang/String;)V

    .line 518
    :cond_0
    return-void
.end method

.method private createAudioRecordFile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 967
    const-string/jumbo v0, ""

    .line 969
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->recordAudioToSdcard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 971
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 972
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/record.wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 973
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 977
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 983
    :cond_0
    :goto_0
    return-object v0

    .line 978
    :catch_0
    move-exception v1

    .line 979
    const-string/jumbo v2, "nf_voip_linphone"

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private declared-synchronized doDial()V
    .locals 5

    .prologue
    .line 766
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->setUrgentAudioThreadPriority()V

    .line 768
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    if-nez v0, :cond_0

    .line 769
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "engine is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    :goto_0
    monitor-exit p0

    return-void

    .line 773
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mAddress:Lorg/linphone/core/LinphoneAddress;

    if-nez v0, :cond_1

    .line 774
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "invite address is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 778
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 779
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "No dial request, no need to dial"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 783
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    if-eqz v0, :cond_3

    .line 784
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 785
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Call is already in progress! Terminate it first!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 791
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/linphone/core/LinphoneCore;->createCallParams(Lorg/linphone/core/LinphoneCall;)Lorg/linphone/core/LinphoneCallParams;

    move-result-object v0

    .line 792
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/linphone/core/LinphoneCallParams;->setVideoEnabled(Z)V

    .line 795
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getConnectionType(Landroid/content/Context;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/net/LogMobileType;->_2G:Lcom/netflix/mediaclient/service/net/LogMobileType;

    if-ne v1, v2, :cond_4

    .line 796
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/linphone/core/LinphoneCallParams;->enableLowBandwidth(Z)V

    .line 799
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->recordAudioToSdcard()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 800
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->createAudioRecordFile()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/linphone/core/LinphoneCallParams;->setRecordFile(Ljava/lang/String;)V

    .line 803
    :cond_5
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mAddress:Lorg/linphone/core/LinphoneAddress;

    invoke-interface {v1, v2, v0}, Lorg/linphone/core/LinphoneCore;->inviteAddressWithParams(Lorg/linphone/core/LinphoneAddress;Lorg/linphone/core/LinphoneCallParams;)Lorg/linphone/core/LinphoneCall;

    move-result-object v0

    .line 805
    if-nez v0, :cond_6

    .line 806
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Could not place call to %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->getSipUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 812
    :catch_0
    move-exception v0

    .line 813
    :try_start_4
    invoke-virtual {v0}, Lorg/linphone/core/LinphoneCoreException;->printStackTrace()V

    .line 816
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLockManager:Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->callStarted()V

    .line 817
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.ui.cs.ACTION_CALL_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 818
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mNotificationManager:Lcom/netflix/mediaclient/service/voip/CallNotificationManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

    sget-object v2, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->sMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->showCallingNotification(Lcom/netflix/mediaclient/service/NetflixService;Landroid/os/Handler;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 809
    :cond_6
    const/4 v1, 0x1

    :try_start_5
    invoke-interface {v0, v1}, Lorg/linphone/core/LinphoneCall;->enableEchoCancellation(Z)V

    .line 810
    new-instance v1, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;-><init>(Ljava/lang/String;Lorg/linphone/core/LinphoneCall;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;
    :try_end_5
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private doDialWithEngineCheck()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "No dial request, no need to start engine"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :goto_0
    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 685
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "VOIP is not ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 689
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->doDial()V

    goto :goto_0
.end method

.method private declared-synchronized initLibLinphone(Lorg/linphone/core/LinphoneCore;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 615
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "nf_voip_linphone"

    const-string/jumbo v2, "--- INIT VOIP engine"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    sget-object v1, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->sStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 618
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Currently Stopping, cannot init!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    :goto_0
    monitor-exit p0

    return-void

    .line 622
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    .line 625
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLinphoneRootCAFile:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/linphone/core/LinphoneCore;->setRootCA(Ljava/lang/String;)V

    .line 626
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 627
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v2, v1}, Lorg/linphone/core/LinphoneCore;->setCpuCount(I)V

    .line 628
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/linphone/core/LinphoneCore;->enableVideo(ZZ)V

    .line 629
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/linphone/core/LinphoneCore;->setNetworkReachable(Z)V

    .line 630
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    sget-object v2, Lorg/linphone/core/LinphoneCore$MediaEncryption;->SRTP:Lorg/linphone/core/LinphoneCore$MediaEncryption;

    invoke-interface {v1, v2}, Lorg/linphone/core/LinphoneCore;->setMediaEncryption(Lorg/linphone/core/LinphoneCore$MediaEncryption;)V

    .line 631
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/linphone/core/LinphoneCore;->enableEchoCancellation(Z)V

    .line 632
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/linphone/core/LinphoneCore;->enableAdaptiveRateControl(Z)V

    .line 633
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lorg/linphone/core/LinphoneCore;->setUseRfc2833ForDtmfs(Z)V

    .line 636
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getCodecs()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getCodecs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 637
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->getAudioCodecs()[Lorg/linphone/core/PayloadType;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1
    :try_end_1
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    :try_start_2
    iget-object v4, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallConfigData:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallConfigData;->getCallAttributes()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->getCodecs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0}, Lorg/linphone/core/PayloadType;->getMime()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->containsIgnoreCase(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0}, Lorg/linphone/core/PayloadType;->getMime()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "G722"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 640
    :cond_1
    iget-object v4, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    const/4 v5, 0x1

    invoke-interface {v4, v0, v5}, Lorg/linphone/core/LinphoneCore;->enablePayloadType(Lorg/linphone/core/PayloadType;Z)V

    .line 637
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 642
    :cond_2
    iget-object v4, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Lorg/linphone/core/LinphoneCore;->enablePayloadType(Lorg/linphone/core/PayloadType;Z)V
    :try_end_2
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 644
    :catch_0
    move-exception v0

    .line 645
    :try_start_3
    const-string/jumbo v4, "nf_voip_linphone"

    const-string/jumbo v5, "ERROR while configuring audio codecs, %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lorg/linphone/core/LinphoneCoreException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 670
    :catch_1
    move-exception v0

    .line 671
    :try_start_4
    const-string/jumbo v1, "nf_voip_linphone"

    const-string/jumbo v2, "Could not create LinphoneCore instance, %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/linphone/core/LinphoneCoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 651
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 652
    if-nez v0, :cond_4

    .line 653
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 655
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    const-string/jumbo v2, "LinphoneAndroid"

    invoke-interface {v1, v2, v0}, Lorg/linphone/core/LinphoneCore;->setUserAgent(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-static {}, Lorg/linphone/core/LinphoneCoreFactory;->instance()Lorg/linphone/core/LinphoneCoreFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->getSipUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/linphone/core/LinphoneCoreFactory;->createLinphoneAddress(Ljava/lang/String;)Lorg/linphone/core/LinphoneAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mAddress:Lorg/linphone/core/LinphoneAddress;

    .line 659
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mAddress:Lorg/linphone/core/LinphoneAddress;

    sget-object v1, Lorg/linphone/core/LinphoneAddress$TransportType;->LinphoneTransportTls:Lorg/linphone/core/LinphoneAddress$TransportType;

    invoke-interface {v0, v1}, Lorg/linphone/core/LinphoneAddress;->setTransport(Lorg/linphone/core/LinphoneAddress$TransportType;)V

    .line 662
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    if-eqz v0, :cond_5

    .line 663
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->init()V

    .line 666
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 668
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "VOIP engine is now ready"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 672
    :catch_2
    move-exception v0

    .line 673
    :try_start_6
    const-string/jumbo v1, "nf_voip_linphone"

    const-string/jumbo v2, "Cannot get version name, %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method private onCallReleased()V
    .locals 2

    .prologue
    .line 952
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Call released, stopping engine"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    new-instance v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$3;-><init>(Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;)V

    .line 959
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 960
    return-void
.end method

.method private onInviteAnswered(Lorg/linphone/core/LinphoneCall;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 845
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCurrentParamsCopy()Lorg/linphone/core/LinphoneCallParams;

    move-result-object v1

    .line 846
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    check-cast v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->setCallParams(Lorg/linphone/core/LinphoneCallParams;)V

    .line 848
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->routeAudioToBluetooth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Audio is routed through Bluetooth Sco"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_0
    const-string/jumbo v1, "nf_voip_linphone"

    const-string/jumbo v2, "Call connected on line %s"

    new-array v3, v5, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCallLog()Lorg/linphone/core/LinphoneCallLog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCallLog()Lorg/linphone/core/LinphoneCallLog;

    move-result-object v0

    invoke-interface {v0}, Lorg/linphone/core/LinphoneCallLog;->getCallId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 854
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_4

    .line 855
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    if-nez v0, :cond_3

    .line 856
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Call was NOT in progress and we received connected on line %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCallLog()Lorg/linphone/core/LinphoneCallLog;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallLog;->getCallId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 866
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->reportCallConnected()V

    .line 867
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mStartTime:J

    .line 868
    return-void

    .line 852
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    .line 858
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 859
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->callConnected(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V

    goto :goto_2

    .line 863
    :cond_4
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "SDK is null and we received call connected! Should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onInviteClosed(Lorg/linphone/core/LinphoneCall;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 896
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Outbound call disconnected on line %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCallLog()Lorg/linphone/core/LinphoneCallLog;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallLog;->getCallId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 898
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->recordAudioToSdcard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->stopRecording()V

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    check-cast v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->getCallStatsSent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 904
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    check-cast v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->callStatsSent()V

    .line 906
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    if-nez v0, :cond_1

    .line 907
    invoke-static {}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->builder()Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    const-string/jumbo v1, "linphone"

    .line 908
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setSdk(Ljava/lang/String;)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    check-cast v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;

    .line 909
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->getCodecName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setCodec(Ljava/lang/String;)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    check-cast v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;

    .line 910
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->getCodecRate()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setRate(I)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 911
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getDownloadBandwidth()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setDownloadBw(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 912
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getUploadBandwidth()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setUploadBw(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 913
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getNumberPacketsSent()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setPacketsSent(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 914
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getNumberPacketsReceived()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setPacketsReceived(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 915
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getNumberBytesSent()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setBytesSent(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 916
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getNumberBytesReceived()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setBytesReceived(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 917
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getLatePacketsCumulativeNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setIncomingTooLate(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 918
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getCumulativePacketsLost()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setIncomingPacketsLost(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 919
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getReceiverLossRate()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setRecvLossRate(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 920
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getSenderLossRate()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setSendLossRate(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 921
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getSenderInterarrivalJitter()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMinJitterTx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 922
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getSenderInterarrivalJitter()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMaxJitterTx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 923
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getSenderInterarrivalJitter()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setAverageJitterTx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 924
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getReceiverInterarrivalJitter()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMinJitterRx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 925
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getReceiverInterarrivalJitter()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMaxJitterRx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 926
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getReceiverInterarrivalJitter()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setAverageJitterRx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 927
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getRoundTripDelay()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMinRtt(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 928
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getRoundTripDelay()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMaxRtt(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 929
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallStats;->getRoundTripDelay()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setAverageRtt(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v0

    .line 930
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->build()Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    .line 932
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->reportCallStatistics()V

    .line 935
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->callCleanup()V

    .line 937
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_3

    .line 938
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 939
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->callDisconnected(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V

    .line 941
    invoke-interface {v0, v4}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->engineStatusChanged(Z)V

    goto :goto_0

    .line 944
    :cond_3
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Engine is null and we received call disconnect! Should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;->canceledByNetflix:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallSessionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$TerminationReason;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/Error;)V

    .line 948
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.ui.cs.ACTION_CALL_ENDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 949
    return-void
.end method

.method private onInviteFailure(Lorg/linphone/core/LinphoneCall;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 883
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Call failure for line %s with message %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCallLog()Lorg/linphone/core/LinphoneCallLog;

    move-result-object v4

    invoke-interface {v4}, Lorg/linphone/core/LinphoneCallLog;->getCallId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 885
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->callCleanup()V

    .line 887
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/NetflixService;->getErrorHandler()Lcom/netflix/mediaclient/servicemgr/IErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCancelAction:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/service/voip/VoipErrorDialogDescriptorFactory;->getHandlerForCallFailed(Landroid/content/Context;Ljava/lang/Runnable;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IErrorHandler;->addError(Lcom/netflix/mediaclient/service/error/ErrorDescriptor;)Z

    .line 888
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->reportNetworkFailure()V

    .line 890
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 891
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->networkFailed(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V

    goto :goto_0

    .line 893
    :cond_0
    return-void
.end method

.method private onInviteOutgoing(Lorg/linphone/core/LinphoneCall;)V
    .locals 2

    .prologue
    .line 822
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Outbound call invite outgoing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->setAudioManagerInCallMode()V

    .line 825
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->requestAudioFocus()V

    .line 826
    return-void
.end method

.method private onInviteRinging(Lorg/linphone/core/LinphoneCall;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 829
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Outbound call ringing on line %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCallLog()Lorg/linphone/core/LinphoneCallLog;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallLog;->getCallId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 831
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_2

    .line 832
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    if-nez v0, :cond_1

    .line 833
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Call was NOT in progress and we received call ringing on line %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCallLog()Lorg/linphone/core/LinphoneCallLog;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallLog;->getCallId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 836
    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->callRinging(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V

    goto :goto_1

    .line 840
    :cond_2
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Engine is null and we received call ringing! Should not happen!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onStreamRunning(Lorg/linphone/core/LinphoneCall;)V
    .locals 3

    .prologue
    .line 871
    if-eqz p1, :cond_1

    .line 872
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->recordAudioToSdcard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->startRecording()V

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCurrentParamsCopy()Lorg/linphone/core/LinphoneCallParams;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCurrentParamsCopy()Lorg/linphone/core/LinphoneCallParams;

    move-result-object v0

    invoke-interface {v0}, Lorg/linphone/core/LinphoneCallParams;->getUsedAudioCodec()Lorg/linphone/core/PayloadType;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 877
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    check-cast v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCurrentParamsCopy()Lorg/linphone/core/LinphoneCallParams;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneCallParams;->getUsedAudioCodec()Lorg/linphone/core/PayloadType;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/PayloadType;->getMime()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/linphone/core/LinphoneCall;->getCurrentParamsCopy()Lorg/linphone/core/LinphoneCallParams;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallParams;->getUsedAudioCodec()Lorg/linphone/core/PayloadType;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/PayloadType;->getRate()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->setCodec(Ljava/lang/String;I)V

    .line 880
    :cond_1
    return-void
.end method

.method private declared-synchronized startLinphoneCore()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 538
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    sget-object v1, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STARTED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    if-ne v0, v1, :cond_0

    .line 539
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Linphone engine already started"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v6

    .line 579
    :goto_0
    monitor-exit p0

    return v0

    .line 543
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    if-nez v0, :cond_1

    .line 544
    new-instance v0, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager$Listener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 548
    :cond_1
    const/high16 v0, 0x7f080000

    :try_start_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLinphoneConfigFile:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->copyIfNotExist(ILjava/lang/String;)V

    .line 549
    const v0, 0x7f080001

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLinphoneFactoryConfigFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->copyFromPackage(ILjava/lang/String;)V

    .line 550
    const v0, 0x7f080003

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLinphoneRootCAFile:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->copyFromPackage(ILjava/lang/String;)V

    .line 558
    invoke-static {}, Lorg/linphone/core/LinphoneCoreFactory;->instance()Lorg/linphone/core/LinphoneCoreFactory;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLinphoneConfigFile:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLinphoneFactoryConfigFile:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mContext:Landroid/content/Context;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/linphone/core/LinphoneCoreFactory;->createLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/linphone/core/LinphoneCore;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    .line 561
    new-instance v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$IterateRunnable;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$IterateRunnable;-><init>(Lorg/linphone/core/LinphoneCore;Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;)V

    .line 562
    new-instance v1, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$2;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$2;-><init>(Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$IterateRunnable;)V

    .line 570
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v2, "LinphoneVoipEngine scheduler"

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mTimer:Ljava/util/Timer;

    .line 571
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 573
    sget-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STARTING:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;
    :try_end_2
    .catch Lorg/linphone/core/LinphoneCoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v6

    .line 579
    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    :try_start_3
    const-string/jumbo v1, "nf_voip_linphone"

    const-string/jumbo v2, "Could not create LinphoneCore instance, %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/linphone/core/LinphoneCoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v7

    .line 577
    goto/16 :goto_0

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopLinphoneCore()V
    .locals 5

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->sStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 695
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 697
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "--- STOPPING VOIP engine"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->destroy()V

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 704
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v0}, Lorg/linphone/core/LinphoneCore;->destroy()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 708
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    .line 709
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    .line 716
    :goto_0
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "--- STOP COMPLETE, voip engine is now ready for new call"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 718
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 719
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->engineStatusChanged(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 705
    :catch_0
    move-exception v0

    .line 706
    :try_start_3
    const-string/jumbo v1, "nf_voip_linphone"

    const-string/jumbo v2, "stopEngine exception %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 708
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    .line 709
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    goto :goto_0

    .line 708
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    .line 709
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    throw v0

    .line 712
    :cond_1
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "  --> Engine already stopped!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 722
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->sStopping:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 723
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public authInfoRequested(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public authenticationRequested(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneAuthInfo;Lorg/linphone/core/LinphoneCore$AuthMethod;)V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public callEncryptionChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 482
    return-void
.end method

.method public callState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCall$State;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 332
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Call state: %s (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 334
    sget-object v0, Lorg/linphone/core/LinphoneCall$State;->OutgoingInit:Lorg/linphone/core/LinphoneCall$State;

    if-ne p3, v0, :cond_1

    .line 335
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->onInviteOutgoing(Lorg/linphone/core/LinphoneCall;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    sget-object v0, Lorg/linphone/core/LinphoneCall$State;->OutgoingRinging:Lorg/linphone/core/LinphoneCall$State;

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    if-eqz v0, :cond_2

    .line 337
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->onInviteRinging(Lorg/linphone/core/LinphoneCall;)V

    goto :goto_0

    .line 338
    :cond_2
    sget-object v0, Lorg/linphone/core/LinphoneCall$State;->Connected:Lorg/linphone/core/LinphoneCall$State;

    if-ne p3, v0, :cond_3

    .line 339
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->onInviteAnswered(Lorg/linphone/core/LinphoneCall;)V

    goto :goto_0

    .line 340
    :cond_3
    sget-object v0, Lorg/linphone/core/LinphoneCall$State;->StreamsRunning:Lorg/linphone/core/LinphoneCall$State;

    if-ne p3, v0, :cond_4

    .line 341
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->onStreamRunning(Lorg/linphone/core/LinphoneCall;)V

    goto :goto_0

    .line 342
    :cond_4
    sget-object v0, Lorg/linphone/core/LinphoneCall$State;->CallEnd:Lorg/linphone/core/LinphoneCall$State;

    if-ne p3, v0, :cond_5

    .line 343
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->onInviteClosed(Lorg/linphone/core/LinphoneCall;)V

    goto :goto_0

    .line 344
    :cond_5
    sget-object v0, Lorg/linphone/core/LinphoneCall$State;->CallReleased:Lorg/linphone/core/LinphoneCall$State;

    if-ne p3, v0, :cond_6

    .line 345
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->onCallReleased()V

    goto :goto_0

    .line 346
    :cond_6
    sget-object v0, Lorg/linphone/core/LinphoneCall$State;->Error:Lorg/linphone/core/LinphoneCall$State;

    if-ne p3, v0, :cond_0

    .line 347
    invoke-direct {p0, p2, p4}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->onInviteFailure(Lorg/linphone/core/LinphoneCall;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public callStatsUpdated(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallStats;)V
    .locals 23

    .prologue
    .line 359
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    if-nez v2, :cond_1

    .line 362
    invoke-static {}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->builder()Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    const-string/jumbo v3, "linphone"

    .line 363
    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setSdk(Ljava/lang/String;)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    check-cast v2, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;

    .line 364
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->getCodecName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setCodec(Ljava/lang/String;)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    check-cast v2, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;

    .line 365
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->getCodecRate()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setRate(I)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 366
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getDownloadBandwidth()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setDownloadBw(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 367
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getUploadBandwidth()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setUploadBw(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 368
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getNumberPacketsSent()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setPacketsSent(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 369
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getNumberPacketsReceived()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setPacketsReceived(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 370
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getLatePacketsCumulativeNumber()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setIncomingTooLate(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 371
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getCumulativePacketsLost()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setIncomingPacketsLost(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 372
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getNumberBytesSent()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setBytesSent(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 373
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getNumberBytesReceived()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setBytesReceived(J)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 374
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getReceiverLossRate()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setRecvLossRate(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 375
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getSenderLossRate()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setSendLossRate(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 376
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getSenderInterarrivalJitter()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMinJitterTx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 377
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getSenderInterarrivalJitter()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMaxJitterTx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 378
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getSenderInterarrivalJitter()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setAverageJitterTx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 379
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getReceiverInterarrivalJitter()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMinJitterRx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 380
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getReceiverInterarrivalJitter()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMaxJitterRx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 381
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getReceiverInterarrivalJitter()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setAverageJitterRx(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 382
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getRoundTripDelay()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMinRtt(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 383
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getRoundTripDelay()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setMaxRtt(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 384
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v3

    invoke-interface {v3}, Lorg/linphone/core/LinphoneCallStats;->getRoundTripDelay()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->setAverageRtt(F)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;

    move-result-object v2

    .line 385
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics$Builder;->build()Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    .line 404
    :goto_0
    const-string/jumbo v2, "nf_voip_linphone"

    const-string/jumbo v3, "================== CALL STATISTICS ========================"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string/jumbo v2, "nf_voip_linphone"

    const-string/jumbo v3, "        CODEC:                  %s/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->codec()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->rate()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 406
    const-string/jumbo v2, "nf_voip_linphone"

    const-string/jumbo v3, "        Download bandwidth:     %.2f kbits/sec"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->downloadBw()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 407
    const-string/jumbo v2, "nf_voip_linphone"

    const-string/jumbo v3, "        Upload bandwidth:       %.2f kbits/sec"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->uploadBw()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 408
    const-string/jumbo v2, "nf_voip_linphone"

    const-string/jumbo v3, "        Sender loss rate:       %.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->sendLossRate()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 409
    const-string/jumbo v2, "nf_voip_linphone"

    const-string/jumbo v3, "        Receiver loss rate:     %.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->recvLossRate()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 410
    const-string/jumbo v2, "nf_voip_linphone"

    const-string/jumbo v3, "        Packets/Bytes sent:     %d packets / %d bytes"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->packetsSent()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->bytesSent()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 411
    const-string/jumbo v2, "nf_voip_linphone"

    const-string/jumbo v3, "        Packets/Bytes received: %d packets / %d bytes"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->packetsReceived()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->bytesReceived()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 412
    const-string/jumbo v2, "nf_voip_linphone"

    const-string/jumbo v3, "        Lost cumlative packets: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->incomingPacketsLost()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 413
    const-string/jumbo v2, "nf_voip_linphone"

    const-string/jumbo v3, "        Late cumlative packets: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->incomingTooLate()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 414
    const-string/jumbo v2, "nf_voip_linphone"

    const-string/jumbo v3, "        Remote RX Jitter :      %.2f ms average, MIN: %.2f ms, MAX: %.2f ms"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->averageJitterRx()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->minJitterRx()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->maxJitterRx()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 415
    const-string/jumbo v2, "nf_voip_linphone"

    const-string/jumbo v3, "        Local TX  Jitter :      %.2f ms average, MIN: %.2f ms, MAX: %.2f ms"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->averageJitterTx()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->minJitterTx()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->maxJitterTx()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 416
    const-string/jumbo v2, "nf_voip_linphone"

    const-string/jumbo v3, "        Jitter buffer size:     %.2f ms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v6

    invoke-interface {v6}, Lorg/linphone/core/LinphoneCallStats;->getJitterBufferSize()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 417
    const-string/jumbo v2, "nf_voip_linphone"

    const-string/jumbo v3, "        Roundtrip delay:        %.2f ms average, MIN: %.2f ms, MAX: %.2f ms"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->averageRtt()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->minRtt()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->maxRtt()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 418
    const-string/jumbo v2, "nf_voip_linphone"

    const-string/jumbo v3, "==========================================================="

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_0
    return-void

    .line 389
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getDownloadBandwidth()F

    move-result v4

    .line 390
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getUploadBandwidth()F

    move-result v5

    .line 391
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getNumberBytesSent()J

    move-result-wide v6

    .line 392
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getNumberBytesReceived()J

    move-result-wide v8

    .line 393
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getNumberPacketsSent()J

    move-result-wide v10

    .line 394
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getNumberPacketsReceived()J

    move-result-wide v12

    .line 395
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getLatePacketsCumulativeNumber()J

    move-result-wide v14

    .line 396
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getCumulativePacketsLost()J

    move-result-wide v16

    .line 397
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getSenderLossRate()F

    move-result v18

    .line 398
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getReceiverLossRate()F

    move-result v19

    .line 399
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getSenderInterarrivalJitter()F

    move-result v2

    const/high16 v20, 0x447a0000    # 1000.0f

    mul-float v20, v20, v2

    .line 400
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getReceiverInterarrivalJitter()F

    move-result v2

    const/high16 v21, 0x447a0000    # 1000.0f

    mul-float v21, v21, v2

    .line 401
    invoke-interface/range {p2 .. p2}, Lorg/linphone/core/LinphoneCall;->getAudioStats()Lorg/linphone/core/LinphoneCallStats;

    move-result-object v2

    invoke-interface {v2}, Lorg/linphone/core/LinphoneCallStats;->getRoundTripDelay()F

    move-result v22

    .line 389
    invoke-virtual/range {v3 .. v22}, Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;->update(FFJJJJJJFFFFF)Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCallStats:Lcom/netflix/mediaclient/service/voip/VoipCallStatistics;

    goto/16 :goto_0
.end method

.method public configuringStatus(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$RemoteProvisioningState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 473
    return-void
.end method

.method public declared-synchronized dial()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Request for dial is already in progress!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    :goto_0
    monitor-exit p0

    return v4

    .line 192
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mSharedSessionId:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Sdk;->direct:Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Sdk;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mSharedSessionId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/CustomerServiceLogUtils;->reportCallSessionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/CustomerServiceLogging$Sdk;Ljava/lang/String;Z)V

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mDialRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 197
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->start()Z

    .line 199
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Wait to start dial when callback that VOIP service is started returns!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mDialPostponed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 204
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->doDialWithEngineCheck()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public displayMessage(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method public displayStatus(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public displayWarning(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 456
    return-void
.end method

.method public dtmfReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;I)V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method public ecCalibrationStatus(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method public fileTransferProgressIndication(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;I)V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public fileTransferRecv(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;[BI)V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public fileTransferSend(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;Ljava/nio/ByteBuffer;I)I
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public friendListCreated(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriendList;)V
    .locals 0

    .prologue
    .line 500
    return-void
.end method

.method public friendListRemoved(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriendList;)V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public getMicrophoneInputLevel()F
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method protected getVoipReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mVoipReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public declared-synchronized globalState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$GlobalState;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "globalState %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lorg/linphone/core/LinphoneCore$GlobalState;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 309
    sget-object v0, Lorg/linphone/core/LinphoneCore$GlobalState;->GlobalOn:Lorg/linphone/core/LinphoneCore$GlobalState;

    if-ne p2, v0, :cond_2

    .line 311
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->initLibLinphone(Lorg/linphone/core/LinphoneCore;)V

    .line 313
    sget-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STARTED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    .line 315
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;

    .line 316
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/netflix/mediaclient/servicemgr/IVoip$OutboundCallListener;->engineStatusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 319
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mDialPostponed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mDialPostponed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 321
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->doDialWithEngineCheck()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 323
    :cond_2
    :try_start_2
    sget-object v0, Lorg/linphone/core/LinphoneCore$GlobalState;->GlobalShutdown:Lorg/linphone/core/LinphoneCore$GlobalState;

    if-ne p2, v0, :cond_3

    .line 324
    sget-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STOPPING:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    goto :goto_1

    .line 325
    :cond_3
    sget-object v0, Lorg/linphone/core/LinphoneCore$GlobalState;->GlobalOff:Lorg/linphone/core/LinphoneCore$GlobalState;

    if-ne p2, v0, :cond_1

    .line 326
    sget-object v0, Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;->STOPPED:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mServiceState:Lcom/netflix/mediaclient/service/voip/BaseVoipEngine$ServiceState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public infoReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneInfoMessage;)V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public isComposingReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatRoom;)V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public isMicrophoneMuted()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v0}, Lorg/linphone/core/LinphoneCore;->isMicMuted()Z

    move-result v0

    .line 258
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;
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
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 264
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    if-eqz v1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->isBluetoothHeadsetAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->isUsingBluetoothAudioRoute()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 272
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v0}, Lorg/linphone/core/LinphoneCore;->isSpeakerEnabled()Z

    move-result v0

    goto :goto_0

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    goto :goto_0
.end method

.method public messageReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatRoom;Lorg/linphone/core/LinphoneChatMessage;)V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method public messageReceivedUnableToDecrypted(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatRoom;Lorg/linphone/core/LinphoneChatMessage;)V
    .locals 0

    .prologue
    .line 479
    return-void
.end method

.method public networkReachableChanged(Lorg/linphone/core/LinphoneCore;Z)V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public newSubscriptionRequest(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriend;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public notifyPresenceReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriend;)V
    .locals 0

    .prologue
    .line 426
    return-void
.end method

.method public notifyReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneAddress;[B)V
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method public notifyReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneEvent;Ljava/lang/String;Lorg/linphone/core/LinphoneContent;)V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method public publishStateChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneEvent;Lorg/linphone/core/PublishState;)V
    .locals 0

    .prologue
    .line 444
    return-void
.end method

.method public recordAudioToSdcard()Z
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    return v0
.end method

.method public registrationState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneProxyConfig;Lorg/linphone/core/LinphoneCore$RegistrationState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public routeAudioToBluetooth()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->isBluetoothHeadsetAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->routeAudioToBluetooth()Z

    move-result v0

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public routeAudioToEarpiece()V
    .locals 2

    .prologue
    .line 135
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Routing audio to earpiece, disabling bluetooth audio route"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mBTAudioManager:Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/BluetoothAudioManager;->disableBluetoothSCO()V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/linphone/core/LinphoneCore;->enableSpeaker(Z)V

    .line 143
    :cond_1
    return-void
.end method

.method public setMicrophoneMute(Z)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v0, p1}, Lorg/linphone/core/LinphoneCore;->muteMic(Z)V

    .line 235
    :cond_0
    return-void
.end method

.method public setOutputVolume(F)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public setSpeakerOn(Z)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_2

    .line 246
    if-nez p1, :cond_0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->routeAudioToBluetooth()Z

    move-result v0

    if-nez v0, :cond_1

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v0, p1}, Lorg/linphone/core/LinphoneCore;->enableSpeaker(Z)V

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLockManager:Lcom/netflix/mediaclient/service/voip/PowerLockManager;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/voip/PowerLockManager;->setSpeakerOn(Z)V

    .line 251
    :cond_2
    return-void
.end method

.method public show(Lorg/linphone/core/LinphoneCore;)V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method public start()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 161
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    :goto_0
    return v0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    const-string/jumbo v1, "nf_voip_linphone"

    const-string/jumbo v2, "VOIP service is NOT enabled, no need to start it."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->startLinphoneCore()Z

    move-result v0

    goto :goto_0
.end method

.method public startDTMF(C)V
    .locals 5

    .prologue
    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_0

    .line 284
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Sending DTMF code %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 285
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v0, p1}, Lorg/linphone/core/LinphoneCore;->sendDtmf(C)V

    .line 287
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 172
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "stop() called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->stopLinphoneCore()V

    .line 174
    return-void
.end method

.method public stopDTMF()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v0}, Lorg/linphone/core/LinphoneCore;->stopDtmf()V

    .line 294
    :cond_0
    return-void
.end method

.method public subscriptionStateChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneEvent;Lorg/linphone/core/SubscriptionState;)V
    .locals 0

    .prologue
    .line 441
    return-void
.end method

.method public declared-synchronized terminate()Z
    .locals 2

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "--- TERMINATE Call"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    if-nez v0, :cond_0

    .line 216
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Engine is null, unable to terminate call!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    const/4 v0, 0x0

    .line 227
    :goto_0
    monitor-exit p0

    return v0

    .line 220
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    if-nez v0, :cond_2

    .line 221
    const-string/jumbo v0, "nf_voip_linphone"

    const-string/jumbo v1, "Current call is null, unable to terminate call!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    invoke-interface {v0}, Lorg/linphone/core/LinphoneCore;->isIncall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->reportCallTerminated()V

    .line 224
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mLc:Lorg/linphone/core/LinphoneCore;

    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine;->mCurrentCall:Lcom/netflix/mediaclient/servicemgr/IVoip$Call;

    check-cast v0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->getLinphoneCall()Lorg/linphone/core/LinphoneCall;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/linphone/core/LinphoneCore;->terminateCall(Lorg/linphone/core/LinphoneCall;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public transferState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCall$State;)V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public uploadProgressIndication(Lorg/linphone/core/LinphoneCore;II)V
    .locals 0

    .prologue
    .line 494
    return-void
.end method

.method public uploadStateChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 497
    return-void
.end method
