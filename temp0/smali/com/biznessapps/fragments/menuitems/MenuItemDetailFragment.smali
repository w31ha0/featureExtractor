.class public Lcom/biznessapps/fragments/menuitems/MenuItemDetailFragment;
.super Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;
.source "MenuItemDetailFragment.java"


# instance fields
.field private menuItemDetailId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/biznessapps/fragments/menuitems/MenuItemDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MENU_ITEM_DETAIL_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/menuitems/MenuItemDetailFragment;->menuItemDetailId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/InfoItem;

    iput-object v0, p0, Lcom/biznessapps/fragments/menuitems/MenuItemDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    .line 32
    iget-object v0, p0, Lcom/biznessapps/fragments/menuitems/MenuItemDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

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
    const-string v0, "http://www.biznessapps.com/iphone/menu_item_detail.php?id=%s&version=4"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/biznessapps/fragments/menuitems/MenuItemDetailFragment;->menuItemDetailId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/biznessapps/fragments/infoitems/InfoDetailFragment;->preDataLoading(Landroid/app/Activity;)V

    .line 15
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "MENUITEMDETAILID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/menuitems/MenuItemDetailFragment;->menuItemDetailId:Ljava/lang/String;

    .line 16
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseInfo(Ljava/lang/String;)Lcom/biznessapps/model/InfoItem;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/menuitems/MenuItemDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    .line 26
    invoke-virtual {p0}, Lcom/biznessapps/fragments/menuitems/MenuItemDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MENU_ITEM_DETAIL_PROPERTY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/menuitems/MenuItemDetailFragment;->menuItemDetailId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/fragments/menuitems/MenuItemDetailFragment;->infoItem:Lcom/biznessapps/model/InfoItem;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
