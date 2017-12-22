.class public final Lcom/netflix/mediaclient/ui/player/TopPanel;
.super Lcom/netflix/mediaclient/ui/player/PlayerSection;
.source "TopPanel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "screen"


# instance fields
.field private final mActionBar:Landroid/support/v7/app/ActionBar;

.field private mCurrentToolbarAnimation:Landroid/view/ViewPropertyAnimator;

.field private mDebugBitrateControl:Landroid/view/MenuItem;

.field private mDebugGraphicOverlay:Landroid/view/MenuItem;

.field private mDebugMetadata:Landroid/view/MenuItem;

.field private mDialogLanguageId:Ljava/lang/String;

.field private mEpisodeSelector:Landroid/view/MenuItem;

.field private mEpisodeSelectorEnabled:Z

.field private mLanguage:Landroid/view/MenuItem;

.field private mLanguageSelector:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

.field private final mListeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

.field private mMDXSelectorEnabled:Z

.field protected mMdxTarget:Landroid/view/MenuItem;

.field private mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

.field private mSound:Landroid/view/MenuItem;

.field private final mTitleLabel:Landroid/widget/TextView;

.field private mToolBar:Landroid/support/v7/widget/Toolbar;

.field private mTopGradient:Landroid/view/View;

.field private final mUpActionListener:Landroid/view/View$OnClickListener;

.field protected mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;)V
    .locals 2

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/PlayerSection;-><init>(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 150
    new-instance v0, Lcom/netflix/mediaclient/ui/player/TopPanel$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/TopPanel$1;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mUpActionListener:Landroid/view/View$OnClickListener;

    .line 163
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mListeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    .line 164
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mActionBar:Landroid/support/v7/app/ActionBar;

    .line 166
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mActionBar:Landroid/support/v7/app/ActionBar;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTitleLabel:Landroid/widget/TextView;

    .line 169
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTopGradient:Landroid/view/View;

    .line 170
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mToolBar:Landroid/support/v7/widget/Toolbar;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/player/TopPanel;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mDialogLanguageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/ui/player/TopPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mDialogLanguageId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/player/TopPanel;Lcom/netflix/mediaclient/media/Language;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->processLanguageChange(Lcom/netflix/mediaclient/media/Language;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/player/TopPanel;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->updateLastPanelInteractionTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/player/TopPanel;)Lcom/netflix/mediaclient/ui/common/LanguageSelector;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguageSelector:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/player/TopPanel;)Lcom/netflix/mediaclient/ui/player/PlayScreen;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/player/TopPanel;)Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mListeners:Lcom/netflix/mediaclient/ui/player/PlayScreen$Listeners;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/player/TopPanel;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTitleLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method private changeControlsVisibility(Z)V
    .locals 2

    .prologue
    .line 633
    if-eqz p1, :cond_1

    .line 634
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mToolBar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mCurrentToolbarAnimation:Landroid/view/ViewPropertyAnimator;

    .line 635
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->hideAdvisories()V

    .line 637
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->showLanguageMenuItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguage:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/MenuItem;Z)V

    .line 648
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->setGradientVisibility(Z)V

    .line 649
    return-void

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mCurrentToolbarAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mCurrentToolbarAnimation:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 645
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mToolBar:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 646
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->showAdvisories()V

    goto :goto_0
.end method

.method private createMdxTargetSelectionDialog(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Landroid/support/v7/app/AlertDialog;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 417
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->isPlaying()Z

    move-result v0

    .line 420
    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getLocalDevicePosition()I

    move-result v2

    .line 421
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-virtual {v3, v2}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->setTarget(I)Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    .line 423
    new-instance v3, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;-><init>(Landroid/app/Activity;)V

    .line 424
    invoke-virtual {v3, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 425
    const v4, 0x7f090125

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setTitle(I)Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;

    .line 426
    iget-object v4, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getTargets(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setAdapterData(Ljava/util/List;)V

    .line 428
    const v4, 0x7f0901d2

    invoke-virtual {p1, v4}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->getCurrentTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-virtual {v3, v2, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setSelection(ILjava/lang/String;)V

    .line 430
    new-instance v1, Lcom/netflix/mediaclient/ui/player/TopPanel$10;

    invoke-direct {v1, p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/TopPanel$10;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Z)V

    invoke-virtual {v3, v1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 477
    new-instance v0, Lcom/netflix/mediaclient/ui/player/TopPanel$11;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel$11;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;Lcom/netflix/mediaclient/ui/player/PlayerFragment;)V

    .line 484
    invoke-virtual {v3, v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;

    .line 486
    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelectionDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    .line 418
    goto :goto_0
.end method

.method private getCurrentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTitleLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTitleLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hideAdvisories()V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->hideAdvisories()V

    .line 722
    :cond_0
    return-void
.end method

.method private initBack()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 217
    return-void
.end method

.method private initGeneric(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 341
    const v0, 0x7f090055

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelectorEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 343
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    const v1, 0x7f0200f7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 344
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/TopPanel$8;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/TopPanel$8;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 352
    return-void
.end method

.method private initLanguages(Landroid/view/Menu;)V
    .locals 3

    .prologue
    .line 224
    new-instance v0, Lcom/netflix/mediaclient/ui/player/TopPanel$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/player/TopPanel$3;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V

    .line 256
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isTablet()Z

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/ui/common/LanguageSelector;->createInstance(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/common/LanguageSelector$LanguageSelectorCallback;)Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguageSelector:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    .line 259
    const v0, 0x7f090056

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguage:Landroid/view/MenuItem;

    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguage:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->showLanguageMenuItem()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 261
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguage:Landroid/view/MenuItem;

    const v1, 0x7f0201c0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguage:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguage:Landroid/view/MenuItem;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/TopPanel$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/TopPanel$4;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 274
    return-void
.end method

.method private initMDX(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 356
    const v0, 0x7f090057

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMdxTarget:Landroid/view/MenuItem;

    .line 357
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMdxTarget:Landroid/view/MenuItem;

    const v1, 0x7f020204

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 358
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMdxTarget:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMDXSelectorEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 359
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMdxTarget:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMdxTarget:Landroid/view/MenuItem;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/TopPanel$9;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/TopPanel$9;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 370
    return-void
.end method

.method private initQa(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 280
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab8319;->isInTest(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 285
    :cond_0
    const-string/jumbo v1, "DEBUG metadata"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mDebugMetadata:Landroid/view/MenuItem;

    .line 286
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mDebugMetadata:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 287
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mDebugMetadata:Landroid/view/MenuItem;

    new-instance v2, Lcom/netflix/mediaclient/ui/player/TopPanel$5;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/player/TopPanel$5;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 302
    const-string/jumbo v1, "DEBUG overlay"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mDebugGraphicOverlay:Landroid/view/MenuItem;

    .line 303
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mDebugGraphicOverlay:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 304
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mDebugGraphicOverlay:Landroid/view/MenuItem;

    new-instance v2, Lcom/netflix/mediaclient/ui/player/TopPanel$6;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/player/TopPanel$6;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 325
    const-string/jumbo v1, "DEBUG bitrate control"

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mDebugBitrateControl:Landroid/view/MenuItem;

    .line 326
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mDebugBitrateControl:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 327
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mDebugBitrateControl:Landroid/view/MenuItem;

    new-instance v2, Lcom/netflix/mediaclient/ui/player/TopPanel$7;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/player/TopPanel$7;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 334
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mDebugBitrateControl:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isOfflinePlayback()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private initSound(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 200
    const v0, 0x7f090064

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mSound:Landroid/view/MenuItem;

    .line 201
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mSound:Landroid/view/MenuItem;

    const v1, 0x7f0201d1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mSound:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mSound:Landroid/view/MenuItem;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/TopPanel$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/TopPanel$2;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 211
    return-void
.end method

.method private isMdxTargetSelectionVisible()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->isMdxTargetSelectionVisible(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;)Z

    move-result v0

    return v0
.end method

.method private isMdxTargetSelectionVisible(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 504
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getMdxTargets()[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getMdxTargets()[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v1

    array-length v1, v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processLanguageChange(Lcom/netflix/mediaclient/media/Language;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 513
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    .line 514
    if-nez v0, :cond_1

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/l10n/LanguageUtils;->saveUserChoice(Landroid/content/Context;Lcom/netflix/mediaclient/media/Language;)V

    .line 519
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedAudio()Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v4

    .line 520
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getSelectedSubtitle()Lcom/netflix/mediaclient/media/Subtitle;

    move-result-object v5

    .line 523
    if-nez v5, :cond_2

    .line 524
    const-string/jumbo v0, "screen"

    const-string/jumbo v3, "Selected subtitle is NONE"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    move v3, v2

    .line 537
    :goto_1
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v6}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getSubtitleManager()Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/netflix/mediaclient/ui/player/subtitles/SubtitleManager;->setSubtitleVisibility(Z)V

    .line 540
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/AudioSource;->getNccpOrderNumber()I

    move-result v3

    .line 541
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getCurrentNccpAudioIndex()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 547
    const-string/jumbo v0, "screen"

    const-string/jumbo v3, "Start change language, get awake clock"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 552
    :goto_2
    if-eqz v5, :cond_5

    .line 553
    invoke-interface {v5}, Lcom/netflix/mediaclient/media/Subtitle;->getNccpOrderNumber()I

    move-result v3

    .line 554
    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/Language;->getCurrentNccpSubtitleIndex()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 568
    :goto_3
    if-eqz v1, :cond_0

    .line 569
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Reloading tracks"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0, p1, v2}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->changeLanguage(Lcom/netflix/mediaclient/media/Language;Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    move v3, v1

    .line 528
    goto :goto_1

    .line 549
    :cond_3
    const-string/jumbo v3, "screen"

    const-string/jumbo v4, "No need to change audio."

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 561
    :cond_4
    const-string/jumbo v1, "screen"

    const-string/jumbo v3, "No need to change subtitle."

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_3

    .line 564
    :cond_5
    const-string/jumbo v0, "screen"

    const-string/jumbo v3, "Subtitle is off"

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private showAdvisories()V
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayScreen;->showAdvisories()V

    .line 715
    :cond_0
    return-void
.end method

.method private showLanguageMenuItem()Z
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getLanguage()Lcom/netflix/mediaclient/media/Language;

    move-result-object v0

    .line 658
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguage:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/media/Language;->isLanguageSwitchEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLastPanelInteractionTime()V
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->extendTimeoutTimer()V

    .line 691
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized changeActionState(Z)V
    .locals 1

    .prologue
    .line 600
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguage:Landroid/view/MenuItem;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->enableButton(Landroid/view/MenuItem;Z)V

    .line 601
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->enableButton(Landroid/view/MenuItem;Z)V

    .line 602
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMdxTarget:Landroid/view/MenuItem;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->enableButton(Landroid/view/MenuItem;Z)V

    .line 603
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mSound:Landroid/view/MenuItem;

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->enableButton(Landroid/view/MenuItem;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    monitor-exit p0

    return-void

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 618
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTitleLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 623
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTitleLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    :cond_1
    monitor-exit p0

    return-void

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected displayMdxTargets()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getMdxTargets()[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;->getMdxTargets()[Lcom/netflix/mediaclient/ui/mdx/MdxTarget;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 404
    :cond_0
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Non local targets are not available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    :goto_0
    return-void

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "MDX target is reachable, display dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->createMdxTargetSelectionDialog(Lcom/netflix/mediaclient/ui/player/PlayerFragment;)Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->displayDialog(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method getLanguageSelector()Lcom/netflix/mediaclient/ui/common/LanguageSelector;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mLanguageSelector:Lcom/netflix/mediaclient/ui/common/LanguageSelector;

    return-object v0
.end method

.method public declared-synchronized hide()V
    .locals 1

    .prologue
    .line 608
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->changeControlsVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    monitor-exit p0

    return-void

    .line 608
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->getScreen()Lcom/netflix/mediaclient/ui/player/PlayScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mScreen:Lcom/netflix/mediaclient/ui/player/PlayScreen;

    .line 175
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->initMDX(Landroid/view/Menu;)V

    .line 176
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->initGeneric(Landroid/view/Menu;)V

    .line 177
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->initBack()V

    .line 178
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->initQa(Landroid/view/Menu;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->initLanguages(Landroid/view/Menu;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel;->initSound(Landroid/view/Menu;)V

    .line 181
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 190
    const-string/jumbo v0, "screen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled menu action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 186
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mUpActionListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 187
    const/4 v0, 0x1

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method setEpisodeSelectorVisibility(Z)V
    .locals 1

    .prologue
    .line 676
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelectorEnabled:Z

    .line 678
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    .line 682
    :goto_0
    return-void

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mEpisodeSelector:Landroid/view/MenuItem;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/MenuItem;Z)V

    goto :goto_0
.end method

.method setGradientVisibility(Z)V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTopGradient:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 702
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTopGradient:Landroid/view/View;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTopGradient:Landroid/view/View;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 706
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mTopGradient:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->startViewAppearanceAnimation(Landroid/view/View;Z)Landroid/view/ViewPropertyAnimator;

    .line 708
    :cond_1
    return-void

    .line 702
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setMdxTargetSelector(Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;)V
    .locals 2

    .prologue
    .line 378
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mdxTargetSelector:Lcom/netflix/mediaclient/ui/mdx/MdxTargetSelection;

    .line 379
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->isMdxTargetSelectionVisible()Z

    move-result v0

    .line 380
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->isShowing()Z

    move-result v1

    .line 387
    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 389
    const-string/jumbo v0, "screen"

    const-string/jumbo v1, "Player activity was destroyed, do nothing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 393
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMdxTarget:Landroid/view/MenuItem;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibility(Landroid/view/MenuItem;Z)V

    .line 394
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->mMDXSelectorEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/TopPanel;->playerFragment:Lcom/netflix/mediaclient/ui/player/PlayerFragment;

    new-instance v1, Lcom/netflix/mediaclient/ui/player/TopPanel$12;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/player/TopPanel$12;-><init>(Lcom/netflix/mediaclient/ui/player/TopPanel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/player/PlayerFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 592
    :cond_0
    return-void
.end method

.method public declared-synchronized show()V
    .locals 1

    .prologue
    .line 613
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/player/TopPanel;->changeControlsVisibility(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    monitor-exit p0

    return-void

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
