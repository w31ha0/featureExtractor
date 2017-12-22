.class Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;
.super Ljava/lang/Object;
.source "NetflixService.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/user/UserAgentCallback;


# instance fields
.field private final clientId:I

.field private final requestId:I

.field final synthetic this$0:Lcom/netflix/mediaclient/service/NetflixService;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/NetflixService;II)V
    .locals 0

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    iput p2, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    .line 1023
    iput p3, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    .line 1024
    return-void
.end method


# virtual methods
.method public onAllocateABTestCompleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1900(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1117
    if-nez v0, :cond_0

    .line 1118
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onAllocateABTestCompleted"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    :goto_0
    return-void

    .line 1120
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onSurveyFetched"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onAllocateABTestCompleted(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onAutoLoginTokenCreated(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1900(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1095
    if-nez v0, :cond_0

    .line 1096
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onAutoLoginTokenCreated"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :goto_0
    return-void

    .line 1098
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onAutoLoginTokenCreated"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onAutoLoginTokenCreated(ILjava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onAvailableAvatarsListFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3
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

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1900(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1062
    if-nez v0, :cond_0

    .line 1063
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onAvailableAvatarsListFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :goto_0
    return-void

    .line 1065
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onAvailableAvatarsListFetched"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onAvailableAvatarsListFetched(ILjava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onIrisNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1900(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1073
    if-nez v0, :cond_0

    .line 1074
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onIrisNotificationsListFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    :goto_0
    return-void

    .line 1076
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onIrisNotificationsListFetched"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onIrisNotificationsListFetched(ILcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onLoginComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1900(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1029
    if-nez v0, :cond_0

    .line 1030
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onLoginComplete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :goto_0
    return-void

    .line 1032
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onLoginComplete"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onLoginComplete(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onLogoutComplete(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1900(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1040
    if-nez v0, :cond_0

    .line 1041
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onLogoutComplete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :goto_0
    return-void

    .line 1043
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onLogoutComplete"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onLogoutComplete(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onOnRampEligibilityActionComplete(Lcom/netflix/model/leafs/OnRampEligibility;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1900(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1128
    if-nez v0, :cond_0

    .line 1129
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onOnRampEligibilityActionComplete"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :goto_0
    return-void

    .line 1131
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onOnRampEligibilityActionComplete"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onOnRampEligibilityAction(ILcom/netflix/model/leafs/OnRampEligibility;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onProfilesListUpdateResult(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1900(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1084
    if-nez v0, :cond_0

    .line 1085
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onProfilesListUpdateResult"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :goto_0
    return-void

    .line 1087
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onProfilesListUpdateResult"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onProfileListUpdateStatus(ILcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onSurveyFetched(Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1900(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1106
    if-nez v0, :cond_0

    .line 1107
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onSurveyFetched"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :goto_0
    return-void

    .line 1109
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onSurveyFetched"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onSurveyFetched(ILcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method public onVerified(ZLcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->this$0:Lcom/netflix/mediaclient/service/NetflixService;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/NetflixService;->access$1900(Lcom/netflix/mediaclient/service/NetflixService;)Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->clientId:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/NetflixService$ClientCallbacks;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;

    .line 1051
    if-nez v0, :cond_0

    .line 1052
    const-string/jumbo v0, "NetflixService"

    const-string/jumbo v1, "No client callback found for onVerified"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    :goto_0
    return-void

    .line 1054
    :cond_0
    const-string/jumbo v1, "NetflixService"

    const-string/jumbo v2, "Notified onVerified"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget v1, p0, Lcom/netflix/mediaclient/service/NetflixService$UserAgentClientCallback;->requestId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/netflix/mediaclient/servicemgr/INetflixServiceCallback;->onVerified(IZLcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method
