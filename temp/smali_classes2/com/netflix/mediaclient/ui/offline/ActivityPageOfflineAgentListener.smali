.class public Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;
.super Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;
.source "ActivityPageOfflineAgentListener.java"


# static fields
.field public static final BANG_ICON:Ljava/lang/String; = "\ud83d\udca5"

.field private static final TAG:Ljava/lang/String; = "ActivityPageOfflineAgentListener"

.field private static final sessionPlayableIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bangIconInSnackbar:Landroid/graphics/drawable/Drawable;

.field private buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

.field private final content:Landroid/view/ViewGroup;

.field private final launchMyDownloads:Landroid/view/View$OnClickListener;

.field private final showMessages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->sessionPlayableIds:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Z)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/SimpleOfflineAgentListener;-><init>()V

    .line 93
    new-instance v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$1;-><init>(Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->launchMyDownloads:Landroid/view/View$OnClickListener;

    .line 114
    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->showMessages:Z

    .line 115
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->dismissBuffetBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->resetSnackbarSession(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    return-void
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;)Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    return-object p1
.end method

.method private dismissBuffetBar()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->dismiss()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    .line 207
    :cond_0
    return-void
.end method

.method private doBounceAnimation(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 195
    const-string/jumbo v0, "translationX"

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 196
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 197
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 198
    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 199
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 200
    return-void

    .line 195
    nop

    :array_0
    .array-data 4
        0x0
        0x41c80000    # 25.0f
        0x0
    .end array-data
.end method

.method private getDecoratedText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 272
    new-instance v0, Landroid/text/SpannableString;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 273
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\ud83d\udca5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->bangIconInSnackbar:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0200f8

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->bangIconInSnackbar:Landroid/graphics/drawable/Drawable;

    .line 278
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->bangIconInSnackbar:Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 279
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 280
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->bangIconInSnackbar:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 283
    :cond_0
    new-instance v1, Landroid/text/style/ImageSpan;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->bangIconInSnackbar:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 284
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\ud83d\udca5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 285
    const-string/jumbo v3, "\ud83d\udca5"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    const/16 v4, 0x11

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 287
    :cond_1
    return-object v0
.end method

.method private getTotalDownloadProgress()I
    .locals 12

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 572
    .line 576
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 577
    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getOfflineAgentOrNull(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_2

    .line 580
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v0

    .line 583
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getOfflinePlayableViewData()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v2, v4

    move-wide v6, v4

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;

    .line 585
    sget-object v9, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->sessionPlayableIds:Ljava/util/List;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 589
    add-int/lit8 v1, v1, 0x1

    .line 590
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getCurrentEstimatedSpace()J

    move-result-wide v10

    add-long/2addr v6, v10

    .line 591
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getTotalEstimatedSpace()J

    move-result-wide v10

    add-long/2addr v2, v10

    .line 592
    goto :goto_0

    .line 594
    :cond_1
    if-lez v1, :cond_3

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 595
    const-wide/16 v0, 0x64

    mul-long/2addr v0, v6

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 601
    :cond_2
    :goto_1
    return v1

    .line 597
    :cond_3
    const/16 v1, 0x64

    goto :goto_1
.end method

.method private handlePlayRightsRenewDone(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 557
    if-eqz v0, :cond_0

    .line 558
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->SAVED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    :goto_1
    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 559
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setEnabled(Z)V

    goto :goto_0

    .line 558
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_1
.end method

.method private initSnackbar(ZLcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 174
    iget-object v2, p2, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;->text:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;->complete:Z

    if-eqz v0, :cond_3

    iget v0, p2, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;->errors:I

    if-lez v0, :cond_3

    const v0, 0x7f0f0071

    .line 175
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->showSnackbar(Ljava/lang/String;I)Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    .line 179
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string/jumbo v3, "nf-icon.otf"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->setActionTypeface(Landroid/graphics/Typeface;)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 181
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_4

    const v0, 0x7f0902a1

    :goto_1
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->launchMyDownloads:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0, v3}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 182
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->show(Z)V

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    iget-boolean v0, p2, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;->complete:Z

    if-nez v0, :cond_1

    iget v0, p2, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;->errors:I

    if-lez v0, :cond_5

    :cond_1
    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->setSwipeToDismissEnabled(Z)V

    .line 188
    iget-boolean v0, p2, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;->complete:Z

    if-eqz v0, :cond_2

    .line 192
    :cond_2
    return-void

    .line 174
    :cond_3
    const v0, 0x7f0f0070

    goto :goto_0

    .line 181
    :cond_4
    const v0, 0x7f0902a2

    goto :goto_1

    .line 187
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private resetSnackbarSession(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->setUserSwiped(Landroid/content/Context;Z)V

    .line 267
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->resetSnackBarDownloadCompleteCount(Landroid/content/Context;)V

    .line 268
    return-void
.end method

.method private showSnackbar(Ljava/lang/String;I)Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 213
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    instance-of v2, v0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    if-nez v2, :cond_3

    .line 216
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isCastPlayerShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    const-string/jumbo v0, "ActivityPageOfflineAgentListener"

    const-string/jumbo v2, "No buffetBar while MDX mini player display"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 261
    :goto_0
    return-object v0

    .line 221
    :cond_0
    const v2, 0x7f10018d

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 222
    instance-of v3, v2, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v3, :cond_2

    .line 224
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 226
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->getDecoratedText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 228
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    if-nez v4, :cond_1

    .line 230
    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->make(Landroid/view/View;Ljava/lang/CharSequence;II)Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->setText(Ljava/lang/CharSequence;)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->setBackgroundColor(I)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 234
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->getTotalDownloadProgress()I

    move-result v2

    invoke-virtual {v1, v2, v6}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->showProgressWithAnimation(IZ)V

    .line 237
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    new-instance v2, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$2;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$2;-><init>(Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->setCallback(Lcom/netflix/android/widgetry/buffet/BuffetBar$Callback;)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    goto :goto_0

    .line 253
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SPY-10658 : No suitable parent found to attach buffetBar, current activity is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    const-string/jumbo v2, "ActivityPageOfflineAgentListener"

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move-object v0, v1

    .line 261
    goto :goto_0

    .line 258
    :cond_3
    const-string/jumbo v2, "ActivityPageOfflineAgentListener"

    const-string/jumbo v3, "No buffetBar to display as activity is finishing (or in PlayerActivity). Current activity is %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1
.end method

.method private updateSnackbar(ZZ)V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 125
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->canShowSnackBar()Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->showMessages:Z

    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getOfflineAgent()Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->isUserSwiped(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    if-eqz v1, :cond_0

    .line 145
    :cond_2
    :try_start_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;->getLatestOfflinePlayableList()Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableUiList;->getSnackbarStatus(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/agent/OfflineAgentInterface;)Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;
    :try_end_0
    .catch Lcom/ibm/icu/impl/IllegalIcuArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    if-eqz v0, :cond_5

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->initSnackbar(ZLcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;)V

    .line 156
    iget-boolean v1, v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;->complete:Z

    if-eqz v1, :cond_3

    .line 157
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->sessionPlayableIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 164
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    if-eqz v1, :cond_0

    .line 165
    if-nez p2, :cond_4

    .line 166
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->hidePercentageAndLoading()V

    .line 169
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->getTotalDownloadProgress()I

    move-result v2

    iget-boolean v0, v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;->paused:Z

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->showProgressWithAnimation(IZ)V

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    const-string/jumbo v0, "ActivityPageOfflineAgentListener"

    const-string/jumbo v1, "bad message, dismiss snack-bar"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->dismissBuffetBar()V

    goto :goto_0

    .line 160
    :cond_5
    const-string/jumbo v1, "ActivityPageOfflineAgentListener"

    const-string/jumbo v2, "no message, dismiss snack-bar"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->dismissBuffetBar()V

    goto :goto_1
.end method


# virtual methods
.method public isListenerDestroyed()Z
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 549
    :goto_0
    return v0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 549
    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public onAllPlayablesDeleted(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    .line 470
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 474
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->sessionPlayableIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 476
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->resetSnackBarDownloadCompleteCount(Landroid/content/Context;)V

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 478
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    const-string/jumbo v2, "download_btn"

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 480
    invoke-static {}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->clearPreQueued()V

    .line 482
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 483
    instance-of v1, v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 484
    check-cast v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    sget-object v3, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_1

    .line 487
    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar(ZZ)V

    goto :goto_0
.end method

.method public onCreateRequestResponse(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 321
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 326
    if-eqz v0, :cond_2

    .line 327
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->QUEUED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    :goto_1
    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setEnabled(Z)V

    .line 331
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->setUserSwiped(Landroid/content/Context;Z)V

    .line 333
    invoke-direct {p0, v3, v3}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar(ZZ)V

    .line 335
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 336
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->isWarning()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 339
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    goto :goto_1

    .line 342
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar()V

    .line 343
    if-eqz v0, :cond_0

    .line 344
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/StatusCode;->DL_NOT_ENOUGH_FREE_SPACE:Lcom/netflix/mediaclient/StatusCode;

    if-ne v1, v2, :cond_5

    .line 346
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->onDownloadButtonSelection()V

    goto :goto_0

    .line 347
    :cond_5
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->DL_TITTLE_ALREADY_REQUESTED_FOR_DOWNLOAD:Lcom/netflix/mediaclient/StatusCode;

    if-ne v0, v1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createAlreadyRequestedDownloadDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public onDownloadCompleted(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 377
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->incrementSnackBarDownloadCompleteCount(Landroid/content/Context;)V

    .line 382
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 383
    if-eqz v0, :cond_2

    .line 384
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->SAVED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->setUserSwiped(Landroid/content/Context;Z)V

    .line 389
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v0

    .line 390
    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x1

    invoke-direct {p0, v0, v3}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar(ZZ)V

    goto :goto_0
.end method

.method public onDownloadResumedByUser(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 398
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->setUserSwiped(Landroid/content/Context;Z)V

    .line 402
    invoke-direct {p0, v2, v2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar(ZZ)V

    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->resumeLoadingProgress()V

    goto :goto_0
.end method

.method public onDownloadStopped(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 411
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 416
    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->showBangIconErrorInUi()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 418
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->ERROR:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 424
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->setUserSwiped(Landroid/content/Context;Z)V

    .line 425
    invoke-direct {p0, v3, v3}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar(ZZ)V

    .line 427
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->hideLoading()V

    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->pauseLoadingProgress()V

    goto :goto_0

    .line 419
    :cond_3
    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;->WaitingToBeStarted:Lcom/netflix/mediaclient/servicemgr/interface_/offline/StopReason;

    if-eq p2, v1, :cond_2

    .line 420
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->PAUSED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 493
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$3;->$SwitchMap$com$netflix$mediaclient$StatusCode:[I

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 511
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->setUserSwiped(Landroid/content/Context;Z)V

    .line 512
    invoke-direct {p0, v3, v2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar(ZZ)V

    .line 516
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->hidePercentageAndLoading()V

    .line 518
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->hideLoading()V

    goto :goto_0

    .line 501
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createNoStorageDialog(Landroid/content/Context;Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 506
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButtonDialogHelper;->createDownloadFailedDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 497
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onLicenseRefreshDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 526
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->handlePlayRightsRenewDone(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 527
    return-void
.end method

.method public onOfflinePlayableDeleted(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 448
    :goto_0
    return-void

    .line 440
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->sessionPlayableIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 442
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 443
    if-eqz v0, :cond_1

    .line 444
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v0, v1, p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 446
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->removePreQueued(Ljava/lang/String;)V

    .line 447
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar(ZZ)V

    goto :goto_0
.end method

.method public onOfflinePlayableProgress(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;I)V
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 362
    if-eqz v0, :cond_1

    .line 363
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getDownloadState()Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;->Complete:Lcom/netflix/mediaclient/servicemgr/interface_/offline/DownloadState;

    if-ne v1, v2, :cond_2

    .line 364
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->SAVED:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 371
    :cond_1
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar(ZZ)V

    goto :goto_0

    .line 366
    :cond_2
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->DOWNLOADING:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setProgress(I)V

    goto :goto_1
.end method

.method public onOfflinePlayableRequested(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 292
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isPlayableEpisode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    .line 293
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090191

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090215

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->getFormatter(Landroid/content/Context;I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->withQuantity(I)Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/common/i18n/ICUMessageFormat;->format()Ljava/lang/String;

    move-result-object v0

    .line 297
    new-instance v1, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;

    invoke-direct {v1, v0, v6}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;-><init>(Ljava/lang/String;I)V

    .line 299
    sget-object v2, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->sessionPlayableIds:Ljava/util/List;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    sget-object v2, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->sessionPlayableIds:Ljava/util/List;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    .line 305
    :cond_1
    invoke-direct {p0, v5, v1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->initSnackbar(ZLcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener$SnackbarMessage;)V

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 309
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->getDecoratedText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->setText(Ljava/lang/CharSequence;)Lcom/netflix/android/widgetry/buffet/BuffetBar;

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->buffetBar:Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineBuffetBar;->showLoading()V

    .line 312
    :cond_3
    return-void

    .line 294
    :cond_4
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    goto :goto_0
.end method

.method public onOfflinePlayablesDeleted(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 465
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    sget-object v1, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->sessionPlayableIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 458
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "download_btn"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 459
    if-eqz v1, :cond_1

    .line 460
    sget-object v3, Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;->AVAILABLE:Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;

    invoke-virtual {v1, v3, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setState(Lcom/netflix/mediaclient/ui/offline/DownloadButton$ButtonState;Ljava/lang/String;)V

    .line 461
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->removePreQueued(Ljava/lang/String;)V

    goto :goto_1

    .line 464
    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar(ZZ)V

    goto :goto_0
.end method

.method public onOfflineStorageVolumeAddedOrRemoved(Z)V
    .locals 3

    .prologue
    .line 537
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 540
    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    const v1, 0x7f090203

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPlayWindowRenewDone(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 532
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflinePlayableViewData;->getPlayableId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->handlePlayRightsRenewDone(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 533
    return-void
.end method

.method public refreshDownloadButton(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 3

    .prologue
    .line 564
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->content:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download_btn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 566
    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->refreshDownloadButton(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0
.end method

.method public updateSnackbar()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, v0, v0}, Lcom/netflix/mediaclient/ui/offline/ActivityPageOfflineAgentListener;->updateSnackbar(ZZ)V

    .line 120
    return-void
.end method
