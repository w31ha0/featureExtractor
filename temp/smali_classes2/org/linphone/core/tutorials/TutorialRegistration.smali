.class public Lorg/linphone/core/tutorials/TutorialRegistration;
.super Ljava/lang/Object;
.source "TutorialRegistration.java"

# interfaces
.implements Lorg/linphone/core/LinphoneCoreListener;


# instance fields
.field private TutorialNotifier:Lorg/linphone/core/tutorials/TutorialNotifier;

.field private running:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lorg/linphone/core/tutorials/TutorialNotifier;

    invoke-direct {v0}, Lorg/linphone/core/tutorials/TutorialNotifier;-><init>()V

    iput-object v0, p0, Lorg/linphone/core/tutorials/TutorialRegistration;->TutorialNotifier:Lorg/linphone/core/tutorials/TutorialNotifier;

    .line 74
    return-void
.end method

.method public constructor <init>(Lorg/linphone/core/tutorials/TutorialNotifier;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/linphone/core/tutorials/TutorialRegistration;->TutorialNotifier:Lorg/linphone/core/tutorials/TutorialNotifier;

    .line 70
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 103
    array-length v0, p0

    if-eq v0, v1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad number of arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    new-instance v0, Lorg/linphone/core/tutorials/TutorialRegistration;

    invoke-direct {v0}, Lorg/linphone/core/tutorials/TutorialRegistration;-><init>()V

    .line 111
    const/4 v1, 0x1

    :try_start_0
    aget-object v1, p0, v1

    .line 113
    const/4 v2, 0x2

    aget-object v2, p0, v2

    .line 114
    invoke-virtual {v0, v1, v2}, Lorg/linphone/core/tutorials/TutorialRegistration;->launchTutorial(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sleep(I)V
    .locals 2

    .prologue
    .line 189
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    const-string/jumbo v0, "Interrupted!\nAborting"

    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialRegistration;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private write(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/linphone/core/tutorials/TutorialRegistration;->TutorialNotifier:Lorg/linphone/core/tutorials/TutorialNotifier;

    invoke-virtual {v0, p1}, Lorg/linphone/core/tutorials/TutorialNotifier;->notify(Ljava/lang/String;)V

    .line 203
    return-void
.end method


# virtual methods
.method public authInfoRequested(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public authenticationRequested(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneAuthInfo;Lorg/linphone/core/LinphoneCore$AuthMethod;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public byeReceived(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public callEncryptionChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public callState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCall$State;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public callStatsUpdated(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallStats;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public configuringStatus(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$RemoteProvisioningState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public displayMessage(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public displayStatus(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public displayWarning(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public dtmfReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;I)V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public ecCalibrationStatus(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public fileTransferProgressIndication(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;I)V
    .locals 0

    .prologue
    .line 269
    return-void
.end method

.method public fileTransferRecv(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;[BI)V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public fileTransferSend(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;Ljava/nio/ByteBuffer;I)I
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public friendListCreated(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriendList;)V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public friendListRemoved(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriendList;)V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public globalState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$GlobalState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public infoReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneInfoMessage;)V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public isComposingReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatRoom;)V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public launchTutorial(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-static {}, Lorg/linphone/core/LinphoneCoreFactory;->instance()Lorg/linphone/core/LinphoneCoreFactory;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p0, v1}, Lorg/linphone/core/LinphoneCoreFactory;->createLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/Object;)Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    .line 133
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/linphone/core/LinphoneCoreFactory;->createLinphoneAddress(Ljava/lang/String;)Lorg/linphone/core/LinphoneAddress;

    move-result-object v2

    .line 134
    invoke-interface {v2}, Lorg/linphone/core/LinphoneAddress;->getUserName()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-interface {v2}, Lorg/linphone/core/LinphoneAddress;->getDomain()Ljava/lang/String;

    move-result-object v2

    .line 138
    if-eqz p2, :cond_0

    .line 140
    const/4 v4, 0x0

    invoke-virtual {v0, v3, p2, v4, v2}, Lorg/linphone/core/LinphoneCoreFactory;->createAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/linphone/core/LinphoneAuthInfo;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/linphone/core/LinphoneCore;->addAuthInfo(Lorg/linphone/core/LinphoneAuthInfo;)V

    .line 144
    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, p1, v2, v0, v3}, Lorg/linphone/core/LinphoneCore;->createProxyConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object v0

    .line 145
    const/16 v2, 0x7d0

    invoke-interface {v0, v2}, Lorg/linphone/core/LinphoneProxyConfig;->setExpires(I)V

    .line 146
    invoke-interface {v1, v0}, Lorg/linphone/core/LinphoneCore;->addProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;)V

    .line 147
    invoke-interface {v1, v0}, Lorg/linphone/core/LinphoneCore;->setDefaultProxyConfig(Lorg/linphone/core/LinphoneProxyConfig;)V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/linphone/core/tutorials/TutorialRegistration;->running:Z

    .line 153
    :goto_0
    iget-boolean v0, p0, Lorg/linphone/core/tutorials/TutorialRegistration;->running:Z

    if-eqz v0, :cond_1

    .line 154
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->iterate()V

    .line 155
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialRegistration;->sleep(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    const-string/jumbo v2, "Shutting down linphone..."

    invoke-direct {p0, v2}, Lorg/linphone/core/tutorials/TutorialRegistration;->write(Ljava/lang/String;)V

    .line 183
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->destroy()V

    throw v0

    .line 160
    :cond_1
    :try_start_1
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/linphone/core/LinphoneProxyConfig;->edit()Lorg/linphone/core/LinphoneProxyConfig;

    .line 161
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/linphone/core/LinphoneProxyConfig;->enableRegister(Z)Lorg/linphone/core/LinphoneProxyConfig;

    .line 162
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/linphone/core/LinphoneProxyConfig;->done()V

    .line 163
    :goto_1
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/linphone/core/LinphoneProxyConfig;->getState()Lorg/linphone/core/LinphoneCore$RegistrationState;

    move-result-object v0

    sget-object v2, Lorg/linphone/core/LinphoneCore$RegistrationState;->RegistrationCleared:Lorg/linphone/core/LinphoneCore$RegistrationState;

    if-eq v0, v2, :cond_2

    .line 164
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->iterate()V

    .line 165
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialRegistration;->sleep(I)V

    goto :goto_1

    .line 169
    :cond_2
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/linphone/core/LinphoneProxyConfig;->edit()Lorg/linphone/core/LinphoneProxyConfig;

    .line 170
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lorg/linphone/core/LinphoneProxyConfig;->enableRegister(Z)Lorg/linphone/core/LinphoneProxyConfig;

    .line 171
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/linphone/core/LinphoneProxyConfig;->done()V

    .line 173
    :goto_2
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/linphone/core/LinphoneProxyConfig;->getState()Lorg/linphone/core/LinphoneCore$RegistrationState;

    move-result-object v0

    sget-object v2, Lorg/linphone/core/LinphoneCore$RegistrationState;->RegistrationOk:Lorg/linphone/core/LinphoneCore$RegistrationState;

    if-eq v0, v2, :cond_3

    .line 174
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->getDefaultProxyConfig()Lorg/linphone/core/LinphoneProxyConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/linphone/core/LinphoneProxyConfig;->getState()Lorg/linphone/core/LinphoneCore$RegistrationState;

    move-result-object v0

    sget-object v2, Lorg/linphone/core/LinphoneCore$RegistrationState;->RegistrationFailed:Lorg/linphone/core/LinphoneCore$RegistrationState;

    if-eq v0, v2, :cond_3

    .line 175
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->iterate()V

    .line 176
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialRegistration;->sleep(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 181
    :cond_3
    const-string/jumbo v0, "Shutting down linphone..."

    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialRegistration;->write(Ljava/lang/String;)V

    .line 183
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->destroy()V

    .line 185
    return-void
.end method

.method public messageReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatRoom;Lorg/linphone/core/LinphoneChatMessage;)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public messageReceivedUnableToDecrypted(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatRoom;Lorg/linphone/core/LinphoneChatMessage;)V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public networkReachableChanged(Lorg/linphone/core/LinphoneCore;Z)V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method public newSubscriptionRequest(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriend;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public notifyPresenceReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriend;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public notifyReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneAddress;[B)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public notifyReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneEvent;Ljava/lang/String;Lorg/linphone/core/LinphoneContent;)V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public publishStateChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneEvent;Lorg/linphone/core/PublishState;)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public registrationState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneProxyConfig;Lorg/linphone/core/LinphoneCore$RegistrationState;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/linphone/core/LinphoneProxyConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialRegistration;->write(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public show(Lorg/linphone/core/LinphoneCore;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public stopMainLoop()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/linphone/core/tutorials/TutorialRegistration;->running:Z

    .line 198
    return-void
.end method

.method public subscriptionStateChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneEvent;Lorg/linphone/core/SubscriptionState;)V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public transferState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCall$State;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method public uploadProgressIndication(Lorg/linphone/core/LinphoneCore;II)V
    .locals 0

    .prologue
    .line 289
    return-void
.end method

.method public uploadStateChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 296
    return-void
.end method
