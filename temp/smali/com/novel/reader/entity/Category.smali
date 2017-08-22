.class public Lcom/novel/reader/entity/Category;
.super Ljava/lang/Object;
.source "Category.java"


# static fields
.field static message:Ljava/lang/String;


# instance fields
.field id:I

.field name:Ljava/lang/String;

.field public novels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Novel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "[{\"id\":10,\"name\":\"\u540d\u8457\u53e4\u5178\"},{\"id\":11,\"name\":\"\u79d1\u666e\u5176\u5b83\"},{\"id\":14,\"name\":\"\u7384\u5e7b\u9b54\u6cd5\"},{\"id\":15,\"name\":\"\u6b66\u4fe0\u4fee\u771f\"},{\"id\":16,\"name\":\"\u90fd\u5e02\u8a00\u60c5\"},{\"id\":17,\"name\":\"\u6b77\u53f2\u8ecd\u4e8b\"},{\"id\":18,\"name\":\"\u6e38\u6232\u7af6\u6280\"},{\"id\":19,\"name\":\"\u79d1\u5e7b\u5c0f\u8aaa\"},{\"id\":20,\"name\":\"\u6050\u6016\u9748\u7570\"},{\"id\":21,\"name\":\"\u7f8e\u6587\u6563\u6587\"},{\"id\":22,\"name\":\"\u540c\u4eba\u5c0f\u8aaa\"},{\"id\":23,\"name\":\"\u8f15\u5c0f\u8aaa\"},{\"id\":24,\"name\":\"\u7a7f\u8d8a\u91cd\u751f\"}]"

    sput-object v0, Lcom/novel/reader/entity/Category;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    const/4 v0, -0x1

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/novel/reader/entity/Category;-><init>(ILjava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/novel/reader/entity/Category;->id:I

    .line 22
    iput-object p2, p0, Lcom/novel/reader/entity/Category;->name:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static getCategories()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v3, "cateogries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/Category;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    sget-object v7, Lcom/novel/reader/entity/Category;->message:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "categoryArray":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 63
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 64
    .local v2, "category_id":I
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, "name":Ljava/lang/String;
    new-instance v0, Lcom/novel/reader/entity/Category;

    invoke-direct {v0, v2, v6}, Lcom/novel/reader/entity/Category;-><init>(ILjava/lang/String;)V

    .line 66
    .local v0, "cat":Lcom/novel/reader/entity/Category;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "cat":Lcom/novel/reader/entity/Category;
    .end local v1    # "categoryArray":Lorg/json/JSONArray;
    .end local v2    # "category_id":I
    .end local v5    # "i":I
    .end local v6    # "name":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 69
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 71
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v3
.end method

.method public static getCategoryName(I)Ljava/lang/String;
    .locals 8
    .param p0, "id"    # I

    .prologue
    .line 42
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v3, "hash":Ljava/util/HashMap;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    sget-object v6, Lcom/novel/reader/entity/Category;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "categoryArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 47
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 48
    .local v1, "category_id":I
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 49
    .local v5, "name":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "categoryArray":Lorg/json/JSONArray;
    .end local v1    # "category_id":I
    .end local v4    # "i":I
    .end local v5    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    return-object v6
.end method


# virtual methods
.method public getCateName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/novel/reader/entity/Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/novel/reader/entity/Category;->id:I

    return v0
.end method

.method public setCateName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/novel/reader/entity/Category;->name:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/novel/reader/entity/Category;->id:I

    .line 31
    return-void
.end method
