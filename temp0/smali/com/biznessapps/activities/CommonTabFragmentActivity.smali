.class public abstract Lcom/biznessapps/activities/CommonTabFragmentActivity;
.super Lcom/biznessapps/activities/CommonFragmentActivity;
.source "CommonTabFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/activities/CommonTabFragmentActivity$SwipeyTabsPagerAdapter;
    }
.end annotation


# static fields
.field protected static final FIRST_LOAD_TAB_INDEX:I


# instance fields
.field protected fragmentsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field protected selectedItem:I

.field protected tabFragmentsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field protected tabViewPager:Lcom/biznessapps/fragments/CustomizableViewPager;

.field protected tabs:Lcom/biznessapps/fragments/SwipeyTabs;

.field protected viewPager:Lcom/biznessapps/fragments/CustomizableViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/biznessapps/activities/CommonFragmentActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity;->selectedItem:I

    .line 105
    return-void
.end method


# virtual methods
.method protected getHeaderView(Ljava/lang/String;I)Landroid/view/View;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "viewPosition"    # I

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$layout;->swipey_tab_indicator:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance v1, Lcom/biznessapps/activities/CommonTabFragmentActivity$1;

    invoke-direct {v1, p0, p2}, Lcom/biznessapps/activities/CommonTabFragmentActivity$1;-><init>(Lcom/biznessapps/activities/CommonTabFragmentActivity;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-object v0
.end method

.method public getViewPager()Lcom/biznessapps/fragments/CustomizableViewPager;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity;->viewPager:Lcom/biznessapps/fragments/CustomizableViewPager;

    return-object v0
.end method

.method protected initViews()V
    .locals 3

    .prologue
    .line 71
    sget v1, Lcom/biznessapps/layout/R$id;->viewpager:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/fragments/CustomizableViewPager;

    iput-object v1, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity;->viewPager:Lcom/biznessapps/fragments/CustomizableViewPager;

    .line 73
    sget v1, Lcom/biznessapps/layout/R$id;->swipeytabs:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/fragments/SwipeyTabs;

    iput-object v1, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity;->tabs:Lcom/biznessapps/fragments/SwipeyTabs;

    .line 74
    new-instance v0, Lcom/biznessapps/activities/CommonTabFragmentActivity$SwipeyTabsPagerAdapter;

    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity;->fragmentsList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/biznessapps/activities/CommonTabFragmentActivity$SwipeyTabsPagerAdapter;-><init>(Lcom/biznessapps/activities/CommonTabFragmentActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    .line 75
    .local v0, "adapter":Lcom/biznessapps/activities/CommonTabFragmentActivity$SwipeyTabsPagerAdapter;
    iget-object v1, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity;->viewPager:Lcom/biznessapps/fragments/CustomizableViewPager;

    invoke-virtual {v1, v0}, Lcom/biznessapps/fragments/CustomizableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 76
    iget-object v1, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity;->tabs:Lcom/biznessapps/fragments/SwipeyTabs;

    invoke-virtual {v1, v0}, Lcom/biznessapps/fragments/SwipeyTabs;->setAdapter(Lcom/biznessapps/fragments/SwipeyTabsAdapter;)V

    .line 77
    iget-object v1, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity;->viewPager:Lcom/biznessapps/fragments/CustomizableViewPager;

    iget-object v2, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity;->tabs:Lcom/biznessapps/fragments/SwipeyTabs;

    invoke-virtual {v1, v2}, Lcom/biznessapps/fragments/CustomizableViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 78
    iget-object v1, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity;->viewPager:Lcom/biznessapps/fragments/CustomizableViewPager;

    iget v2, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity;->selectedItem:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/fragments/CustomizableViewPager;->setCurrentItem(I)V

    .line 79
    return-void
.end method

.method protected isLandscapeMode()Z
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 96
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract loadFragments()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method protected loadTabFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/biznessapps/activities/CommonFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/model/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/model/AppSettings;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 51
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/layout/MainController;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "restartAppIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->finish()V

    .line 59
    .end local v0    # "restartAppIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->loadFragments()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity;->fragmentsList:Ljava/util/List;

    .line 56
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->loadTabFragments()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/activities/CommonTabFragmentActivity;->tabFragmentsList:Ljava/util/List;

    .line 57
    invoke-virtual {p0}, Lcom/biznessapps/activities/CommonTabFragmentActivity;->initViews()V

    goto :goto_0
.end method
