.class public interface abstract Lorg/linphone/core/LinphoneEvent;
.super Ljava/lang/Object;
.source "LinphoneEvent.java"


# virtual methods
.method public abstract acceptSubscription()V
.end method

.method public abstract addCustomHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract denySubscription(Lorg/linphone/core/Reason;)V
.end method

.method public abstract getCore()Lorg/linphone/core/LinphoneCore;
.end method

.method public abstract getCustomHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getErrorInfo()Lorg/linphone/core/ErrorInfo;
.end method

.method public abstract getEventName()Ljava/lang/String;
.end method

.method public abstract getReason()Lorg/linphone/core/Reason;
.end method

.method public abstract getSubscriptionDir()Lorg/linphone/core/SubscriptionDir;
.end method

.method public abstract getSubscriptionState()Lorg/linphone/core/SubscriptionState;
.end method

.method public abstract getUserContext()Ljava/lang/Object;
.end method

.method public abstract notify(Lorg/linphone/core/LinphoneContent;)V
.end method

.method public abstract sendPublish(Lorg/linphone/core/LinphoneContent;)V
.end method

.method public abstract sendSubscribe(Lorg/linphone/core/LinphoneContent;)V
.end method

.method public abstract setUserContext(Ljava/lang/Object;)V
.end method

.method public abstract terminate()V
.end method

.method public abstract updatePublish(Lorg/linphone/core/LinphoneContent;)V
.end method

.method public abstract updateSubscribe(Lorg/linphone/core/LinphoneContent;)V
.end method
