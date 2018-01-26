.class public Lcom/biznessapps/fragments/single/MoreFragment;
.super Lcom/biznessapps/fragments/CommonListFragment;
.source "MoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/model/TabButton;",
        ">;"
    }
.end annotation


# static fields
.field private static storedTabButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/TabButton;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appSettings:Lcom/biznessapps/model/AppSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonListFragment;-><init>()V

    return-void
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 6
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 70
    iget-object v4, p0, Lcom/biznessapps/fragments/single/MoreFragment;->items:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/biznessapps/fragments/single/MoreFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 71
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 72
    .local v3, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/TabButton;>;"
    iget-object v4, p0, Lcom/biznessapps/fragments/single/MoreFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 74
    iget-object v4, p0, Lcom/biznessapps/fragments/single/MoreFragment;->items:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/model/TabButton;

    invoke-direct {p0, p1, v4}, Lcom/biznessapps/fragments/single/MoreFragment;->startContactActivity(Landroid/app/Activity;Lcom/biznessapps/model/TabButton;)V

    .line 75
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 86
    .end local v3    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/TabButton;>;"
    :cond_0
    :goto_0
    return-void

    .line 77
    .restart local v3    # "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/TabButton;>;"
    :cond_1
    iget-object v4, p0, Lcom/biznessapps/fragments/single/MoreFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/TabButton;

    .line 78
    .local v2, "item":Lcom/biznessapps/model/TabButton;
    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/fragments/single/MoreFragment;->getWrappedItem(Lcom/biznessapps/model/TabButton;Ljava/util/List;)Lcom/biznessapps/model/TabButton;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    .end local v2    # "item":Lcom/biznessapps/model/TabButton;
    :cond_2
    new-instance v0, Lcom/biznessapps/layout/adapters/MoreTabAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$layout;->more_item_row:I

    invoke-direct {v0, v4, v3, v5}, Lcom/biznessapps/layout/adapters/MoreTabAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 82
    .local v0, "adapter":Lcom/biznessapps/layout/adapters/MoreTabAdapter;
    iget-object v4, p0, Lcom/biznessapps/fragments/single/MoreFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v4, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MoreFragment;->initListViewListener()V

    goto :goto_0
.end method

.method private setBackground()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 111
    const/4 v2, 0x0

    .line 114
    .local v2, "moreBgUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/biznessapps/fragments/single/MoreFragment;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v3}, Lcom/biznessapps/model/AppSettings;->getMoreTabBg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/model/AppSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/model/AppSettings;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "appId":Ljava/lang/String;
    const-string v3, "http://www.biznessapps.com/uploads/images/%s/xtra_imgs/%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    iget-object v5, p0, Lcom/biznessapps/fragments/single/MoreFragment;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v5}, Lcom/biznessapps/model/AppSettings;->getMoreTabBg()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .end local v0    # "appId":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MoreFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/fragments/single/MoreFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v3, v2, v4, v6}, Lcom/biznessapps/utils/ImageManager;->download(Ljava/lang/String;Landroid/view/View;Z)V

    .line 124
    return-void

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MoreFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    const-string v4, "APP_INFO_PROPERTY"

    invoke-virtual {v3, v4}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/App;

    .line 119
    .local v1, "appInfo":Lcom/biznessapps/model/App;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/biznessapps/model/App;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v1}, Lcom/biznessapps/model/App;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static setTabButtons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/TabButton;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/TabButton;>;"
    sput-object p0, Lcom/biznessapps/fragments/single/MoreFragment;->storedTabButtons:Ljava/util/List;

    .line 29
    return-void
.end method

.method private startContactActivity(Landroid/app/Activity;Lcom/biznessapps/model/TabButton;)V
    .locals 4
    .param p1, "holdActivity"    # Landroid/app/Activity;
    .param p2, "item"    # Lcom/biznessapps/model/TabButton;

    .prologue
    .line 89
    if-eqz p2, :cond_1

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Lcom/biznessapps/model/TabButton;->getTab()Lcom/biznessapps/model/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/model/Tab;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string v1, "URL"

    invoke-virtual {p2}, Lcom/biznessapps/model/TabButton;->getTab()Lcom/biznessapps/model/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/model/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :cond_0
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p2}, Lcom/biznessapps/model/TabButton;->getTab()Lcom/biznessapps/model/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/model/Tab;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 95
    const-string v1, "TAB_LABEL"

    invoke-virtual {p2}, Lcom/biznessapps/model/TabButton;->getTab()Lcom/biznessapps/model/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/model/Tab;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {p2}, Lcom/biznessapps/model/TabButton;->getTab()Lcom/biznessapps/model/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/model/Tab;->getTabId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v1, "ITEMID"

    invoke-virtual {p2}, Lcom/biznessapps/model/TabButton;->getTab()Lcom/biznessapps/model/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/model/Tab;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    const-string v1, "URL"

    invoke-virtual {p2}, Lcom/biznessapps/model/TabButton;->getTab()Lcom/biznessapps/model/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/model/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "SECTIONID"

    invoke-virtual {p2}, Lcom/biznessapps/model/TabButton;->getTab()Lcom/biznessapps/model/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/model/Tab;->getSectionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "TAB_FRAGMENT"

    invoke-virtual {p2}, Lcom/biznessapps/model/TabButton;->getTab()Lcom/biznessapps/model/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/model/Tab;->getViewController()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "TAB"

    invoke-virtual {p2}, Lcom/biznessapps/model/TabButton;->getTab()Lcom/biznessapps/model/Tab;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/MoreFragment;->startActivity(Landroid/content/Intent;)V

    .line 108
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/model/AppSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MoreFragment;->appSettings:Lcom/biznessapps/model/AppSettings;

    .line 60
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MoreFragment;->appSettings:Lcom/biznessapps/model/AppSettings;

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
    .line 41
    const-string v0, "http://www.biznessapps.com/iphone/settings.php?app_code=%s&version=4"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MoreFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getWrappedItem(Lcom/biznessapps/model/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/model/CommonListEntity;
    .locals 1
    .param p1, "x0"    # Lcom/biznessapps/model/CommonListEntity;
    .param p2, "x1"    # Ljava/util/List;

    .prologue
    .line 22
    check-cast p1, Lcom/biznessapps/model/TabButton;

    .end local p1    # "x0":Lcom/biznessapps/model/CommonListEntity;
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/fragments/single/MoreFragment;->getWrappedItem(Lcom/biznessapps/model/TabButton;Ljava/util/List;)Lcom/biznessapps/model/TabButton;

    move-result-object v0

    return-object v0
.end method

.method protected getWrappedItem(Lcom/biznessapps/model/TabButton;Ljava/util/List;)Lcom/biznessapps/model/TabButton;
    .locals 4
    .param p1, "item"    # Lcom/biznessapps/model/TabButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/model/TabButton;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/TabButton;",
            ">;)",
            "Lcom/biznessapps/model/TabButton;"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, "itemsList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/TabButton;>;"
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MoreFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore$UiSettings;->isHasColor()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 129
    .local v1, "listSize":I
    const/4 v0, 0x0

    .line 130
    .local v0, "bgColor":I
    const/4 v2, 0x0

    .line 131
    .local v2, "textColor":I
    rem-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MoreFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore$UiSettings;->getOddRowColor()I

    move-result v0

    .line 133
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MoreFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore$UiSettings;->getOddRowTextColor()I

    move-result v2

    .line 138
    :goto_0
    invoke-virtual {p1, v0}, Lcom/biznessapps/model/TabButton;->setItemColor(I)V

    .line 139
    invoke-virtual {p1, v2}, Lcom/biznessapps/model/TabButton;->setItemTextColor(I)V

    .line 141
    .end local v0    # "bgColor":I
    .end local v1    # "listSize":I
    .end local v2    # "textColor":I
    :cond_0
    return-object p1

    .line 135
    .restart local v0    # "bgColor":I
    .restart local v1    # "listSize":I
    .restart local v2    # "textColor":I
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MoreFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore$UiSettings;->getEvenRowColor()I

    move-result v0

    .line 136
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MoreFragment;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore$UiSettings;->getEvenRowTextColor()I

    move-result v2

    goto :goto_0
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
    .line 65
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/TabButton;

    .line 66
    .local v0, "item":Lcom/biznessapps/model/TabButton;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/MoreFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/biznessapps/fragments/single/MoreFragment;->startContactActivity(Landroid/app/Activity;Lcom/biznessapps/model/TabButton;)V

    .line 67
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/biznessapps/fragments/CommonListFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 36
    sget-object v0, Lcom/biznessapps/fragments/single/MoreFragment;->storedTabButtons:Ljava/util/List;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MoreFragment;->items:Ljava/util/List;

    .line 37
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseAppSettings(Ljava/lang/String;)Lcom/biznessapps/model/AppSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/MoreFragment;->appSettings:Lcom/biznessapps/model/AppSettings;

    .line 47
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/single/MoreFragment;->appSettings:Lcom/biznessapps/model/AppSettings;

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/AppCore;->setAppSettings(Lcom/biznessapps/model/AppSettings;)V

    .line 48
    iget-object v0, p0, Lcom/biznessapps/fragments/single/MoreFragment;->appSettings:Lcom/biznessapps/model/AppSettings;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/single/MoreFragment;->plugListView(Landroid/app/Activity;)V

    .line 55
    return-void
.end method
