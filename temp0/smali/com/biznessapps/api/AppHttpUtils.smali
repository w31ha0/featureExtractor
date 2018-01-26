.class public Lcom/biznessapps/api/AppHttpUtils;
.super Ljava/lang/Object;
.source "AppHttpUtils.java"


# static fields
.field private static final APP_CODE:Ljava/lang/String; = "app_code"

.field private static final EMAIL:Ljava/lang/String; = "email"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static http:Lcom/biznessapps/api/HttpUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addToMailingList(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "appCode"    # Ljava/lang/String;
    .param p4, "tabId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/api/AsyncCallback",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<*>;"
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->getEmptyParams()Ljava/util/Map;

    move-result-object v0

    .line 33
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "email"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "app_code"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "http://www.biznessapps.com/iphone/mailing_list_save.php"

    invoke-static {v1, v0, p0}, Lcom/biznessapps/api/AppHttpUtils;->executePostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/biznessapps/api/AsyncCallback;)V

    .line 39
    return-void
.end method

.method public static executeGetRequest(Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<*>;"
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->getEmptyParams()Ljava/util/Map;

    move-result-object v0

    .line 72
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->http()Lcom/biznessapps/api/HttpUtils;

    move-result-object v1

    invoke-static {v0}, Lcom/biznessapps/api/AppHttpUtils;->getKeys(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/biznessapps/api/AppHttpUtils;->getValues(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3, p1}, Lcom/biznessapps/api/HttpUtils;->executeGetRequestAsync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 73
    return-void
.end method

.method public static executeGetSyncRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->http()Lcom/biznessapps/api/HttpUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/biznessapps/api/HttpUtils;->executeRequestSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static executePostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/biznessapps/api/AsyncCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<*>;"
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->http()Lcom/biznessapps/api/HttpUtils;

    move-result-object v0

    invoke-static {p1}, Lcom/biznessapps/api/AppHttpUtils;->getKeys(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/biznessapps/api/AppHttpUtils;->getValues(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2, p2}, Lcom/biznessapps/api/HttpUtils;->executePostRequestAsync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 94
    return-void
.end method

.method private static getEmptyParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object v0
.end method

.method private static getKeys(Ljava/util/Map;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 119
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 121
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getParamForGetRequests(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, ""

    .line 103
    .local v2, "result":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    .line 114
    :goto_0
    return-object v4

    .line 107
    :cond_0
    invoke-static {p0}, Lcom/biznessapps/api/AppHttpUtils;->getKeys(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "keys":[Ljava/lang/String;
    invoke-static {p0}, Lcom/biznessapps/api/AppHttpUtils;->getValues(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static getValues(Ljava/util/Map;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 127
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 129
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static http()Lcom/biznessapps/api/HttpUtils;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/biznessapps/api/AppHttpUtils;->http:Lcom/biznessapps/api/HttpUtils;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/biznessapps/api/HttpUtils;

    invoke-direct {v0}, Lcom/biznessapps/api/HttpUtils;-><init>()V

    sput-object v0, Lcom/biznessapps/api/AppHttpUtils;->http:Lcom/biznessapps/api/HttpUtils;

    .line 27
    :cond_0
    sget-object v0, Lcom/biznessapps/api/AppHttpUtils;->http:Lcom/biznessapps/api/HttpUtils;

    return-object v0
.end method

.method public static postComment(Lcom/biznessapps/api/AsyncCallback;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "useFacebookCred"    # Z
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "tabId"    # Ljava/lang/String;
    .param p4, "facebookId"    # Ljava/lang/String;
    .param p5, "twitterId"    # Ljava/lang/String;
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "comment"    # Ljava/lang/String;
    .param p8, "appCode"    # Ljava/lang/String;
    .param p9, "commentParentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/api/AsyncCallback",
            "<*>;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, "requestString":Ljava/lang/StringBuilder;
    const-string v1, "?hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "&tab_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    if-eqz p1, :cond_1

    .line 48
    const-string v1, "&fb_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :goto_0
    const-string v1, "&name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "&comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "&app_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {p9}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "&parent_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.biznessapps.com/iphone/fan_wall_post.php"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/biznessapps/api/AppHttpUtils;->executeGetRequest(Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 61
    return-void

    .line 50
    :cond_1
    const-string v1, "&tw_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
