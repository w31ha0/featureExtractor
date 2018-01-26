.class public Lcom/biznessapps/api/CachingManager;
.super Ljava/lang/Object;
.source "CachingManager.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# instance fields
.field private facebookUID:Ljava/lang/String;

.field private facebookUserName:Ljava/lang/String;

.field private propertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private twitterOauthSecret:Ljava/lang/String;

.field private twitterOauthToken:Ljava/lang/String;

.field private twitterUID:I

.field private twitterUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/biznessapps/api/CachingManager;->twitterUID:I

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 33
    return-void
.end method

.method public getAppCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    const-string v1, "APP_CODE_PROPERTY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppInfo()Lcom/biznessapps/model/App;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    const-string v1, "APP_INFO_PROPERTY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/App;

    return-object v0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFacebookUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->facebookUID:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->facebookUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getShopCategoryItems(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "shopCategorytabId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShopCategoryProducts()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    const-string v1, "SHOPPING_CATEGORY_PRODUCTS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    return-object v0
.end method

.method public getTabList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/Tab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    const-string v1, "TAB_LIST_PROPERTY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getTwitterOauthSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->twitterOauthSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterOauthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->twitterOauthToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTwitterUID()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/biznessapps/api/CachingManager;->twitterUID:I

    return v0
.end method

.method public getTwitterUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->twitterUserName:Ljava/lang/String;

    return-object v0
.end method

.method public hasFacebookData()Z
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/biznessapps/api/CachingManager;->getFacebookUID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/biznessapps/api/CachingManager;->getFacebookUserName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTwitterData()Z
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/biznessapps/api/CachingManager;->getTwitterOauthSecret()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/biznessapps/api/CachingManager;->getTwitterOauthToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataDamaged()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 62
    iget-object v5, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 74
    :goto_0
    return v4

    .line 65
    :cond_0
    iget-object v5, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 66
    .local v1, "properties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    .local v2, "property":Ljava/lang/String;
    iget-object v5, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 70
    .local v3, "value":Ljava/lang/Object;
    if-nez v3, :cond_1

    goto :goto_0

    .line 74
    .end local v2    # "property":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public saveData(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "dataToSave":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    if-eqz p2, :cond_2

    instance-of v1, p2, Ljava/util/List;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 44
    .local v0, "correctdata":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 45
    iget-object v1, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_1
    return v0

    .line 42
    .end local v0    # "correctdata":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "appCode"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    const-string v1, "APP_CODE_PROPERTY"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method public setAppInfo(Lcom/biznessapps/model/App;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/biznessapps/model/App;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    const-string v1, "APP_INFO_PROPERTY"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public setFacebookUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "facebookUID"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/biznessapps/api/CachingManager;->facebookUID:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setFacebookUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "facebookUserName"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/biznessapps/api/CachingManager;->facebookUserName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setShopCategoryItems(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "shopCategorytabId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Category;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "categoryItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Category;>;"
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public setShopCategoryProducts(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "categoryProducts":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/List<Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;>;"
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    const-string v1, "SHOPPING_CATEGORY_PRODUCTS"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method

.method public setShopProductsTable()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    const-string v1, "SHOPPING_CATEGORY_PRODUCTS_TABLE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    return-object v0
.end method

.method public setShopProductsTable(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/biznessapps/fragments/shoppingcart/entities/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "productsTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/biznessapps/fragments/shoppingcart/entities/Product;>;"
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    const-string v1, "SHOPPING_CATEGORY_PRODUCTS_TABLE"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    return-void
.end method

.method public setTabList(Ljava/util/List;)V
    .locals 2
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
    .line 175
    .local p1, "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    iget-object v0, p0, Lcom/biznessapps/api/CachingManager;->propertiesMap:Ljava/util/Map;

    const-string v1, "TAB_LIST_PROPERTY"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method

.method public setTwitterOauthSecret(Ljava/lang/String;)V
    .locals 0
    .param p1, "twitterOauthSecret"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/biznessapps/api/CachingManager;->twitterOauthSecret:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setTwitterOauthToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "twitterOauthToken"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/biznessapps/api/CachingManager;->twitterOauthToken:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setTwitterUID(I)V
    .locals 0
    .param p1, "twitterUID"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/biznessapps/api/CachingManager;->twitterUID:I

    .line 126
    return-void
.end method

.method public setTwitterUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "twitterUserName"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/biznessapps/api/CachingManager;->twitterUserName:Ljava/lang/String;

    .line 134
    return-void
.end method
