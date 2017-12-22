.class public Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;
.super Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;
.source "SkipCreditsButton.java"


# static fields
.field private static final SKIP_INTRO:Ljava/lang/String; = "skipIntro"

.field private static final SKIP_RECAP:Ljava/lang/String; = "skipRecap"

.field private static final TAG:Ljava/lang/String; = "SkipCreditsButton"


# instance fields
.field private mIsWithinCreditMarks:Z

.field private mShowSkipButtonIndependentlyOfPlayerControls:Z

.field private mSkipCreditsId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mShowSkipButtonIndependentlyOfPlayerControls:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mShowSkipButtonIndependentlyOfPlayerControls:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mShowSkipButtonIndependentlyOfPlayerControls:Z

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->reportOnClick(Landroid/content/Context;)V

    return-void
.end method

.method private static isWithinIntroMarks(Lcom/netflix/model/leafs/blades/CreditMarks;JI)Z
    .locals 3

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/netflix/model/leafs/blades/CreditMarks;->startCredit()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/model/leafs/blades/CreditMarks;->endCredit()I

    move-result v0

    if-ltz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/netflix/model/leafs/blades/CreditMarks;->startCredit()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/model/leafs/blades/CreditMarks;->endCredit()I

    move-result v0

    sub-int/2addr v0, p3

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWithinRecapMarks(Lcom/netflix/model/leafs/blades/CreditMarks;JI)Z
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/netflix/model/leafs/blades/CreditMarks;->startRecap()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/model/leafs/blades/CreditMarks;->startRecap()I

    move-result v0

    if-ltz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/netflix/model/leafs/blades/CreditMarks;->startRecap()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/model/leafs/blades/CreditMarks;->endRecap()I

    move-result v0

    sub-int/2addr v0, p3

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 163
    :goto_0
    return v0

    .line 164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reportOnClick(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 145
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->skipCreditsButton:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->skipCreditsButton:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    sget-object v2, Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;->gesture:Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommand(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/uiview/model/CommandEndedEvent$InputMethod;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;)V

    .line 146
    return-void
.end method


# virtual methods
.method public hide(Z)V
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->isVisibleInViewPort()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->hide(Z)V

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mSkipCreditsId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ContextUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 70
    if-eqz v0, :cond_0

    .line 71
    const-string/jumbo v1, "SkipCreditsButton"

    const-string/jumbo v2, "Logging session ended for SkipCredits"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->skipCreditsButton:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mSkipCreditsId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionEnded(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mSkipCreditsId:Ljava/lang/String;

    goto :goto_0
.end method

.method public isShowSkipButtonIndependentlyOfPlayerControls()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mShowSkipButtonIndependentlyOfPlayerControls:Z

    return v0
.end method

.method public isWithinCreditMarks(JLcom/netflix/model/leafs/blades/CreditMarks;ILcom/netflix/mediaclient/ui/player/SkipCreditsButton$OnSkipCreditsButtonControllerClickListener;)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-static {p3, p1, p2, p4}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->isWithinIntroMarks(Lcom/netflix/model/leafs/blades/CreditMarks;JI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mIsWithinCreditMarks:Z

    if-nez v0, :cond_0

    .line 102
    const-string/jumbo v0, "SkipCreditsButton"

    const-string/jumbo v1, "Within CreditMarks - Setting onclick listener"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const v0, 0x7f09019b

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->setText(I)V

    .line 105
    new-instance v0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$1;

    invoke-direct {v0, p0, p5, p3}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$1;-><init>(Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$OnSkipCreditsButtonControllerClickListener;Lcom/netflix/model/leafs/blades/CreditMarks;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mIsWithinCreditMarks:Z

    .line 140
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mIsWithinCreditMarks:Z

    return v0

    .line 117
    :cond_1
    invoke-static {p3, p1, p2, p4}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->isWithinRecapMarks(Lcom/netflix/model/leafs/blades/CreditMarks;JI)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mIsWithinCreditMarks:Z

    if-nez v0, :cond_0

    .line 120
    const-string/jumbo v0, "SkipCreditsButton"

    const-string/jumbo v1, "Within CreditMarks - Setting onclick listener"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const v0, 0x7f09019c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->setText(I)V

    .line 123
    new-instance v0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$2;

    invoke-direct {v0, p0, p5, p3}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$2;-><init>(Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;Lcom/netflix/mediaclient/ui/player/SkipCreditsButton$OnSkipCreditsButtonControllerClickListener;Lcom/netflix/model/leafs/blades/CreditMarks;)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mIsWithinCreditMarks:Z

    goto :goto_0

    .line 135
    :cond_2
    const-string/jumbo v0, "SkipCreditsButton"

    const-string/jumbo v1, "Not within creditmarks"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->hide(Z)V

    .line 137
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mIsWithinCreditMarks:Z

    goto :goto_0
.end method

.method public resetSkipButton()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mShowSkipButtonIndependentlyOfPlayerControls:Z

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mIsWithinCreditMarks:Z

    .line 89
    return-void
.end method

.method public setShowSkipButtonIndependentlyOfPlayerControls(Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mShowSkipButtonIndependentlyOfPlayerControls:Z

    .line 80
    return-void
.end method

.method public show(Z)V
    .locals 3

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mIsWithinCreditMarks:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->isVisibleInViewPort()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->show(Z)V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mShowSkipButtonIndependentlyOfPlayerControls:Z

    .line 53
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ContextUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 54
    if-eqz v0, :cond_0

    .line 55
    const-string/jumbo v1, "SkipCreditsButton"

    const-string/jumbo v2, "Logging session started for SkipCredits"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->skipCreditsButton:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->reportUiModelessViewSessionStart(Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/SkipCreditsButton;->mSkipCreditsId:Ljava/lang/String;

    goto :goto_0
.end method
