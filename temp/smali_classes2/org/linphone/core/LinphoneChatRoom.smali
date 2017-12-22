.class public interface abstract Lorg/linphone/core/LinphoneChatRoom;
.super Ljava/lang/Object;
.source "LinphoneChatRoom.java"


# virtual methods
.method public abstract compose()V
.end method

.method public abstract createFileTransferMessage(Lorg/linphone/core/LinphoneContent;)Lorg/linphone/core/LinphoneChatMessage;
.end method

.method public abstract createLinphoneChatMessage(Ljava/lang/String;)Lorg/linphone/core/LinphoneChatMessage;
.end method

.method public abstract createLinphoneChatMessage(Ljava/lang/String;Ljava/lang/String;Lorg/linphone/core/LinphoneChatMessage$State;JZZ)Lorg/linphone/core/LinphoneChatMessage;
.end method

.method public abstract deleteHistory()V
.end method

.method public abstract deleteMessage(Lorg/linphone/core/LinphoneChatMessage;)V
.end method

.method public abstract getCall()Lorg/linphone/core/LinphoneCall;
.end method

.method public abstract getChar()J
.end method

.method public abstract getCore()Lorg/linphone/core/LinphoneCore;
.end method

.method public abstract getHistory()[Lorg/linphone/core/LinphoneChatMessage;
.end method

.method public abstract getHistory(I)[Lorg/linphone/core/LinphoneChatMessage;
.end method

.method public abstract getHistoryRange(II)[Lorg/linphone/core/LinphoneChatMessage;
.end method

.method public abstract getHistorySize()I
.end method

.method public abstract getPeerAddress()Lorg/linphone/core/LinphoneAddress;
.end method

.method public abstract getUnreadMessagesCount()I
.end method

.method public abstract isRemoteComposing()Z
.end method

.method public abstract islimeAvailable()Z
.end method

.method public abstract markAsRead()V
.end method

.method public abstract sendChatMessage(Lorg/linphone/core/LinphoneChatMessage;)V
.end method

.method public abstract sendMessage(Ljava/lang/String;)V
.end method

.method public abstract sendMessage(Lorg/linphone/core/LinphoneChatMessage;Lorg/linphone/core/LinphoneChatMessage$StateListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
