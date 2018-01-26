.class public abstract Lcom/biznessapps/fragments/CommonListFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "CommonListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/biznessapps/model/CommonListEntity;",
        ">",
        "Lcom/biznessapps/fragments/CommonFragment;"
    }
.end annotation


# instance fields
.field protected adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/biznessapps/layout/adapters/AbstractAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected count:I

.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected listView:Lcom/biznessapps/widgets/RefreshableListView;

.field protected offset:I

.field private final positionListener:Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;

.field protected tabId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lcom/biznessapps/fragments/CommonListFragment;, "Lcom/biznessapps/fragments/CommonListFragment<TT;>;"
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    .line 36
    const/16 v0, 0x14

    iput v0, p0, Lcom/biznessapps/fragments/CommonListFragment;->count:I

    .line 38
    new-instance v0, Lcom/biznessapps/fragments/CommonListFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/CommonListFragment$1;-><init>(Lcom/biznessapps/fragments/CommonListFragment;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/CommonListFragment;->positionListener:Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lcom/biznessapps/fragments/CommonListFragment;, "Lcom/biznessapps/fragments/CommonListFragment<TT;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->list_layout:I

    return v0
.end method

.method protected getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/biznessapps/fragments/CommonListFragment;, "Lcom/biznessapps/fragments/CommonListFragment<TT;>;"
    .local p1, "item":Lcom/biznessapps/model/CommonListEntity;, "TT;"
    .local p2, "itemsList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonListFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore$UiSettings;->isHasColor()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 89
    .local v1, "listSize":I
    const/4 v0, 0x0

    .line 90
    .local v0, "bgColor":I
    const/4 v2, 0x0

    .line 91
    .local v2, "textColor":I
    rem-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonListFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore$UiSettings;->getOddRowColor()I

    move-result v0

    .line 93
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonListFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore$UiSettings;->getOddRowTextColor()I

    move-result v2

    .line 98
    :goto_0
    invoke-virtual {p1, v0}, Lcom/biznessapps/model/CommonListEntity;->setItemColor(I)V

    .line 99
    invoke-virtual {p1, v2}, Lcom/biznessapps/model/CommonListEntity;->setItemTextColor(I)V

    .line 101
    .end local v0    # "bgColor":I
    .end local v1    # "listSize":I
    .end local v2    # "textColor":I
    :cond_0
    return-object p1

    .line 95
    .restart local v0    # "bgColor":I
    .restart local v1    # "listSize":I
    .restart local v2    # "textColor":I
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonListFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore$UiSettings;->getEvenRowColor()I

    move-result v0

    .line 96
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonListFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore$UiSettings;->getEvenRowTextColor()I

    move-result v2

    goto :goto_0
.end method

.method protected initListViewListener()V
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lcom/biznessapps/fragments/CommonListFragment;, "Lcom/biznessapps/fragments/CommonListFragment<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/fragments/CommonListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    new-instance v1, Lcom/biznessapps/fragments/CommonListFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/CommonListFragment$2;-><init>(Lcom/biznessapps/fragments/CommonListFragment;)V

    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    return-void
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 105
    .local p0, "this":Lcom/biznessapps/fragments/CommonListFragment;, "Lcom/biznessapps/fragments/CommonListFragment<TT;>;"
    sget v1, Lcom/biznessapps/layout/R$id;->list_view_root:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 106
    .local v0, "listViewRoot":Landroid/view/ViewGroup;
    sget v1, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/RefreshableListView;

    iput-object v1, p0, Lcom/biznessapps/fragments/CommonListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    .line 107
    iget-object v1, p0, Lcom/biznessapps/fragments/CommonListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v2, p0, Lcom/biznessapps/fragments/CommonListFragment;->positionListener:Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/RefreshableListView;->setPositionListener(Lcom/biznessapps/layout/adapters/AbstractAdapter$PositionListener;)V

    .line 108
    iget-object v1, p0, Lcom/biznessapps/fragments/CommonListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonListFragment;->getAppCore()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore$UiSettings;->getEvenRowColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/RefreshableListView;->setBackgroundColor(I)V

    .line 109
    iget-object v1, p0, Lcom/biznessapps/fragments/CommonListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/RefreshableListView;->setItemsCanFocus(Z)V

    .line 110
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    .local p0, "this":Lcom/biznessapps/fragments/CommonListFragment;, "Lcom/biznessapps/fragments/CommonListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonListFragment;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/CommonListFragment;->root:Landroid/view/ViewGroup;

    .line 48
    iget-object v0, p0, Lcom/biznessapps/fragments/CommonListFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/CommonListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 49
    invoke-virtual {p0}, Lcom/biznessapps/fragments/CommonListFragment;->loadData()V

    .line 50
    iget-object v0, p0, Lcom/biznessapps/fragments/CommonListFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/biznessapps/fragments/CommonListFragment;, "Lcom/biznessapps/fragments/CommonListFragment<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/fragments/CommonListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/RefreshableListView;->removeListeners()V

    .line 56
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonFragment;->onDestroy()V

    .line 57
    return-void
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/biznessapps/fragments/CommonListFragment;, "Lcom/biznessapps/fragments/CommonListFragment<TT;>;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 61
    .local p0, "this":Lcom/biznessapps/fragments/CommonListFragment;, "Lcom/biznessapps/fragments/CommonListFragment<TT;>;"
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/CommonListFragment;->tabId:Ljava/lang/String;

    .line 62
    return-void
.end method
