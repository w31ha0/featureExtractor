.class public Lcom/biznessapps/fragments/single/HomePartFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "HomePartFragment.java"


# instance fields
.field private columnCount:I

.field private rowCount:I

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 3
    .param p1, "row"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "rowsTab":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    new-instance v0, Lcom/biznessapps/api/navigation/NavigationManager;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/HomePartFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/api/navigation/NavigationManager;-><init>(Landroid/app/Activity;Z)V

    .line 96
    .local v0, "navigManagerRow":Lcom/biznessapps/api/navigation/NavigationManager;
    invoke-virtual {v0, p2}, Lcom/biznessapps/api/navigation/NavigationManager;->setRowTabsItems(Ljava/util/List;)V

    .line 97
    invoke-virtual {v0, p1}, Lcom/biznessapps/api/navigation/NavigationManager;->addLayoutTo(Landroid/view/ViewGroup;)V

    .line 98
    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationManager;->updateTabs()V

    .line 99
    invoke-virtual {v0}, Lcom/biznessapps/api/navigation/NavigationManager;->resetTabsSelection()V

    .line 100
    return-void
.end method

.method private initTabs()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 57
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v9, "rows":Ljava/util/List;, "Ljava/util/List<Landroid/widget/FrameLayout;>;"
    iget-object v12, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->root:Landroid/view/ViewGroup;

    sget v13, Lcom/biznessapps/layout/R$id;->bottom_navig_conrol_container_row1:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 59
    .local v5, "row1Tabs":Landroid/widget/FrameLayout;
    iget-object v12, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->root:Landroid/view/ViewGroup;

    sget v13, Lcom/biznessapps/layout/R$id;->bottom_navig_conrol_container_row2:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 60
    .local v6, "row2Tabs":Landroid/widget/FrameLayout;
    iget-object v12, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->root:Landroid/view/ViewGroup;

    sget v13, Lcom/biznessapps/layout/R$id;->bottom_navig_conrol_container_row3:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 61
    .local v7, "row3Tabs":Landroid/widget/FrameLayout;
    iget-object v12, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->root:Landroid/view/ViewGroup;

    sget v13, Lcom/biznessapps/layout/R$id;->bottom_navig_conrol_container_row4:I

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 63
    .local v8, "row4Tabs":Landroid/widget/FrameLayout;
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v1, v12, :cond_1

    .line 69
    iget v12, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->rowCount:I

    if-ge v1, v12, :cond_0

    .line 70
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/FrameLayout;

    invoke-virtual {v12, v14}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 71
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget v12, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->rowCount:I

    if-ge v1, v12, :cond_5

    .line 76
    iget-object v12, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->tabs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    iget v13, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->columnCount:I

    mul-int/2addr v13, v1

    if-le v12, v13, :cond_4

    .line 77
    add-int/lit8 v12, v1, 0x1

    iget v13, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->columnCount:I

    mul-int v0, v12, v13

    .line 78
    .local v0, "highLimit":I
    iget-object v12, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->tabs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    sub-int v3, v0, v12

    .line 79
    .local v3, "missedTabs":I
    iget-object v12, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->tabs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-le v0, v12, :cond_2

    .line 80
    iget-object v12, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->tabs:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    .line 82
    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    iget-object v12, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->tabs:Ljava/util/List;

    iget v13, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->columnCount:I

    mul-int/2addr v13, v1

    invoke-interface {v12, v13, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 83
    .local v10, "subList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v3, :cond_3

    .line 84
    new-instance v11, Lcom/biznessapps/model/Tab;

    invoke-direct {v11}, Lcom/biznessapps/model/Tab;-><init>()V

    .line 85
    .local v11, "tab":Lcom/biznessapps/model/Tab;
    invoke-virtual {v11, v14}, Lcom/biznessapps/model/Tab;->setActive(Z)V

    .line 86
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 88
    .end local v11    # "tab":Lcom/biznessapps/model/Tab;
    :cond_3
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 89
    .local v4, "row":Landroid/widget/FrameLayout;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v4, v12}, Lcom/biznessapps/fragments/single/HomePartFragment;->addRow(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 75
    .end local v0    # "highLimit":I
    .end local v2    # "j":I
    .end local v3    # "missedTabs":I
    .end local v4    # "row":Landroid/widget/FrameLayout;
    .end local v10    # "subList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 92
    :cond_5
    return-void
.end method


# virtual methods
.method public getColumnCount()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->columnCount:I

    return v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->rowCount:I

    return v0
.end method

.method protected hasTitleBar()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    sget v0, Lcom/biznessapps/layout/R$layout;->home_part_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->root:Landroid/view/ViewGroup;

    .line 52
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/HomePartFragment;->initTabs()V

    .line 53
    iget-object v0, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setColumnCount(I)V
    .locals 0
    .param p1, "columnCount"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->columnCount:I

    .line 42
    return-void
.end method

.method public setRowCount(I)V
    .locals 0
    .param p1, "rowCount"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->rowCount:I

    .line 34
    return-void
.end method

.method public setTabs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/Tab;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    iput-object p1, p0, Lcom/biznessapps/fragments/single/HomePartFragment;->tabs:Ljava/util/List;

    .line 27
    return-void
.end method
