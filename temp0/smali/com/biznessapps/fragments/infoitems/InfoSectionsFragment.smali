.class public Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;
.super Lcom/biznessapps/fragments/CommonListFragment;
.source "InfoSectionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/model/InfoItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 13
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 62
    iget-object v8, p0, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 63
    const-string v7, ""

    .line 64
    .local v7, "title":Ljava/lang/String;
    new-instance v8, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$layout;->section_header:I

    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/biznessapps/api/AppCore$UiSettings;->getSectionBarColor()I

    move-result v11

    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/biznessapps/api/AppCore$UiSettings;->getSectionTextColor()I

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;III)V

    iput-object v8, p0, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    .line 67
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 68
    .local v6, "sectionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/biznessapps/model/InfoItem;>;>;"
    iget-object v8, p0, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/InfoItem;

    .line 69
    .local v1, "item":Lcom/biznessapps/model/InfoItem;
    invoke-virtual {v1}, Lcom/biznessapps/model/InfoItem;->getSection()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "section":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/biznessapps/model/InfoItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 71
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 72
    const-string v3, ""

    .line 74
    :cond_0
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 75
    .local v2, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/InfoItem;>;"
    if-nez v2, :cond_1

    .line 76
    new-instance v2, Ljava/util/LinkedList;

    .end local v2    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/InfoItem;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 78
    .restart local v2    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/InfoItem;>;"
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    .end local v1    # "item":Lcom/biznessapps/model/InfoItem;
    .end local v2    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/InfoItem;>;"
    .end local v3    # "section":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 82
    .local v5, "sections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 83
    .restart local v3    # "section":Ljava/lang/String;
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 84
    .restart local v2    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/InfoItem;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 85
    new-instance v4, Lcom/biznessapps/layout/adapters/InfoItemAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$layout;->info_item_row:I

    invoke-direct {v4, v8, v2, v9}, Lcom/biznessapps/layout/adapters/InfoItemAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 87
    .local v4, "sectionAdapter":Lcom/biznessapps/layout/adapters/InfoItemAdapter;
    iget-object v8, p0, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    check-cast v8, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;

    invoke-virtual {v8, v3, v4}, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_1

    .line 90
    .end local v2    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/InfoItem;>;"
    .end local v3    # "section":Ljava/lang/String;
    .end local v4    # "sectionAdapter":Lcom/biznessapps/layout/adapters/InfoItemAdapter;
    :cond_4
    iget-object v8, p0, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v9, p0, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    invoke-virtual {v8, v9}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    const-string v8, "no info"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 92
    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->initListViewListener()V

    .line 95
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "sections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "sectionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/biznessapps/model/InfoItem;>;>;"
    .end local v7    # "title":Ljava/lang/String;
    :cond_5
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INFO_SECTIONS_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->items:Ljava/util/List;

    .line 44
    iget-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->items:Ljava/util/List;

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
    .line 27
    const-string v0, "http://www.biznessapps.com/iphone/info_sections.php?app_code=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 49
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/InfoItem;

    .line 50
    .local v1, "item":Lcom/biznessapps/model/InfoItem;
    if-eqz v1, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 53
    const-string v2, "SECTIONID"

    invoke-virtual {v1}, Lcom/biznessapps/model/InfoItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v2, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 55
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "infoitemsviewcontroller"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v2, "TAB_LABEL"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_LABEL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->startActivity(Landroid/content/Intent;)V

    .line 59
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->items:Ljava/util/List;

    .line 33
    invoke-virtual {p0}, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INFO_SECTIONS_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/infoitems/InfoSectionsFragment;->plugListView(Landroid/app/Activity;)V

    .line 39
    return-void
.end method
