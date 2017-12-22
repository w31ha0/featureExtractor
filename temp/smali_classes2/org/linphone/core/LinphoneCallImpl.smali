.class Lorg/linphone/core/LinphoneCallImpl;
.super Ljava/lang/Object;
.source "LinphoneCallImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneCall;


# instance fields
.field protected final nativePtr:J

.field ownPtr:Z

.field userData:Ljava/lang/Object;


# direct methods
.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/linphone/core/LinphoneCallImpl;->ownPtr:Z

    .line 53
    iput-wide p1, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    .line 54
    return-void
.end method

.method private native cameraEnabled(J)Z
.end method

.method private native enableCamera(JZ)V
.end method

.method private native enableEchoCancellation(JZ)V
.end method

.method private native enableEchoLimiter(JZ)V
.end method

.method private native finalize(J)V
.end method

.method private native getAuthenticationToken(J)Ljava/lang/String;
.end method

.method private native getAverageQuality(J)F
.end method

.method private native getCallLog(J)J
.end method

.method private native getChatRoom(J)Ljava/lang/Object;
.end method

.method private native getCurrentParamsCopy(J)J
.end method

.method private native getCurrentQuality(J)F
.end method

.method private native getDiversionAddress(J)J
.end method

.method private native getDuration(J)I
.end method

.method private native getErrorInfo(J)J
.end method

.method private native getPlayVolume(J)F
.end method

.method private native getPlayer(J)J
.end method

.method private native getRemoteAddress(J)J
.end method

.method private native getRemoteContact(J)Ljava/lang/String;
.end method

.method private native getRemoteParams(J)J
.end method

.method private native getRemoteUserAgent(J)Ljava/lang/String;
.end method

.method private native getReplacedCall(J)Ljava/lang/Object;
.end method

.method private native getState(J)I
.end method

.method private native getStats(JI)Ljava/lang/Object;
.end method

.method private native getTransferState(J)I
.end method

.method private native getTransferTargetCall(J)Ljava/lang/Object;
.end method

.method private native getTransfererCall(J)Ljava/lang/Object;
.end method

.method private native isAuthenticationTokenVerified(J)Z
.end method

.method private native isEchoCancellationEnabled(J)Z
.end method

.method private native isEchoLimiterEnabled(J)Z
.end method

.method private native isIncoming(J)Z
.end method

.method private native mediaInProgress(J)Z
.end method

.method private native sendInfoMessage(JJ)I
.end method

.method private native setAuthenticationTokenVerified(JZ)V
.end method

.method private native setListener(JLorg/linphone/core/LinphoneCall$LinphoneCallListener;)V
.end method

.method private native startRecording(J)V
.end method

.method private native stopRecording(J)V
.end method

.method private native takeSnapshot(JLjava/lang/String;)V
.end method

.method private native zoomVideo(JFFF)V
.end method


# virtual methods
.method public cameraEnabled()Z
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->cameraEnabled(J)Z

    move-result v0

    return v0
.end method

.method public enableCamera(Z)V
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallImpl;->enableCamera(JZ)V

    .line 99
    return-void
.end method

.method public enableEchoCancellation(Z)V
    .locals 2

    .prologue
    .line 119
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallImpl;->enableEchoCancellation(JZ)V

    .line 121
    return-void
.end method

.method public enableEchoLimiter(Z)V
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallImpl;->enableEchoLimiter(JZ)V

    .line 127
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 106
    if-ne p0, p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 108
    :cond_2
    instance-of v2, p1, Lorg/linphone/core/LinphoneCallImpl;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    .line 109
    :cond_3
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneCallImpl;

    iget-wide v4, p1, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->finalize(J)V

    .line 57
    return-void
.end method

.method public getAudioStats()Lorg/linphone/core/LinphoneCallStats;
    .locals 3

    .prologue
    .line 68
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/LinphoneCallImpl;->getStats(JI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCallStats;

    return-object v0
.end method

.method public getAuthenticationToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getAuthenticationToken(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAverageQuality()F
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getAverageQuality(J)F

    move-result v0

    return v0
.end method

.method public getCallLog()Lorg/linphone/core/LinphoneCallLog;
    .locals 4

    .prologue
    .line 59
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getCallLog(J)J

    move-result-wide v2

    .line 60
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Lorg/linphone/core/LinphoneCallLogImpl;

    invoke-direct {v0, v2, v3}, Lorg/linphone/core/LinphoneCallLogImpl;-><init>(J)V

    .line 63
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChatRoom()Lorg/linphone/core/LinphoneChatRoom;
    .locals 2

    .prologue
    .line 258
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getChatRoom(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneChatRoom;

    check-cast v0, Lorg/linphone/core/LinphoneChatRoom;

    return-object v0
.end method

.method public getConference()Lorg/linphone/core/LinphoneConference;
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-virtual {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getConference(J)Lorg/linphone/core/LinphoneConference;

    move-result-object v0

    return-object v0
.end method

.method public native getConference(J)Lorg/linphone/core/LinphoneConference;
.end method

.method public getCurrentParamsCopy()Lorg/linphone/core/LinphoneCallParams;
    .locals 4

    .prologue
    .line 88
    new-instance v0, Lorg/linphone/core/LinphoneCallParamsImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneCallImpl;->getCurrentParamsCopy(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/linphone/core/LinphoneCallParamsImpl;-><init>(J)V

    return-object v0
.end method

.method public getCurrentQuality()F
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getCurrentQuality(J)F

    move-result v0

    return v0
.end method

.method public getDirection()Lorg/linphone/core/CallDirection;
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->isIncoming(J)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/linphone/core/CallDirection;->Incoming:Lorg/linphone/core/CallDirection;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/linphone/core/CallDirection;->Outgoing:Lorg/linphone/core/CallDirection;

    goto :goto_0
.end method

.method public getDiversionAddress()Lorg/linphone/core/LinphoneAddress;
    .locals 4

    .prologue
    .line 267
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getDiversionAddress(J)J

    move-result-wide v2

    .line 268
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl;

    sget-object v1, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v0, v2, v3, v1}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    .line 271
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getDuration(J)I

    move-result v0

    return v0
.end method

.method public getErrorInfo()Lorg/linphone/core/ErrorInfo;
    .locals 4

    .prologue
    .line 238
    new-instance v0, Lorg/linphone/core/ErrorInfoImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneCallImpl;->getErrorInfo(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/linphone/core/ErrorInfoImpl;-><init>(J)V

    return-object v0
.end method

.method public getPlayVolume()F
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getPlayVolume(J)F

    move-result v0

    return v0
.end method

.method public getPlayer()Lorg/linphone/core/LinphonePlayer;
    .locals 4

    .prologue
    .line 252
    new-instance v0, Lorg/linphone/core/LinphonePlayerImpl;

    iget-wide v2, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v2, v3}, Lorg/linphone/core/LinphoneCallImpl;->getPlayer(J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/linphone/core/LinphonePlayerImpl;-><init>(J)V

    return-object v0
.end method

.method public getReason()Lorg/linphone/core/Reason;
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteAddress()Lorg/linphone/core/LinphoneAddress;
    .locals 4

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getRemoteAddress(J)J

    move-result-wide v2

    .line 78
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lorg/linphone/core/LinphoneAddressImpl;

    sget-object v1, Lorg/linphone/core/LinphoneAddressImpl$WrapMode;->FromConst:Lorg/linphone/core/LinphoneAddressImpl$WrapMode;

    invoke-direct {v0, v2, v3, v1}, Lorg/linphone/core/LinphoneAddressImpl;-><init>(JLorg/linphone/core/LinphoneAddressImpl$WrapMode;)V

    .line 81
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRemoteContact()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getRemoteContact(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteParams()Lorg/linphone/core/LinphoneCallParams;
    .locals 4

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getRemoteParams(J)J

    move-result-wide v2

    .line 92
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/linphone/core/LinphoneCallParamsImpl;

    invoke-direct {v0, v2, v3}, Lorg/linphone/core/LinphoneCallParamsImpl;-><init>(J)V

    goto :goto_0
.end method

.method public getRemoteUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getRemoteUserAgent(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReplacedCall()Lorg/linphone/core/LinphoneCall;
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getReplacedCall(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCall;

    return-object v0
.end method

.method public getState()Lorg/linphone/core/LinphoneCall$State;
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getState(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCall$State;->fromInt(I)Lorg/linphone/core/LinphoneCall$State;

    move-result-object v0

    return-object v0
.end method

.method public getTransferState()Lorg/linphone/core/LinphoneCall$State;
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getTransferState(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCall$State;->fromInt(I)Lorg/linphone/core/LinphoneCall$State;

    move-result-object v0

    return-object v0
.end method

.method public getTransferTargetCall()Lorg/linphone/core/LinphoneCall;
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getTransferTargetCall(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCall;

    return-object v0
.end method

.method public getTransfererCall()Lorg/linphone/core/LinphoneCall;
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->getTransfererCall(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCall;

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/linphone/core/LinphoneCallImpl;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public getVideoStats()Lorg/linphone/core/LinphoneCallStats;
    .locals 3

    .prologue
    .line 71
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/LinphoneCallImpl;->getStats(JI)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCallStats;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 114
    .line 115
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    iget-wide v2, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    .line 116
    return v0
.end method

.method public isAuthenticationTokenVerified()Z
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->isAuthenticationTokenVerified(J)Z

    move-result v0

    return v0
.end method

.method public isEchoCancellationEnabled()Z
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->isEchoCancellationEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isEchoLimiterEnabled()Z
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->isEchoLimiterEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isInConference()Z
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/linphone/core/LinphoneCallImpl;->getConference()Lorg/linphone/core/LinphoneConference;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mediaInProgress()Z
    .locals 2

    .prologue
    .line 168
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->mediaInProgress(J)Z

    move-result v0

    return v0
.end method

.method public sendInfoMessage(Lorg/linphone/core/LinphoneInfoMessage;)V
    .locals 4

    .prologue
    .line 218
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    check-cast p1, Lorg/linphone/core/LinphoneInfoMessageImpl;

    iget-wide v2, p1, Lorg/linphone/core/LinphoneInfoMessageImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/linphone/core/LinphoneCallImpl;->sendInfoMessage(JJ)I

    .line 219
    return-void
.end method

.method public setAuthenticationTokenVerified(Z)V
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallImpl;->setAuthenticationTokenVerified(JZ)V

    .line 158
    return-void
.end method

.method public setListener(Lorg/linphone/core/LinphoneCall$LinphoneCallListener;)V
    .locals 2

    .prologue
    .line 263
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallImpl;->setListener(JLorg/linphone/core/LinphoneCall$LinphoneCallListener;)V

    .line 264
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lorg/linphone/core/LinphoneCallImpl;->userData:Ljava/lang/Object;

    .line 243
    return-void
.end method

.method public startRecording()V
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->startRecording(J)V

    .line 204
    return-void
.end method

.method public stopRecording()V
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallImpl;->stopRecording(J)V

    .line 209
    return-void
.end method

.method public takeSnapshot(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallImpl;->takeSnapshot(JLjava/lang/String;)V

    .line 193
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zoomVideo(FFF)V
    .locals 7

    .prologue
    .line 197
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCallImpl;->nativePtr:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LinphoneCallImpl;->zoomVideo(JFFF)V

    .line 198
    return-void
.end method
