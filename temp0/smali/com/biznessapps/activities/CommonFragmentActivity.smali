.class public abstract Lcom/biznessapps/activities/CommonFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CommonFragmentActivity.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;
    }
.end annotation


# static fields
.field protected static final NO_TAB_DEFINED:J = -0x1L


# instance fields
.field private backPressedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;",
            ">;"
        }
    .end annotation
.end field

.field private isTabMenuUsed:Z

.field protected navigManager:Lcom/biznessapps/api/navigation/NavigationManager;

.field protected navigationContainer:Landroid/widget/FrameLayout;

.field protected progressBar:Landroid/app/ProgressDialog;

.field protected progressBarContainer:Landroid/view/ViewGroup;

.field protected rootLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->backPressedListeners:Ljava/util/List;

    .line 247
    return-void
.end method

.method private initNavigationManager()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 206
    new-instance v0, Lcom/biznessapps/api/navigation/NavigationManager;

    invoke-direct {v0, p0}, Lcom/biznessapps/api/navigation/NavigationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->navigManager:Lcom/biznessapps/api/navigation/NavigationManager;

    .line 207
    sget v0, Lcom/biznessapps/layout/R$id;->bottom_navig_conrol_container:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->navigationContainer:Landroid/widget/FrameLayout;

    .line 208
    iget-object v0, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->navigManager:Lcom/biznessapps/api/navigation/NavigationManager;

    iget-object v2, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->navigationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lcom/biznessapps/api/navigation/NavigationManager;->addLayoutTo(Landroid/view/ViewGroup;)V

    .line 209
    invoke-static {}, Lcom/biznessapps/api/navigation/NavigationManager;->isNewDesign()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->isTabMenuUsed:Z

    .line 210
    iget-boolean v0, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->isTabMenuUsed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->hasNavigationMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->navigationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 215
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 209
    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->navigationContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private initTitleBar()V
    .locals 7

    .prologue
    const v6, 0x3f99999a    # 1.2f

    .line 218
    sget v3, Lcom/biznessapps/layout/R$id;->tab_title_container:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/activities/CommonFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 219
    .local v1, "titleBarRoot":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getTitleBg()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    sget v3, Lcom/biznessapps/layout/R$id;->tab_title_text:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 222
    .local v2, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CHILDREN_TAB_LABEL_PRESENT"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 223
    .local v0, "isChildLabelPresent":Z
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CHILDREN_TAB_LABEL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :goto_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore$UiSettings;->getNavigationTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore$UiSettings;->getNavigationTextShadowColor()I

    move-result v3

    invoke-virtual {v2, v6, v6, v6, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 230
    return-void

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_LABEL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addBackPressedListener(Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;)V
    .locals 1
    .param p1, "listenerToAdd"    # Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->backPressedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public cacher()Lcom/biznessapps/api/CachingManager;
    .locals 1

    .prologue
    .line 137
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 163
    sget v0, Lcom/biznessapps/layout/R$layout;->common_fragment_layout:I

    return v0
.end method

.method public getNavigationManager()Lcom/biznessapps/api/navigation/NavigationManager;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->navigManager:Lcom/biznessapps/api/navigation/NavigationManager;

    return-object v0
.end method

.method public getProgressBar()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->progressBar:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public getProgressBarContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->progressBarContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTabId()J
    .locals 6

    .prologue
    .line 111
    const-wide/16 v0, -0x1

    .line 112
    .local v0, "tabId":J
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_UNIQUE_ID"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 115
    :cond_0
    return-wide v0
.end method

.method public getTitleBg()Landroid/graphics/drawable/GradientDrawable;
    .locals 5

    .prologue
    .line 233
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore$UiSettings;->getNavigationBarColor()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 238
    .local v0, "gradientBg":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 239
    return-object v0
.end method

.method protected hasNavigationMenu()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method protected hasTitleBar()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 99
    const/4 v0, 0x1

    .line 100
    .local v0, "handleByActivity":Z
    iget-object v3, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->backPressedListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;

    .line 101
    .local v2, "listener":Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;
    invoke-interface {v2}, Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;->onBackPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    const/4 v0, 0x0

    goto :goto_0

    .line 105
    .end local v2    # "listener":Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;
    :cond_1
    if-eqz v0, :cond_2

    .line 106
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 108
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->requestWindowFeature(I)Z

    .line 84
    invoke-static {}, Lcom/biznessapps/api/UIHandler;->get()Landroid/os/Handler;

    .line 85
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->onPreInit()V

    .line 86
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getLayoutId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->setContentView(I)V

    .line 87
    sget v0, Lcom/biznessapps/layout/R$id;->progress_bar_container:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/activities/CommonFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->progressBarContainer:Landroid/view/ViewGroup;

    .line 88
    invoke-direct {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->initNavigationManager()V

    .line 89
    return-void
.end method

.method protected onPreInit()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/BAcore;

    invoke-virtual {v0, p0}, Lcom/biznessapps/layout/BAcore;->attach(Landroid/app/Activity;)V

    .line 203
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 168
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 169
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/layout/BAcore;

    invoke-virtual {v1, p0}, Lcom/biznessapps/layout/BAcore;->attach(Landroid/app/Activity;)V

    .line 170
    iget-boolean v1, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->isTabMenuUsed:Z

    if-eqz v1, :cond_1

    .line 171
    invoke-static {}, Lcom/biznessapps/api/navigation/NavigationManager;->getTabsItems()Ljava/util/List;

    move-result-object v0

    .line 172
    .local v0, "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->navigManager:Lcom/biznessapps/api/navigation/NavigationManager;

    invoke-virtual {v1}, Lcom/biznessapps/api/navigation/NavigationManager;->clearTabs()V

    .line 174
    iget-object v1, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->navigManager:Lcom/biznessapps/api/navigation/NavigationManager;

    invoke-virtual {v1}, Lcom/biznessapps/api/navigation/NavigationManager;->updateTabs()V

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 177
    iget-object v1, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->navigManager:Lcom/biznessapps/api/navigation/NavigationManager;

    iget-object v2, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->navigManager:Lcom/biznessapps/api/navigation/NavigationManager;

    invoke-virtual {v2}, Lcom/biznessapps/api/navigation/NavigationManager;->getCurrentTabSelection()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/api/navigation/NavigationManager;->setTabSelection(J)V

    .line 182
    .end local v0    # "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->hasTitleBar()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    invoke-direct {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->initTitleBar()V

    .line 185
    :cond_2
    return-void

    .line 179
    .restart local v0    # "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    :cond_3
    iget-object v1, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->navigManager:Lcom/biznessapps/api/navigation/NavigationManager;

    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/biznessapps/api/navigation/NavigationManager;->setTabSelection(J)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 196
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/BAcore;

    invoke-virtual {v0, p0}, Lcom/biznessapps/layout/BAcore;->detach(Landroid/app/Activity;)V

    .line 197
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 190
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/BAcore;

    invoke-virtual {v0, p0}, Lcom/biznessapps/layout/BAcore;->detach(Landroid/app/Activity;)V

    .line 191
    return-void
.end method

.method public removeBackPressedListener(Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;)V
    .locals 1
    .param p1, "listenerToRemove"    # Lcom/biznessapps/activities/CommonFragmentActivity$BackPressed;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->backPressedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public setProgressBar(Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "progressBar"    # Landroid/app/ProgressDialog;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->progressBar:Landroid/app/ProgressDialog;

    .line 58
    return-void
.end method

.method public showProgressBar()V
    .locals 4

    .prologue
    .line 145
    :try_start_0
    const-string v1, ""

    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->loading:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->progressBar:Landroid/app/ProgressDialog;

    .line 146
    iget-object v1, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->progressBar:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopProgressBar()V
    .locals 2

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->progressBar:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->progressBar:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/biznessapps/activities/CommonFragmentActivity;->progressBar:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
