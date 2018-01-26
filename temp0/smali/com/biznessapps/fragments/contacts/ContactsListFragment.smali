.class public Lcom/biznessapps/fragments/contacts/ContactsListFragment;
.super Lcom/biznessapps/fragments/CommonListFragment;
.source "ContactsListFragment.java"


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
    .line 19
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 6
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 55
    iget-object v4, p0, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 57
    .local v3, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LocationItem;>;"
    iget-object v4, p0, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 59
    iget-object v4, p0, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->items:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/model/LocationItem;

    invoke-direct {p0, p1, v4}, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->startContactActivity(Landroid/app/Activity;Lcom/biznessapps/model/LocationItem;)V

    .line 60
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 71
    .end local v3    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LocationItem;>;"
    :cond_0
    :goto_0
    return-void

    .line 62
    .restart local v3    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/LocationItem;>;"
    :cond_1
    iget-object v4, p0, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/LocationItem;

    .line 63
    .local v2, "item":Lcom/biznessapps/model/LocationItem;
    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    .end local v2    # "item":Lcom/biznessapps/model/LocationItem;
    :cond_2
    new-instance v0, Lcom/biznessapps/layout/adapters/ContactListAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$layout;->location_item:I

    invoke-direct {v0, v4, v3, v5}, Lcom/biznessapps/layout/adapters/ContactListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 67
    .local v0, "ex":Lcom/biznessapps/layout/adapters/ContactListAdapter;
    iget-object v4, p0, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v4, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    invoke-virtual {p0}, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->initListViewListener()V

    goto :goto_0
.end method

.method private startContactActivity(Landroid/app/Activity;Lcom/biznessapps/model/LocationItem;)V
    .locals 5
    .param p1, "holdActivity"    # Landroid/app/Activity;
    .param p2, "item"    # Lcom/biznessapps/model/LocationItem;

    .prologue
    .line 74
    if-eqz p2, :cond_1

    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 78
    const-string v1, "LOCATION_ID"

    invoke-virtual {p2}, Lcom/biznessapps/model/LocationItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :cond_0
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "CONTACTS_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v2, "TAB_UNIQUE_ID"

    move-object v1, p1

    check-cast v1, Lcom/biznessapps/activities/CommonFragmentActivity;

    invoke-virtual {v1}, Lcom/biznessapps/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 83
    const-string v1, "TAB_LABEL"

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_LABEL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 86
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "LOCATION_LIST_PROPERTY"

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->items:Ljava/util/List;

    .line 45
    iget-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/biznessapps/layout/R$layout;->list_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    const-string v0, "http://www.biznessapps.com/iphone/location_list.php?app_code=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 50
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/LocationItem;

    .line 51
    .local v0, "item":Lcom/biznessapps/model/LocationItem;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->startContactActivity(Landroid/app/Activity;Lcom/biznessapps/model/LocationItem;)V

    .line 52
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseLocationList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->items:Ljava/util/List;

    .line 34
    invoke-virtual {p0}, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "LOCATION_LIST_PROPERTY"

    iget-object v2, p0, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/contacts/ContactsListFragment;->plugListView(Landroid/app/Activity;)V

    .line 40
    return-void
.end method
