.class public interface abstract Lorg/linphone/core/LinphoneChatMessage$LinphoneChatMessageListener;
.super Ljava/lang/Object;
.source "LinphoneChatMessage.java"


# virtual methods
.method public abstract onLinphoneChatMessageFileTransferProgressChanged(Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;II)V
.end method

.method public abstract onLinphoneChatMessageFileTransferReceived(Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;Lorg/linphone/core/LinphoneBuffer;)V
.end method

.method public abstract onLinphoneChatMessageFileTransferSent(Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneContent;IILorg/linphone/core/LinphoneBuffer;)V
.end method

.method public abstract onLinphoneChatMessageStateChanged(Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneChatMessage$State;)V
.end method
