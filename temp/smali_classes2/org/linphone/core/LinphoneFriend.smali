.class public interface abstract Lorg/linphone/core/LinphoneFriend;
.super Ljava/lang/Object;
.source "LinphoneFriend.java"


# virtual methods
.method public abstract addAddress(Lorg/linphone/core/LinphoneAddress;)V
.end method

.method public abstract addPhoneNumber(Ljava/lang/String;)V
.end method

.method public abstract done()V
.end method

.method public abstract edit()V
.end method

.method public abstract enableSubscribes(Z)V
.end method

.method public abstract getAddress()Lorg/linphone/core/LinphoneAddress;
.end method

.method public abstract getAddresses()[Lorg/linphone/core/LinphoneAddress;
.end method

.method public abstract getFamilyName()Ljava/lang/String;
.end method

.method public abstract getGivenName()Ljava/lang/String;
.end method

.method public abstract getIncSubscribePolicy()Lorg/linphone/core/LinphoneFriend$SubscribePolicy;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNativePtr()J
.end method

.method public abstract getOrganization()Ljava/lang/String;
.end method

.method public abstract getPhoneNumbers()[Ljava/lang/String;
.end method

.method public abstract getPresenceModel()Lorg/linphone/core/PresenceModel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPresenceModelForUri(Ljava/lang/String;)Lorg/linphone/core/PresenceModel;
.end method

.method public abstract getRefKey()Ljava/lang/String;
.end method

.method public abstract getStatus()Lorg/linphone/core/OnlineStatus;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isAlreadyPresentInFriendList()Z
.end method

.method public abstract isPresenceReceived()Z
.end method

.method public abstract isSubscribesEnabled()Z
.end method

.method public abstract removeAddress(Lorg/linphone/core/LinphoneAddress;)V
.end method

.method public abstract removePhoneNumber(Ljava/lang/String;)V
.end method

.method public abstract setAddress(Lorg/linphone/core/LinphoneAddress;)V
.end method

.method public abstract setFamilyName(Ljava/lang/String;)V
.end method

.method public abstract setGivenName(Ljava/lang/String;)V
.end method

.method public abstract setIncSubscribePolicy(Lorg/linphone/core/LinphoneFriend$SubscribePolicy;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setOrganization(Ljava/lang/String;)V
.end method

.method public abstract setPresenceModel(Lorg/linphone/core/PresenceModel;)V
.end method

.method public abstract setRefKey(Ljava/lang/String;)V
.end method

.method public abstract toString()Ljava/lang/String;
.end method
