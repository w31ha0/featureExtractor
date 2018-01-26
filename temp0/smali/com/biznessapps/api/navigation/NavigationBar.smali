.class public Lcom/biznessapps/api/navigation/NavigationBar;
.super Ljava/lang/Object;
.source "NavigationBar.java"


# static fields
.field private static currentTabId:J


# instance fields
.field private final context:Landroid/content/Context;

.field private isSelectionSet:Z

.field private tabRootLayout:Landroid/view/ViewGroup;

.field private final tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/api/navigation/TabView;",
            ">;"
        }
    .end annotation
.end field

.field private tabsContainer:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/biznessapps/api/navigation/NavigationBar;->currentTabId:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/api/navigation/NavigationBar;->isSelectionSet:Z

    .line 36
    iput-object p1, p0, Lcom/biznessapps/api/navigation/NavigationBar;->context:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/biznessapps/api/navigation/NavigationBar;->initTabContainerLayout()V

    .line 38
    return-void
.end method

.method private initTabContainerLayout()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationBar;->context:Landroid/content/Context;

    sget v1, Lcom/biznessapps/layout/R$layout;->navigation_bar:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabRootLayout:Landroid/view/ViewGroup;

    .line 136
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabRootLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->navigation_tab_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabsContainer:Landroid/view/ViewGroup;

    .line 137
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 138
    return-void
.end method


# virtual methods
.method public addTab(Lcom/biznessapps/api/navigation/TabView;)V
    .locals 6
    .param p1, "tab"    # Lcom/biznessapps/api/navigation/TabView;

    .prologue
    const/4 v5, -0x1

    .line 46
    iget-object v4, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 50
    invoke-virtual {p1}, Lcom/biznessapps/api/navigation/TabView;->withOldDesign()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v3, "sidesLp":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/biznessapps/api/navigation/NavigationBar;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "leftSide":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/biznessapps/api/navigation/NavigationBar;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    .local v2, "rightSide":Landroid/widget/LinearLayout;
    sget v4, Lcom/biznessapps/layout/R$drawable;->side_line_background:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 55
    sget v4, Lcom/biznessapps/layout/R$drawable;->side_line_background:I

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 57
    iget-object v4, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v4, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/biznessapps/api/navigation/TabView;->getView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-object v4, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .end local v0    # "leftSide":Landroid/widget/LinearLayout;
    .end local v2    # "rightSide":Landroid/widget/LinearLayout;
    .end local v3    # "sidesLp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v4, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/biznessapps/api/navigation/TabView;->getView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public clearTabs()V
    .locals 4

    .prologue
    .line 82
    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/api/navigation/TabView;

    .line 83
    .local v1, "tab":Lcom/biznessapps/api/navigation/TabView;
    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/biznessapps/api/navigation/TabView;->getView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 85
    .end local v1    # "tab":Lcom/biznessapps/api/navigation/TabView;
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 86
    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 87
    return-void
.end method

.method public getCurrentTab()J
    .locals 2

    .prologue
    .line 128
    sget-wide v0, Lcom/biznessapps/api/navigation/NavigationBar;->currentTabId:J

    return-wide v0
.end method

.method public getLayout()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabRootLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public openFirstTab()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 71
    iget-object v1, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/api/navigation/TabView;

    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/TabView;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->performClick()Z

    .line 73
    const/4 v0, 0x1

    .line 75
    :cond_0
    return v0
.end method

.method public resetTabsSelection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/api/navigation/TabView;

    .line 100
    .local v1, "tab":Lcom/biznessapps/api/navigation/TabView;
    invoke-virtual {v1, v3}, Lcom/biznessapps/api/navigation/TabView;->setSelected(Z)V

    goto :goto_0

    .line 102
    .end local v1    # "tab":Lcom/biznessapps/api/navigation/TabView;
    :cond_0
    iput-boolean v3, p0, Lcom/biznessapps/api/navigation/NavigationBar;->isSelectionSet:Z

    .line 103
    return-void
.end method

.method public setActiveTab(J)V
    .locals 5
    .param p1, "tabId"    # J

    .prologue
    const/4 v4, 0x1

    .line 106
    invoke-virtual {p0}, Lcom/biznessapps/api/navigation/NavigationBar;->resetTabsSelection()V

    .line 107
    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/api/navigation/TabView;

    .line 108
    .local v1, "tab":Lcom/biznessapps/api/navigation/TabView;
    invoke-virtual {v1, p1, p2}, Lcom/biznessapps/api/navigation/TabView;->shouldBeSelectedForView(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-virtual {v1, v4}, Lcom/biznessapps/api/navigation/TabView;->setSelected(Z)V

    .line 110
    iput-boolean v4, p0, Lcom/biznessapps/api/navigation/NavigationBar;->isSelectionSet:Z

    .line 112
    sput-wide p1, Lcom/biznessapps/api/navigation/NavigationBar;->currentTabId:J

    .line 117
    .end local v1    # "tab":Lcom/biznessapps/api/navigation/TabView;
    :cond_1
    iget-boolean v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->isSelectionSet:Z

    if-nez v2, :cond_2

    .line 120
    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    iget-object v3, p0, Lcom/biznessapps/api/navigation/NavigationBar;->tabs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/api/navigation/TabView;

    invoke-virtual {v2, v4}, Lcom/biznessapps/api/navigation/TabView;->setSelected(Z)V

    .line 122
    iput-boolean v4, p0, Lcom/biznessapps/api/navigation/NavigationBar;->isSelectionSet:Z

    .line 125
    :cond_2
    return-void
.end method
