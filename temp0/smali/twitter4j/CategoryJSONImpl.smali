.class final Ltwitter4j/CategoryJSONImpl;
.super Ljava/lang/Object;
.source "CategoryJSONImpl.java"

# interfaces
.implements Ltwitter4j/Category;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5d0808d20eabf6f6L


# instance fields
.field private name:Ljava/lang/String;

.field private slug:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "slug"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static createCategoriesList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 1
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p0}, Ltwitter4j/CategoryJSONImpl;->createCategoriesList(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public static createCategoriesList(Ltwitter4j/internal/org/json/JSONArray;Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    .locals 7
    .param p0, "array"    # Ltwitter4j/internal/org/json/JSONArray;
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/org/json/JSONArray;",
            "Ltwitter4j/internal/http/HttpResponse;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Ltwitter4j/ResponseList;

    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    invoke-direct {v0, v4, p1}, Ltwitter4j/ResponseList;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 57
    .local v0, "categories":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Category;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 58
    invoke-virtual {p0, v1}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    .line 59
    .local v2, "json":Ltwitter4j/internal/org/json/JSONObject;
    new-instance v4, Ltwitter4j/CategoryJSONImpl;

    const-string v5, "name"

    invoke-virtual {v2, v5}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "slug"

    invoke-virtual {v2, v6}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/CategoryJSONImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v0    # "categories":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Category;>;"
    .end local v1    # "i":I
    .end local v2    # "json":Ltwitter4j/internal/org/json/JSONObject;
    :catch_0
    move-exception v3

    .line 63
    .local v3, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v4, Ltwitter4j/TwitterException;

    invoke-direct {v4, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 61
    .end local v3    # "jsone":Ltwitter4j/internal/org/json/JSONException;
    .restart local v0    # "categories":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Category;>;"
    .restart local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    if-ne p0, p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 80
    check-cast v0, Ltwitter4j/CategoryJSONImpl;

    .line 82
    .local v0, "that":Ltwitter4j/CategoryJSONImpl;
    iget-object v3, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    .line 83
    goto :goto_0

    .line 82
    :cond_5
    iget-object v3, v0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 84
    :cond_6
    iget-object v3, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    iget-object v4, v0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 85
    goto :goto_0

    .line 84
    :cond_7
    iget-object v3, v0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSlug()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v2, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 93
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 94
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 92
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CategoryJSONImpl{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/CategoryJSONImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", slug=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/CategoryJSONImpl;->slug:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
