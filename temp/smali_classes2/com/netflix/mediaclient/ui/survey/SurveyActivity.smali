.class public Lcom/netflix/mediaclient/ui/survey/SurveyActivity;
.super Lcom/netflix/mediaclient/android/activity/NetflixActivity;
.source "SurveyActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/survey/SurveyListener;


# static fields
.field public static final EXTRA_SURVEY:Ljava/lang/String; = "extra_survey"

.field public static final TAG:Ljava/lang/String; = "SurveyActivity"

.field private static hasCompleted:Z


# instance fields
.field firstQuestion:Lcom/netflix/model/survey/SurveyQuestion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;-><init>()V

    return-void
.end method

.method public static shouldShowSurvey(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z
    .locals 2

    .prologue
    .line 37
    const-class v0, Lcom/netflix/mediaclient/service/configuration/persistent/BrandLoveSurvey;

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/service/configuration/PersistentConfig;->getCellForTest(Ljava/lang/Class;Landroid/content/Context;)Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;->CELL_1:Lcom/netflix/mediaclient/service/webclient/model/leafs/ABTestConfig$Cell;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getCurrentProfile()Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/user/UserProfile;->isKidsProfile()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->hasCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showSurvey(Landroid/app/Activity;Lcom/netflix/model/survey/Survey;)V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const-string/jumbo v1, "extra_survey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method


# virtual methods
.method public getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->survey:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    return-object v0
.end method

.method protected handleBackPressed()Z
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->onSkipped()V

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public onCompleted(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    sget-boolean v0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->hasCompleted:Z

    if-nez v0, :cond_0

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->hasCompleted:Z

    .line 50
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->firstQuestion:Lcom/netflix/model/survey/SurveyQuestion;

    invoke-virtual {v1}, Lcom/netflix/model/survey/SurveyQuestion;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v3, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSurveyEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->success:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->firstQuestion:Lcom/netflix/model/survey/SurveyQuestion;

    .line 52
    invoke-virtual {v1}, Lcom/netflix/model/survey/SurveyQuestion;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-static {p0, v0, v3, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSurveyQuestionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/netflix/mediaclient/ui/survey/ThanksFragment;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/survey/ThanksFragment;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 56
    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    .line 57
    const v2, 0x7f1000a1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 58
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 64
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->setContentView(I)V

    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/log/ApmLogUtils;->reportUiModalViewChanged(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 109
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_survey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/survey/Survey;

    .line 110
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/model/survey/Survey;->getQuestionTotal()I

    move-result v1

    if-nez v1, :cond_1

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->finish()V

    .line 128
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/model/survey/Survey;->getFirstQuestion()Lcom/netflix/model/survey/SurveyQuestion;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->firstQuestion:Lcom/netflix/model/survey/SurveyQuestion;

    .line 116
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 121
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->getUiScreen()Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSurveyQuestionStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UserActionLogging$CommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)V

    .line 124
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/survey/SurveyFragment;->getInstance(Lcom/netflix/model/survey/Survey;)Lcom/netflix/mediaclient/ui/survey/SurveyFragment;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 126
    const v2, 0x7f1000a1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 127
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->onSurveyMessageRead()V

    .line 135
    invoke-super {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->onDestroy()V

    .line 136
    return-void
.end method

.method public onSkipped()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    sget-boolean v0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->hasCompleted:Z

    if-nez v0, :cond_0

    .line 69
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->hasCompleted:Z

    .line 72
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->firstQuestion:Lcom/netflix/model/survey/SurveyQuestion;

    invoke-virtual {v1}, Lcom/netflix/model/survey/SurveyQuestion;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v3, v1}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSurveyEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;->canceled:Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->firstQuestion:Lcom/netflix/model/survey/SurveyQuestion;

    .line 74
    invoke-virtual {v1}, Lcom/netflix/model/survey/SurveyQuestion;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "0"

    .line 73
    invoke-static {p0, v0, v3, v1, v2}, Lcom/netflix/mediaclient/util/log/UserActionLogUtils;->reportSurveyQuestionEnded(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IClientLogging$CompletionReason;Lcom/netflix/mediaclient/service/logging/client/model/UIError;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->finish()V

    .line 82
    :cond_0
    return-void
.end method

.method public onSurveyMessageRead()V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/survey/SurveyActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->markSurveysAsRead()V

    .line 86
    return-void
.end method
