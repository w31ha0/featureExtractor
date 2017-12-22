.class public interface abstract Lorg/linphone/core/LinphoneChatMessage;
.super Ljava/lang/Object;
.source "LinphoneChatMessage.java"


# virtual methods
.method public abstract addCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract cancelFileTransfer()V
.end method

.method public abstract destroy()V
.end method

.method public abstract downloadFile()I
.end method

.method public abstract getAppData()Ljava/lang/String;
.end method

.method public abstract getCustomHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getErrorInfo()Lorg/linphone/core/ErrorInfo;
.end method

.method public abstract getExternalBodyUrl()Ljava/lang/String;
.end method

.method public abstract getFileTransferInformation()Lorg/linphone/core/LinphoneContent;
.end method

.method public abstract getFrom()Lorg/linphone/core/LinphoneAddress;
.end method

.method public abstract getPeerAddress()Lorg/linphone/core/LinphoneAddress;
.end method

.method public abstract getReason()Lorg/linphone/core/Reason;
.end method

.method public abstract getStatus()Lorg/linphone/core/LinphoneChatMessage$State;
.end method

.method public abstract getStorageId()I
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getTime()J
.end method

.method public abstract getTo()Lorg/linphone/core/LinphoneAddress;
.end method

.method public abstract isOutgoing()Z
.end method

.method public abstract isRead()Z
.end method

.method public abstract isSecured()Z
.end method

.method public abstract putChar(J)V
.end method

.method public abstract setAppData(Ljava/lang/String;)V
.end method

.method public abstract setExternalBodyUrl(Ljava/lang/String;)V
.end method

.method public abstract setFileTransferFilepath(Ljava/lang/String;)V
.end method

.method public abstract setListener(Lorg/linphone/core/LinphoneChatMessage$LinphoneChatMessageListener;)V
.end method

.method public abstract store()V
.end method
