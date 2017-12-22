.class public Lorg/linphone/core/LinphoneCallParamsImpl;
.super Ljava/lang/Object;
.source "LinphoneCallParamsImpl.java"

# interfaces
.implements Lorg/linphone/core/LinphoneCallParams;


# instance fields
.field protected final nativePtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    .line 30
    return-void
.end method

.method private native addCustomHeader(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native addCustomSdpAttribute(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native addCustomSdpMediaAttribute(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native audioBandwidth(JI)V
.end method

.method private native audioMulticastEnabled(J)Z
.end method

.method private native clearCustomSdpAttributes(J)V
.end method

.method private native clearCustomSdpMediaAttributes(JI)V
.end method

.method private native destroy(J)V
.end method

.method private native enableAudioMulticast(JZ)V
.end method

.method private native enableLowBandwidth(JZ)V
.end method

.method private native enableRealTimeText(JZ)V
.end method

.method private native enableVideo(JZ)V
.end method

.method private native enableVideoMulticast(JZ)V
.end method

.method private native getAudioDirection(J)I
.end method

.method private native getCustomHeader(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native getCustomSdpAttribute(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native getCustomSdpMediaAttribute(JILjava/lang/String;)Ljava/lang/String;
.end method

.method private native getMediaEncryption(J)I
.end method

.method private native getPrivacy(J)I
.end method

.method private native getReceivedVideoSize(J)[I
.end method

.method private native getSentVideoSize(J)[I
.end method

.method private native getSessionName(J)Ljava/lang/String;
.end method

.method private native getUsedAudioCodec(J)J
.end method

.method private native getUsedVideoCodec(J)J
.end method

.method private native getVideoDirection(J)I
.end method

.method private native getVideoEnabled(J)Z
.end method

.method private native isLowBandwidthEnabled(J)Z
.end method

.method private native localConferenceMode(J)Z
.end method

.method private native realTimeTextEnabled(J)Z
.end method

.method private native setAudioDirection(JI)V
.end method

.method private native setMediaEncryption(JI)V
.end method

.method private native setPrivacy(JI)V
.end method

.method private native setRecordFile(JLjava/lang/String;)V
.end method

.method private native setSessionName(JLjava/lang/String;)V
.end method

.method private native setVideoDirection(JI)V
.end method

.method private native videoMulticastEnabled(J)Z
.end method


# virtual methods
.method public addCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCallParamsImpl;->addCustomHeader(JLjava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public addCustomSdpAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/linphone/core/LinphoneCallParamsImpl;->addCustomSdpAttribute(JLjava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public addCustomSdpMediaAttribute(Lorg/linphone/core/LinphoneCore$StreamType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 121
    iget-wide v2, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    iget v4, p1, Lorg/linphone/core/LinphoneCore$StreamType;->mValue:I

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/linphone/core/LinphoneCallParamsImpl;->addCustomSdpMediaAttribute(JILjava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public audioMulticastEnabled()Z
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->audioMulticastEnabled(J)Z

    move-result v0

    return v0
.end method

.method public clearCustomSdpAttributes()V
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->clearCustomSdpAttributes(J)V

    .line 140
    return-void
.end method

.method public clearCustomSdpMediaAttributes(Lorg/linphone/core/LinphoneCore$StreamType;)V
    .locals 3

    .prologue
    .line 145
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    iget v2, p1, Lorg/linphone/core/LinphoneCore$StreamType;->mValue:I

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/LinphoneCallParamsImpl;->clearCustomSdpMediaAttributes(JI)V

    .line 146
    return-void
.end method

.method public enableAudioMulticast(Z)V
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->enableAudioMulticast(JZ)V

    .line 195
    return-void
.end method

.method public enableLowBandwidth(Z)V
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->enableLowBandwidth(JZ)V

    .line 88
    return-void
.end method

.method public enableRealTimeText(Z)V
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->enableRealTimeText(JZ)V

    .line 217
    return-void
.end method

.method public enableVideoMulticast(Z)V
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->enableVideoMulticast(JZ)V

    .line 206
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->destroy(J)V

    .line 54
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 55
    return-void
.end method

.method public getAudioDirection()Lorg/linphone/core/LinphoneCore$MediaDirection;
    .locals 2

    .prologue
    .line 228
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getAudioDirection(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$MediaDirection;->fromInt(I)Lorg/linphone/core/LinphoneCore$MediaDirection;

    move-result-object v0

    return-object v0
.end method

.method public getCustomHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getCustomHeader(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomSdpAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getCustomSdpAttribute(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomSdpMediaAttribute(Lorg/linphone/core/LinphoneCore$StreamType;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    iget v2, p1, Lorg/linphone/core/LinphoneCore$StreamType;->mValue:I

    invoke-direct {p0, v0, v1, v2, p2}, Lorg/linphone/core/LinphoneCallParamsImpl;->getCustomSdpMediaAttribute(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaEncryption()Lorg/linphone/core/LinphoneCore$MediaEncryption;
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getMediaEncryption(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$MediaEncryption;->fromInt(I)Lorg/linphone/core/LinphoneCore$MediaEncryption;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacy()I
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getPrivacy(J)I

    move-result v0

    return v0
.end method

.method public getReceivedVideoSize()Lorg/linphone/core/VideoSize;
    .locals 3

    .prologue
    .line 185
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getReceivedVideoSize(J)[I

    move-result-object v0

    .line 186
    new-instance v1, Lorg/linphone/core/VideoSize;

    invoke-direct {v1}, Lorg/linphone/core/VideoSize;-><init>()V

    .line 187
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Lorg/linphone/core/VideoSize;->width:I

    .line 188
    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, v1, Lorg/linphone/core/VideoSize;->height:I

    .line 189
    return-object v1
.end method

.method public getSentVideoSize()Lorg/linphone/core/VideoSize;
    .locals 3

    .prologue
    .line 175
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getSentVideoSize(J)[I

    move-result-object v0

    .line 176
    new-instance v1, Lorg/linphone/core/VideoSize;

    invoke-direct {v1}, Lorg/linphone/core/VideoSize;-><init>()V

    .line 177
    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Lorg/linphone/core/VideoSize;->width:I

    .line 178
    const/4 v2, 0x1

    aget v0, v0, v2

    iput v0, v1, Lorg/linphone/core/VideoSize;->height:I

    .line 179
    return-object v1
.end method

.method public getSessionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getSessionName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsedAudioCodec()Lorg/linphone/core/PayloadType;
    .locals 4

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getUsedAudioCodec(J)J

    move-result-wide v2

    .line 71
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/linphone/core/PayloadTypeImpl;

    invoke-direct {v0, v2, v3}, Lorg/linphone/core/PayloadTypeImpl;-><init>(J)V

    goto :goto_0
.end method

.method public getUsedVideoCodec()Lorg/linphone/core/PayloadType;
    .locals 4

    .prologue
    .line 76
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getUsedVideoCodec(J)J

    move-result-wide v2

    .line 77
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/linphone/core/PayloadTypeImpl;

    invoke-direct {v0, v2, v3}, Lorg/linphone/core/PayloadTypeImpl;-><init>(J)V

    goto :goto_0
.end method

.method public getVideoDirection()Lorg/linphone/core/LinphoneCore$MediaDirection;
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getVideoDirection(J)I

    move-result v0

    invoke-static {v0}, Lorg/linphone/core/LinphoneCore$MediaDirection;->fromInt(I)Lorg/linphone/core/LinphoneCore$MediaDirection;

    move-result-object v0

    return-object v0
.end method

.method public getVideoEnabled()Z
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->getVideoEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isLowBandwidthEnabled()Z
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->isLowBandwidthEnabled(J)Z

    move-result v0

    return v0
.end method

.method public localConferenceMode()Z
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->localConferenceMode(J)Z

    move-result v0

    return v0
.end method

.method public realTimeTextEnabled()Z
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->realTimeTextEnabled(J)Z

    move-result v0

    return v0
.end method

.method public setAudioBandwidth(I)V
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->audioBandwidth(JI)V

    .line 59
    return-void
.end method

.method public setAudioDirection(Lorg/linphone/core/LinphoneCore$MediaDirection;)V
    .locals 3

    .prologue
    .line 240
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    iget v2, p1, Lorg/linphone/core/LinphoneCore$MediaDirection;->mValue:I

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/LinphoneCallParamsImpl;->setAudioDirection(JI)V

    .line 241
    return-void
.end method

.method public setMediaEnctyption(Lorg/linphone/core/LinphoneCore$MediaEncryption;)V
    .locals 3

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    iget v2, p1, Lorg/linphone/core/LinphoneCore$MediaEncryption;->mValue:I

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/LinphoneCallParamsImpl;->setMediaEncryption(JI)V

    .line 67
    return-void
.end method

.method public setPrivacy(I)V
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->setPrivacy(JI)V

    .line 152
    return-void
.end method

.method public setRecordFile(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->setRecordFile(JLjava/lang/String;)V

    .line 98
    return-void
.end method

.method public setSessionName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->setSessionName(JLjava/lang/String;)V

    .line 164
    return-void
.end method

.method public setVideoDirection(Lorg/linphone/core/LinphoneCore$MediaDirection;)V
    .locals 3

    .prologue
    .line 246
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    iget v2, p1, Lorg/linphone/core/LinphoneCore$MediaDirection;->mValue:I

    invoke-direct {p0, v0, v1, v2}, Lorg/linphone/core/LinphoneCallParamsImpl;->setVideoDirection(JI)V

    .line 247
    return-void
.end method

.method public setVideoEnabled(Z)V
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1, p1}, Lorg/linphone/core/LinphoneCallParamsImpl;->enableVideo(JZ)V

    .line 49
    return-void
.end method

.method public videoMulticastEnabled()Z
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lorg/linphone/core/LinphoneCallParamsImpl;->nativePtr:J

    invoke-direct {p0, v0, v1}, Lorg/linphone/core/LinphoneCallParamsImpl;->videoMulticastEnabled(J)Z

    move-result v0

    return v0
.end method
