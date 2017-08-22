.class public Lvpadn/cj;
.super Ljava/lang/Object;
.source "PlayNextVideoData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lvpadn/cr$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v0, p0, Lvpadn/cj;->c:I

    .line 24
    iput-boolean v0, p0, Lvpadn/cj;->d:Z

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/cj;->f:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lvpadn/cj;->g:Ljava/util/Map;

    .line 32
    iput-object p1, p0, Lvpadn/cj;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 5

    .prologue
    .line 132
    if-nez p2, :cond_1

    .line 155
    :cond_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 138
    if-lez v2, :cond_0

    .line 142
    iget-object v0, p0, Lvpadn/cj;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 143
    if-nez v0, :cond_2

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v1, p0, Lvpadn/cj;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 150
    :try_start_0
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :catch_0
    move-exception v3

    .line 152
    const-string v3, "PlayNextVideoData"

    const-string v4, "urlList.add(trackingUrlJsonArray.getString(i)) throw Exception"

    invoke-static {v3, v4}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lvpadn/cj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lvpadn/cj;->c:I

    .line 58
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lvpadn/cj;->b:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 98
    :try_start_0
    sget-object v0, Lvpadn/cr;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lvpadn/cr;->g:Ljava/lang/String;

    sget-object v1, Lvpadn/cr;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lvpadn/cj;->a(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4

    .line 104
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lvpadn/cr;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    sget-object v0, Lvpadn/cr;->h:Ljava/lang/String;

    sget-object v1, Lvpadn/cr;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lvpadn/cj;->a(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 110
    :cond_1
    :goto_1
    :try_start_2
    sget-object v0, Lvpadn/cr;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    sget-object v0, Lvpadn/cr;->i:Ljava/lang/String;

    sget-object v1, Lvpadn/cr;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lvpadn/cj;->a(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 116
    :cond_2
    :goto_2
    :try_start_3
    sget-object v0, Lvpadn/cr;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    sget-object v0, Lvpadn/cr;->j:Ljava/lang/String;

    sget-object v1, Lvpadn/cr;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lvpadn/cj;->a(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 122
    :cond_3
    :goto_3
    :try_start_4
    sget-object v0, Lvpadn/cr;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    sget-object v0, Lvpadn/cr;->k:Ljava/lang/String;

    sget-object v1, Lvpadn/cr;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lvpadn/cj;->a(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 127
    :cond_4
    :goto_4
    return-void

    .line 125
    :catch_0
    move-exception v0

    goto :goto_4

    .line 119
    :catch_1
    move-exception v0

    goto :goto_3

    .line 113
    :catch_2
    move-exception v0

    goto :goto_2

    .line 107
    :catch_3
    move-exception v0

    goto :goto_1

    .line 101
    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method public a(Lvpadn/cr$a;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lvpadn/cj;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lvpadn/cj;->d:Z

    .line 66
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lvpadn/cj;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lvpadn/cj;->c:I

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lvpadn/cj;->d:Z

    return v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lvpadn/cj;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvpadn/cj;->e:Ljava/util/List;

    .line 80
    :cond_0
    iget-object v0, p0, Lvpadn/cj;->e:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lvpadn/cr$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lvpadn/cj;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lvpadn/cj;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public h()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lvpadn/cj;->g:Ljava/util/Map;

    return-object v0
.end method
