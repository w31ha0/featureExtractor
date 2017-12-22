.class public interface abstract Lcom/netflix/mediaclient/service/user/UserAgentCallback;
.super Ljava/lang/Object;
.source "UserAgentCallback.java"


# virtual methods
.method public abstract onAllocateABTestCompleted(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onAutoLoginTokenCreated(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onAvailableAvatarsListFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
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

.method public abstract onIrisNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onLogoutComplete(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onOnRampEligibilityActionComplete(Lcom/netflix/model/leafs/OnRampEligibility;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onProfilesListUpdateResult(Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onSurveyFetched(Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V
.end method
