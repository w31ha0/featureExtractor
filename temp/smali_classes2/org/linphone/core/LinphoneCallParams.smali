.class public interface abstract Lorg/linphone/core/LinphoneCallParams;
.super Ljava/lang/Object;
.source "LinphoneCallParams.java"


# virtual methods
.method public abstract addCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addCustomSdpAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addCustomSdpMediaAttribute(Lorg/linphone/core/LinphoneCore$StreamType;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract audioMulticastEnabled()Z
.end method

.method public abstract clearCustomSdpAttributes()V
.end method

.method public abstract clearCustomSdpMediaAttributes(Lorg/linphone/core/LinphoneCore$StreamType;)V
.end method

.method public abstract enableAudioMulticast(Z)V
.end method

.method public abstract enableLowBandwidth(Z)V
.end method

.method public abstract enableRealTimeText(Z)V
.end method

.method public abstract enableVideoMulticast(Z)V
.end method

.method public abstract getAudioDirection()Lorg/linphone/core/LinphoneCore$MediaDirection;
.end method

.method public abstract getCustomHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCustomSdpAttribute(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getCustomSdpMediaAttribute(Lorg/linphone/core/LinphoneCore$StreamType;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMediaEncryption()Lorg/linphone/core/LinphoneCore$MediaEncryption;
.end method

.method public abstract getPrivacy()I
.end method

.method public abstract getReceivedVideoSize()Lorg/linphone/core/VideoSize;
.end method

.method public abstract getSentVideoSize()Lorg/linphone/core/VideoSize;
.end method

.method public abstract getSessionName()Ljava/lang/String;
.end method

.method public abstract getUsedAudioCodec()Lorg/linphone/core/PayloadType;
.end method

.method public abstract getUsedVideoCodec()Lorg/linphone/core/PayloadType;
.end method

.method public abstract getVideoDirection()Lorg/linphone/core/LinphoneCore$MediaDirection;
.end method

.method public abstract getVideoEnabled()Z
.end method

.method public abstract isLowBandwidthEnabled()Z
.end method

.method public abstract realTimeTextEnabled()Z
.end method

.method public abstract setAudioBandwidth(I)V
.end method

.method public abstract setAudioDirection(Lorg/linphone/core/LinphoneCore$MediaDirection;)V
.end method

.method public abstract setMediaEnctyption(Lorg/linphone/core/LinphoneCore$MediaEncryption;)V
.end method

.method public abstract setPrivacy(I)V
.end method

.method public abstract setRecordFile(Ljava/lang/String;)V
.end method

.method public abstract setSessionName(Ljava/lang/String;)V
.end method

.method public abstract setVideoDirection(Lorg/linphone/core/LinphoneCore$MediaDirection;)V
.end method

.method public abstract setVideoEnabled(Z)V
.end method

.method public abstract videoMulticastEnabled()Z
.end method
