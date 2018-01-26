.class public Lcom/biznessapps/fragments/youtube/YoutubeListFragment;
.super Lcom/biznessapps/fragments/CommonListFragment;
.source "YoutubeListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/model/YoutubeRssItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 5
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 58
    iget-object v4, p0, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 59
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v3, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/YoutubeRssItem;>;"
    iget-object v4, p0, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/YoutubeRssItem;

    .line 61
    .local v2, "item":Lcom/biznessapps/model/YoutubeRssItem;
    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v2    # "item":Lcom/biznessapps/model/YoutubeRssItem;
    :cond_0
    new-instance v0, Lcom/biznessapps/layout/adapters/YoutubeRssAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/biznessapps/layout/adapters/YoutubeRssAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 64
    .local v0, "ex":Lcom/biznessapps/layout/adapters/YoutubeRssAdapter;
    iget-object v4, p0, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v4, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    invoke-virtual {p0}, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->initListViewListener()V

    .line 67
    .end local v0    # "ex":Lcom/biznessapps/layout/adapters/YoutubeRssAdapter;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/YoutubeRssItem;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "YOUTUBE_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->items:Ljava/util/List;

    .line 38
    iget-object v0, p0, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->items:Ljava/util/List;

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
    .line 21
    const-string v0, "http://www.biznessapps.com/iphone/rss.php?app_code=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->tabId:Ljava/lang/String;

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
    .line 43
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/YoutubeRssItem;

    .line 44
    .local v1, "item":Lcom/biznessapps/model/YoutubeRssItem;
    if-eqz v1, :cond_0

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "FAN_WALL_COMMENT_PARENT_ID"

    invoke-virtual {v1}, Lcom/biznessapps/model/YoutubeRssItem;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v2, "LINK"

    invoke-virtual {v1}, Lcom/biznessapps/model/YoutubeRssItem;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v2, "IMAGE_URL"

    invoke-virtual {v1}, Lcom/biznessapps/model/YoutubeRssItem;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "YOUTUBE_SINGLE_VIEW_FRAGMENT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v2, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 51
    const-string v2, "TAB_LABEL"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_LABEL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->startActivity(Landroid/content/Intent;)V

    .line 55
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseYoutubeRssList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->items:Ljava/util/List;

    .line 27
    invoke-virtual {p0}, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "YOUTUBE_LIST_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->items:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/youtube/YoutubeListFragment;->plugListView(Landroid/app/Activity;)V

    .line 33
    return-void
.end method
