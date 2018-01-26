.class public Lcom/biznessapps/fragments/lists/DirectionsFragment;
.super Lcom/biznessapps/fragments/CommonListFragment;
.source "DirectionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/model/LocationItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 5
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 49
    iget-object v4, p0, Lcom/biznessapps/fragments/lists/DirectionsFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 50
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 51
    .local v3, "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LocationItem;>;"
    iget-object v4, p0, Lcom/biznessapps/fragments/lists/DirectionsFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/LocationItem;

    .line 52
    .local v2, "item":Lcom/biznessapps/model/LocationItem;
    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/fragments/lists/DirectionsFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    .end local v2    # "item":Lcom/biznessapps/model/LocationItem;
    :cond_0
    new-instance v0, Lcom/biznessapps/layout/adapters/CommonAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/biznessapps/layout/adapters/CommonAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 55
    .local v0, "ex":Lcom/biznessapps/layout/adapters/CommonAdapter;, "Lcom/biznessapps/layout/adapters/CommonAdapter<Lcom/biznessapps/model/LocationItem;>;"
    iget-object v4, p0, Lcom/biznessapps/fragments/lists/DirectionsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v4, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    invoke-virtual {p0}, Lcom/biznessapps/fragments/lists/DirectionsFragment;->initListViewListener()V

    .line 58
    .end local v0    # "ex":Lcom/biznessapps/layout/adapters/CommonAdapter;, "Lcom/biznessapps/layout/adapters/CommonAdapter<Lcom/biznessapps/model/LocationItem;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LocationItem;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/biznessapps/fragments/lists/DirectionsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "DIRECTIONS_LIST_PROPERTY"

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/fragments/lists/DirectionsFragment;->items:Ljava/util/List;

    .line 37
    iget-object v0, p0, Lcom/biznessapps/fragments/lists/DirectionsFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 20
    const-string v0, "http://biznessapps.com/iphone/direction_list.php?app_code=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/lists/DirectionsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/lists/DirectionsFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 42
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/LocationItem;

    .line 43
    .local v0, "item":Lcom/biznessapps/model/LocationItem;
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/biznessapps/fragments/lists/DirectionsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/biznessapps/model/LocationItem;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/biznessapps/model/LocationItem;->getLatitude()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/biznessapps/utils/ViewUtils;->openGoogleMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseLocationList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/lists/DirectionsFragment;->items:Ljava/util/List;

    .line 26
    invoke-virtual {p0}, Lcom/biznessapps/fragments/lists/DirectionsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "DIRECTIONS_LIST_PROPERTY"

    iget-object v2, p0, Lcom/biznessapps/fragments/lists/DirectionsFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/lists/DirectionsFragment;->plugListView(Landroid/app/Activity;)V

    .line 32
    return-void
.end method
