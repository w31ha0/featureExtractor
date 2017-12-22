.class Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable$1;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "SurveyDialogManageable.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable$1;->this$0:Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurveyFetched(Lcom/netflix/model/survey/Survey;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable$1;->this$0:Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable$1;->this$0:Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/home/startup_dialogs/SurveyDialogManageable;->getOwner()Lcom/netflix/mediaclient/ui/home/HomeActivity;

    move-result-object v0

    .line 39
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/model/survey/Survey;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->showSurvey(Landroid/app/Activity;Lcom/netflix/model/survey/Survey;)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v3, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSurveyEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->failed:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v3, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSurveyEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    goto :goto_0
.end method
