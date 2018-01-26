.class public Lcom/biznessapps/fragments/webview/WebViewTiersFragment;
.super Lcom/biznessapps/fragments/CommonListFragment;
.source "WebViewTiersFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/model/WebTierItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method private openWebView(Landroid/app/Activity;Lcom/biznessapps/model/WebTierItem;)V
    .locals 5
    .param p1, "holdActivity"    # Landroid/app/Activity;
    .param p2, "item"    # Lcom/biznessapps/model/WebTierItem;

    .prologue
    .line 85
    if-eqz p2, :cond_1

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Lcom/biznessapps/model/WebTierItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "URL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    :cond_0
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    const-string v2, "URL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v2, "TAB_UNIQUE_ID"

    check-cast p1, Lcom/biznessapps/activities/CommonFragmentActivity;

    .end local p1    # "holdActivity":Landroid/app/Activity;
    invoke-virtual {p1}, Lcom/biznessapps/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 95
    const-string v2, "TAB_LABEL"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_LABEL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->startActivity(Landroid/content/Intent;)V

    .line 102
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 98
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "url":Ljava/lang/String;
    .restart local p1    # "holdActivity":Landroid/app/Activity;
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->data_loading_failure:I

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 99
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 9
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 51
    iget-object v5, p0, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 52
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 53
    .local v4, "webTiers":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/WebTierItem;>;"
    iget-object v5, p0, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_2

    const-string v8, "no categories"

    iget-object v5, p0, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->items:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/model/WebTierItem;

    invoke-virtual {v5}, Lcom/biznessapps/model/WebTierItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v6

    .line 54
    .local v1, "hasNoData":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 55
    iget-object v5, p0, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->items:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/model/CommonListEntity;

    invoke-virtual {p0, v5, v4}, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    :goto_1
    new-instance v0, Lcom/biznessapps/layout/adapters/WebTierAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$layout;->web_tier_item:I

    invoke-direct {v0, v5, v4, v6}, Lcom/biznessapps/layout/adapters/WebTierAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 71
    .local v0, "ex":Lcom/biznessapps/layout/adapters/WebTierAdapter;
    iget-object v5, p0, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v5, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    if-nez v1, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->initListViewListener()V

    .line 76
    .end local v0    # "ex":Lcom/biznessapps/layout/adapters/WebTierAdapter;
    .end local v1    # "hasNoData":Z
    .end local v4    # "webTiers":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/WebTierItem;>;"
    :cond_1
    return-void

    .restart local v4    # "webTiers":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/WebTierItem;>;"
    :cond_2
    move v1, v7

    .line 53
    goto :goto_0

    .line 59
    .restart local v1    # "hasNoData":Z
    :cond_3
    iget-object v5, p0, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 62
    iget-object v5, p0, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->items:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/model/WebTierItem;

    invoke-direct {p0, p1, v5}, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->openWebView(Landroid/app/Activity;Lcom/biznessapps/model/WebTierItem;)V

    .line 63
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 65
    :cond_4
    iget-object v5, p0, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/model/WebTierItem;

    .line 66
    .local v3, "item":Lcom/biznessapps/model/WebTierItem;
    invoke-virtual {p0, v3, v4}, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WEB_TIERS_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->items:Ljava/util/List;

    .line 47
    iget-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->items:Ljava/util/List;

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
    .line 29
    const-string v0, "http://www.biznessapps.com/iphone/web_tiers.php?app_code=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->tabId:Ljava/lang/String;

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
    .line 80
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/WebTierItem;

    .line 81
    .local v0, "item":Lcom/biznessapps/model/WebTierItem;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->openWebView(Landroid/app/Activity;Lcom/biznessapps/model/WebTierItem;)V

    .line 82
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseWebTiers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->items:Ljava/util/List;

    .line 36
    invoke-virtual {p0}, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WEB_TIERS_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/webview/WebViewTiersFragment;->plugListView(Landroid/app/Activity;)V

    .line 42
    return-void
.end method
