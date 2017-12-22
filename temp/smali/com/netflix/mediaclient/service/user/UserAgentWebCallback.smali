.class public interface abstract Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;
.super Ljava/lang/Object;
.source "UserAgentWebCallback.java"


# virtual methods
.method public abstract onAccountDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onAllocateABTestCompleted(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onAutoLoginTokenCreated(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onAutologinCompleted(Lcom/netflix/mediaclient/javabridge/ui/ActivationTokens;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onAvatarsListFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/AvatarInfo;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onOnRampEligibilityAction(Lcom/netflix/model/leafs/OnRampEligibility;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onProfileDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onSurveyFetched(Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onUserDataFetched(Lcom/netflix/mediaclient/service/webclient/model/leafs/User;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onUserProfilesUpdated(Lcom/netflix/mediaclient/service/webclient/model/leafs/AccountData;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V
.end method
