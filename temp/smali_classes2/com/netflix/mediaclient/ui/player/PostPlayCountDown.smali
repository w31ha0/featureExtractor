.class public Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;
.super Landroid/widget/LinearLayout;
.source "PostPlayCountDown.java"


# instance fields
.field private action:Landroid/widget/TextView;

.field private countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

.field protected netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field postPlayItem:Lcom/netflix/model/leafs/PostPlayItem;

.field private final refreshTextRunner:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown$1;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->refreshTextRunner:Ljava/lang/Runnable;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown$1;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->refreshTextRunner:Ljava/lang/Runnable;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance v0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown$1;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->refreshTextRunner:Ljava/lang/Runnable;

    .line 26
    return-void
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 86
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->stopTimer()V

    .line 89
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 105
    const v0, 0x7f1002e2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->action:Landroid/widget/TextView;

    .line 106
    return-void
.end method

.method public refreshTimerText()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->getTime()I

    move-result v0

    .line 70
    if-le v0, v1, :cond_1

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->postPlayItem:Lcom/netflix/model/leafs/PostPlayItem;

    invoke-virtual {v2}, Lcom/netflix/model/leafs/PostPlayItem;->isNextEpisodeAutoPlay()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    if-le v0, v1, :cond_2

    const v1, 0x7f09016a

    .line 78
    :goto_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->action:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->action:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 70
    goto :goto_0

    .line 73
    :cond_2
    const v1, 0x7f090169

    goto :goto_1

    .line 75
    :cond_3
    if-le v0, v1, :cond_4

    const v1, 0x7f090171

    goto :goto_1

    :cond_4
    const v1, 0x7f090170

    goto :goto_1
.end method

.method public startTimer()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->startTimer()V

    .line 50
    :cond_0
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->stopTimer()V

    .line 56
    :cond_0
    return-void
.end method

.method public updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .prologue
    .line 37
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->netflixActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 38
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->postPlayItem:Lcom/netflix/model/leafs/PostPlayItem;

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-direct {v0, p2}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->refreshTextRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->setOnTick(Ljava/lang/Runnable;)V

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->countdownTimer:Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;

    invoke-virtual {p1}, Lcom/netflix/model/leafs/PostPlayItem;->getAutoPlaySeconds()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/util/TimeUtils$CountdownTimer;->setTime(I)V

    .line 43
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayCountDown;->refreshTimerText()V

    .line 44
    return-void
.end method
