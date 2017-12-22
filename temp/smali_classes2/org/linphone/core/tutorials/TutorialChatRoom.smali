.class public Lorg/linphone/core/tutorials/TutorialChatRoom;
.super Ljava/lang/Object;
.source "TutorialChatRoom.java"

# interfaces
.implements Lorg/linphone/core/LinphoneChatMessage$StateListener;
.implements Lorg/linphone/core/LinphoneCoreListener;


# instance fields
.field private TutorialNotifier:Lorg/linphone/core/tutorials/TutorialNotifier;

.field private running:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lorg/linphone/core/tutorials/TutorialNotifier;

    invoke-direct {v0}, Lorg/linphone/core/tutorials/TutorialNotifier;-><init>()V

    iput-object v0, p0, Lorg/linphone/core/tutorials/TutorialChatRoom;->TutorialNotifier:Lorg/linphone/core/tutorials/TutorialNotifier;

    .line 75
    return-void
.end method

.method public constructor <init>(Lorg/linphone/core/tutorials/TutorialNotifier;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/linphone/core/tutorials/TutorialChatRoom;->TutorialNotifier:Lorg/linphone/core/tutorials/TutorialNotifier;

    .line 71
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 102
    array-length v0, p0

    if-eq v0, v1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad number of arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    new-instance v0, Lorg/linphone/core/tutorials/TutorialChatRoom;

    invoke-direct {v0}, Lorg/linphone/core/tutorials/TutorialChatRoom;-><init>()V

    .line 109
    const/4 v1, 0x1

    :try_start_0
    aget-object v1, p0, v1

    .line 110
    invoke-virtual {v0, v1}, Lorg/linphone/core/tutorials/TutorialChatRoom;->launchTutorial(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private write(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/linphone/core/tutorials/TutorialChatRoom;->TutorialNotifier:Lorg/linphone/core/tutorials/TutorialNotifier;

    invoke-virtual {v0, p1}, Lorg/linphone/core/tutorials/TutorialNotifier;->notify(Ljava/lang/String;)V

    .line 160
    return-void
.end method


# virtual methods
.method public authInfoRequested(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public authenticationRequested(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneAuthInfo;Lorg/linphone/core/LinphoneCore$AuthMethod;)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public byeReceived(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public callEncryptionChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public callState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCall$State;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public callStatsUpdated(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCallStats;)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public configuringStatus(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$RemoteProvisioningState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public displayMessage(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public displayStatus(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public displayWarning(Lorg/linphone/core/LinphoneCore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public dtmfReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;I)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public ecCalibrationStatus(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$EcCalibratorStatus;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public fileTransferProgressIndication(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;I)V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public fileTransferRecv(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;[BI)V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public fileTransferSend(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;Ljava/nio/ByteBuffer;I)I
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public friendListCreated(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriendList;)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public friendListRemoved(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriendList;)V
    .locals 0

    .prologue
    .line 273
    return-void
.end method

.method public globalState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$GlobalState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public infoReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneInfoMessage;)V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public isComposingReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatRoom;)V
    .locals 1

    .prologue
    .line 215
    invoke-interface {p2}, Lorg/linphone/core/LinphoneChatRoom;->isRemoteComposing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string/jumbo v0, "Remote is writing a message"

    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialChatRoom;->write(Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    const-string/jumbo v0, "Remote has stop writing"

    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialChatRoom;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public launchTutorial(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 122
    invoke-static {}, Lorg/linphone/core/LinphoneCoreFactory;->instance()Lorg/linphone/core/LinphoneCoreFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/linphone/core/LinphoneCoreFactory;->createLinphoneCore(Lorg/linphone/core/LinphoneCoreListener;Ljava/lang/Object;)Lorg/linphone/core/LinphoneCore;

    move-result-object v1

    .line 126
    :try_start_0
    invoke-interface {v1, p1}, Lorg/linphone/core/LinphoneCore;->getOrCreateChatRoom(Ljava/lang/String;)Lorg/linphone/core/LinphoneChatRoom;

    move-result-object v0

    .line 129
    const-string/jumbo v2, "Hello world"

    invoke-interface {v0, v2}, Lorg/linphone/core/LinphoneChatRoom;->createLinphoneChatMessage(Ljava/lang/String;)Lorg/linphone/core/LinphoneChatMessage;

    move-result-object v2

    .line 130
    invoke-interface {v0, v2, p0}, Lorg/linphone/core/LinphoneChatRoom;->sendMessage(Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneChatMessage$StateListener;)V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/linphone/core/tutorials/TutorialChatRoom;->running:Z

    .line 134
    :goto_0
    iget-boolean v0, p0, Lorg/linphone/core/tutorials/TutorialChatRoom;->running:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->iterate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    const-wide/16 v2, 0x32

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    :try_start_2
    const-string/jumbo v0, "Interrupted!\nAborting"

    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialChatRoom;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    const-string/jumbo v0, "Shutting down..."

    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialChatRoom;->write(Ljava/lang/String;)V

    .line 147
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->destroy()V

    .line 148
    const-string/jumbo v0, "Exited"

    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialChatRoom;->write(Ljava/lang/String;)V

    .line 150
    :goto_1
    return-void

    .line 145
    :cond_0
    const-string/jumbo v0, "Shutting down..."

    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialChatRoom;->write(Ljava/lang/String;)V

    .line 147
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->destroy()V

    .line 148
    const-string/jumbo v0, "Exited"

    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialChatRoom;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :catchall_0
    move-exception v0

    const-string/jumbo v2, "Shutting down..."

    invoke-direct {p0, v2}, Lorg/linphone/core/tutorials/TutorialChatRoom;->write(Ljava/lang/String;)V

    .line 147
    invoke-interface {v1}, Lorg/linphone/core/LinphoneCore;->destroy()V

    .line 148
    const-string/jumbo v1, "Exited"

    invoke-direct {p0, v1}, Lorg/linphone/core/tutorials/TutorialChatRoom;->write(Ljava/lang/String;)V

    throw v0
.end method

.method public messageReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatRoom;Lorg/linphone/core/LinphoneChatMessage;)V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Message ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p3}, Lorg/linphone/core/LinphoneChatMessage;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] received from ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p3}, Lorg/linphone/core/LinphoneChatMessage;->getFrom()Lorg/linphone/core/LinphoneAddress;

    move-result-object v1

    invoke-interface {v1}, Lorg/linphone/core/LinphoneAddress;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialChatRoom;->write(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public messageReceivedUnableToDecrypted(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneChatRoom;Lorg/linphone/core/LinphoneChatMessage;)V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public networkReachableChanged(Lorg/linphone/core/LinphoneCore;Z)V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public newSubscriptionRequest(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriend;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public notifyPresenceReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneFriend;)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public notifyReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneAddress;[B)V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public notifyReceived(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneEvent;Ljava/lang/String;Lorg/linphone/core/LinphoneContent;)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public onLinphoneChatMessageStateChanged(Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneChatMessage$State;)V
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Sent message ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lorg/linphone/core/LinphoneChatMessage;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] new state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/linphone/core/LinphoneChatMessage$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/linphone/core/tutorials/TutorialChatRoom;->write(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public publishStateChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneEvent;Lorg/linphone/core/PublishState;)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public registrationState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneProxyConfig;Lorg/linphone/core/LinphoneCore$RegistrationState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public show(Lorg/linphone/core/LinphoneCore;)V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public stopMainLoop()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/linphone/core/tutorials/TutorialChatRoom;->running:Z

    .line 155
    return-void
.end method

.method public subscriptionStateChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneEvent;Lorg/linphone/core/SubscriptionState;)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public transferState(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCall;Lorg/linphone/core/LinphoneCall$State;)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public uploadProgressIndication(Lorg/linphone/core/LinphoneCore;II)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public uploadStateChanged(Lorg/linphone/core/LinphoneCore;Lorg/linphone/core/LinphoneCore$LogCollectionUploadState;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 260
    return-void
.end method
