.class public interface abstract Lorg/linphone/core/LinphoneCall;
.super Ljava/lang/Object;
.source "LinphoneCall.java"


# virtual methods
.method public abstract cameraEnabled()Z
.end method

.method public abstract enableCamera(Z)V
.end method

.method public abstract enableEchoCancellation(Z)V
.end method

.method public abstract enableEchoLimiter(Z)V
.end method

.method public abstract getAudioStats()Lorg/linphone/core/LinphoneCallStats;
.end method

.method public abstract getAuthenticationToken()Ljava/lang/String;
.end method

.method public abstract getAverageQuality()F
.end method

.method public abstract getCallLog()Lorg/linphone/core/LinphoneCallLog;
.end method

.method public abstract getChatRoom()Lorg/linphone/core/LinphoneChatRoom;
.end method

.method public abstract getConference()Lorg/linphone/core/LinphoneConference;
.end method

.method public abstract getCurrentParamsCopy()Lorg/linphone/core/LinphoneCallParams;
.end method

.method public abstract getCurrentQuality()F
.end method

.method public abstract getDirection()Lorg/linphone/core/CallDirection;
.end method

.method public abstract getDiversionAddress()Lorg/linphone/core/LinphoneAddress;
.end method

.method public abstract getDuration()I
.end method

.method public abstract getErrorInfo()Lorg/linphone/core/ErrorInfo;
.end method

.method public abstract getPlayVolume()F
.end method

.method public abstract getPlayer()Lorg/linphone/core/LinphonePlayer;
.end method

.method public abstract getReason()Lorg/linphone/core/Reason;
.end method

.method public abstract getRemoteAddress()Lorg/linphone/core/LinphoneAddress;
.end method

.method public abstract getRemoteContact()Ljava/lang/String;
.end method

.method public abstract getRemoteParams()Lorg/linphone/core/LinphoneCallParams;
.end method

.method public abstract getRemoteUserAgent()Ljava/lang/String;
.end method

.method public abstract getReplacedCall()Lorg/linphone/core/LinphoneCall;
.end method

.method public abstract getState()Lorg/linphone/core/LinphoneCall$State;
.end method

.method public abstract getTransferState()Lorg/linphone/core/LinphoneCall$State;
.end method

.method public abstract getTransferTargetCall()Lorg/linphone/core/LinphoneCall;
.end method

.method public abstract getTransfererCall()Lorg/linphone/core/LinphoneCall;
.end method

.method public abstract getUserData()Ljava/lang/Object;
.end method

.method public abstract getVideoStats()Lorg/linphone/core/LinphoneCallStats;
.end method

.method public abstract isAuthenticationTokenVerified()Z
.end method

.method public abstract isEchoCancellationEnabled()Z
.end method

.method public abstract isEchoLimiterEnabled()Z
.end method

.method public abstract isInConference()Z
.end method

.method public abstract mediaInProgress()Z
.end method

.method public abstract sendInfoMessage(Lorg/linphone/core/LinphoneInfoMessage;)V
.end method

.method public abstract setAuthenticationTokenVerified(Z)V
.end method

.method public abstract setListener(Lorg/linphone/core/LinphoneCall$LinphoneCallListener;)V
.end method

.method public abstract setUserData(Ljava/lang/Object;)V
.end method

.method public abstract startRecording()V
.end method

.method public abstract stopRecording()V
.end method

.method public abstract takeSnapshot(Ljava/lang/String;)V
.end method

.method public abstract zoomVideo(FFF)V
.end method
