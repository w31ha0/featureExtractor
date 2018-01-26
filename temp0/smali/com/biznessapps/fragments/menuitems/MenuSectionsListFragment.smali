.class public Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;
.super Lcom/biznessapps/fragments/CommonListFragment;
.source "MenuSectionsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/model/MenuSection;",
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
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    iget-object v8, p0, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->items:Ljava/util/List;

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

    invoke-virtual {p0}, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/biznessapps/api/AppCore$UiSettings;->getSectionBarColor()I

    move-result v11

    invoke-virtual {p0}, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/biznessapps/api/AppCore$UiSettings;->getSectionTextColor()I

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;-><init>(Landroid/content/Context;III)V

    iput-object v8, p0, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    .line 67
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 68
    .local v6, "sectionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/biznessapps/model/MenuSection;>;>;"
    iget-object v8, p0, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/MenuSection;

    .line 69
    .local v1, "item":Lcom/biznessapps/model/MenuSection;
    invoke-virtual {v1}, Lcom/biznessapps/model/MenuSection;->getSection()Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "section":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/biznessapps/model/MenuSection;->getTitle()Ljava/lang/String;

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
    .local v2, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/MenuSection;>;"
    if-nez v2, :cond_1

    .line 76
    new-instance v2, Ljava/util/LinkedList;

    .end local v2    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/MenuSection;>;"
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 78
    .restart local v2    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/MenuSection;>;"
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    .end local v1    # "item":Lcom/biznessapps/model/MenuSection;
    .end local v2    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/MenuSection;>;"
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
    .restart local v2    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/MenuSection;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 85
    new-instance v4, Lcom/biznessapps/layout/adapters/MenuAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$layout;->menu_row:I

    invoke-direct {v4, v8, v2, v9}, Lcom/biznessapps/layout/adapters/MenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 86
    .local v4, "sectionAdapter":Lcom/biznessapps/layout/adapters/MenuAdapter;
    iget-object v8, p0, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    check-cast v8, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;

    invoke-virtual {v8, v3, v4}, Lcom/biznessapps/layout/adapters/SeparatedListAdapter;->addSection(Ljava/lang/String;Landroid/widget/Adapter;)V

    goto :goto_1

    .line 89
    .end local v2    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/MenuSection;>;"
    .end local v3    # "section":Ljava/lang/String;
    .end local v4    # "sectionAdapter":Lcom/biznessapps/layout/adapters/MenuAdapter;
    :cond_4
    iget-object v8, p0, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    iget-object v9, p0, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->adapter:Lcom/biznessapps/layout/adapters/AbstractAdapter;

    invoke-virtual {v8, v9}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    const-string v8, "no categories"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 91
    invoke-virtual {p0}, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->initListViewListener()V

    .line 94
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v5    # "sections":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "sectionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/biznessapps/model/MenuSection;>;>;"
    .end local v7    # "title":Ljava/lang/String;
    :cond_5
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "MENU_SECTIONS_PROPERTY"

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->items:Ljava/util/List;

    .line 44
    iget-object v0, p0, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->items:Ljava/util/List;

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
    const-string v0, "http://www.biznessapps.com/iphone/menu_sections.php?app_code=%s&version=4"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

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

    check-cast v1, Lcom/biznessapps/model/MenuSection;

    .line 50
    .local v1, "item":Lcom/biznessapps/model/MenuSection;
    if-eqz v1, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 53
    const-string v2, "MENUITEMID"

    invoke-virtual {v1}, Lcom/biznessapps/model/MenuSection;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v2, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 55
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "menuviewcontroller"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v2, "TAB_LABEL"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_LABEL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->startActivity(Landroid/content/Intent;)V

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
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseMenuList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->items:Ljava/util/List;

    .line 33
    invoke-virtual {p0}, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "MENU_SECTIONS_PROPERTY"

    iget-object v2, p0, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/menuitems/MenuSectionsListFragment;->plugListView(Landroid/app/Activity;)V

    .line 39
    return-void
.end method
