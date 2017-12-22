.class public Lcom/netflix/mediaclient/android/widget/NetflixActionBar;
.super Ljava/lang/Object;
.source "NetflixActionBar.java"


# static fields
.field private static final HIDE_ANIMATION_DURATION_MS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "NetflixActionBar"


# instance fields
.field private actionBarGroup:Landroid/view/ViewGroup;

.field protected final activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field private backButton:Landroid/graphics/drawable/Drawable;

.field private hasUpAction:Z

.field private homeView:Landroid/view/View;

.field protected systemActionBar:Landroid/support/v7/app/ActionBar;

.field protected toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p2, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hasUpAction:Z

    .line 60
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 62
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->attachToolBarToViewHierarchy()V

    .line 63
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setToolBarAsActionBar(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->init(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V

    .line 66
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->findNavigationView()V

    .line 67
    return-void
.end method

.method private applyUpButtonTint()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_1

    .line 211
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->manageActionBarIcon(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 218
    :cond_1
    return-void
.end method

.method private attachToolBarToViewHierarchy()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->actionBarGroup:Landroid/view/ViewGroup;

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->actionBarGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 127
    const-string/jumbo v0, "NetflixActionBar"

    const-string/jumbo v1, "actionBarGroup is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->actionBarGroup:Landroid/view/ViewGroup;

    const v1, 0x7f10008f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_2

    .line 133
    const-string/jumbo v0, "NetflixActionBar"

    const-string/jumbo v1, "toolBar is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/home/HomeActivity;

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v2, 0x7f02026d

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 140
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 141
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->actionBarGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1}, Lcom/netflix/android/widgetry/utils/UiUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarParentViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 147
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->actionBarGroup:Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private findNavigationView()V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 170
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 172
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 173
    check-cast v0, Landroid/widget/ImageView;

    .line 174
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 175
    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->homeView:Landroid/view/View;

    .line 181
    :cond_0
    return-void

    .line 170
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private init(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 77
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setupFocusability()V

    .line 78
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->FULL_SIZE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V

    .line 79
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 80
    return-void
.end method

.method private performUpAction()Z
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hasUpAction:Z

    if-eqz v0, :cond_0

    .line 393
    const-string/jumbo v0, "NetflixActionBar"

    const-string/jumbo v1, "performing up action"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->performUpAction()V

    .line 395
    const/4 v0, 0x1

    .line 397
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setToolBarAsActionBar(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 112
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_1

    .line 114
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "ActionBar is null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    return-void
.end method

.method private setupFocusability()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const v1, 0x102002c

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 229
    if-nez v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 239
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 240
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 241
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public bringToFront()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->actionBarGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->actionBarGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 163
    :cond_0
    return-void
.end method

.method public getActionBarGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->actionBarGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    return-object v0
.end method

.method public getCastMenu()Landroid/view/View;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getFullSizeLogoId()I
    .locals 1

    .prologue
    .line 337
    const/high16 v0, 0x7f020000

    return v0
.end method

.method public getHomeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->homeView:Landroid/view/View;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 384
    const v0, 0x7f03001b

    return v0
.end method

.method public getSearchMenu()Landroid/view/View;
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f100001

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public handleHomeButtonSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 250
    const-string/jumbo v0, "NetflixActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleHomeButtonSelected, id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->performUpAction()Z

    move-result v0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 271
    if-eqz p1, :cond_0

    .line 272
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 273
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 274
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 277
    return-void
.end method

.method public hidelogo()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 259
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public onManagerReady()V
    .locals 0

    .prologue
    .line 299
    return-void
.end method

.method public replaceUpButtonWithCancelIcon(Z)V
    .locals 2

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->backButton:Landroid/graphics/drawable/Drawable;

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->backButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setAlpha(F)V

    .line 404
    :cond_0
    return-void
.end method

.method public setAlphaWithAnimation(FI)V
    .locals 4

    .prologue
    .line 411
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 414
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setBackgroundResource(I)V

    .line 105
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 1

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hasUpAction:Z

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 196
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->findNavigationView()V

    .line 198
    if-eqz p1, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->applyUpButtonTint()V

    .line 201
    :cond_0
    return-void
.end method

.method public setDropShadowVisibility(Z)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->actionBarGroup:Landroid/view/ViewGroup;

    const v1, 0x7f10009e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    .line 155
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 157
    :cond_0
    return-void
.end method

.method public setLogoType(Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 303
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 304
    const-string/jumbo v0, "NetflixActionBar"

    const-string/jumbo v1, "system actionBar is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    return-void

    .line 308
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->GONE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    if-ne p1, v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 317
    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->FULL_SIZE:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->MONOCHROME:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    if-ne p1, v0, :cond_5

    .line 318
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getFullSizeLogoId()I

    move-result v0

    .line 321
    :goto_1
    const-string/jumbo v2, "NetflixActionBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set logo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    sget-object v2, Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;->MONOCHROME:Lcom/netflix/mediaclient/android/widget/NetflixActionBar$LogoType;

    if-ne p1, v2, :cond_4

    .line 323
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_3

    .line 325
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 326
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 332
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    goto :goto_0

    .line 329
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public setSandwichIcon(Z)V
    .locals 2

    .prologue
    .line 88
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz p1, :cond_0

    const v0, 0x7f020127

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 89
    return-void

    .line 88
    :cond_0
    const v0, 0x7f020125

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 359
    const-string/jumbo v0, "NetflixActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set subtitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 361
    const-string/jumbo v0, "NetflixActionBar"

    const-string/jumbo v1, "system actionBar is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setSubtitleColor(I)V
    .locals 3

    .prologue
    .line 368
    const-string/jumbo v0, "NetflixActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set subtitle color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    .line 370
    const-string/jumbo v0, "NetflixActionBar"

    const-string/jumbo v1, "toolbar is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextColor(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 341
    const-string/jumbo v0, "NetflixActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 343
    const-string/jumbo v0, "NetflixActionBar"

    const-string/jumbo v1, "system actionBar is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTitleColor(I)V
    .locals 3

    .prologue
    .line 350
    const-string/jumbo v0, "NetflixActionBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set title color: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    .line 352
    const-string/jumbo v0, "NetflixActionBar"

    const-string/jumbo v1, "system actionBar is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    goto :goto_0
.end method

.method public show(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 283
    if-eqz p1, :cond_0

    .line 284
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getActionBarHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 285
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 286
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    .line 289
    return-void
.end method

.method public showLogo()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->systemActionBar:Landroid/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 265
    :cond_0
    return-void
.end method
