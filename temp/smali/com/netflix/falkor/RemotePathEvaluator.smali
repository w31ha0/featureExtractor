.class public Lcom/netflix/falkor/RemotePathEvaluator;
.super Lcom/netflix/falkor/BasePathEvaluator;
.source "RemotePathEvaluator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RemotePathEvaluator"


# instance fields
.field final gson:Lcom/google/gson/Gson;

.field rootType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field uri:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/net/URI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/net/URI;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/falkor/RemotePathEvaluator;-><init>(Ljava/lang/Class;Ljava/net/URI;Lcom/google/gson/GsonBuilder;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/net/URI;Lcom/google/gson/GsonBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/net/URI;",
            "Lcom/google/gson/GsonBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/netflix/falkor/BasePathEvaluator;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/netflix/falkor/RemotePathEvaluator;->rootType:Ljava/lang/Class;

    .line 31
    iput-object p2, p0, Lcom/netflix/falkor/RemotePathEvaluator;->uri:Ljava/net/URI;

    .line 32
    const-class v0, Lcom/netflix/falkor/PQL;

    new-instance v1, Lcom/netflix/falkor/PQLAdapter;

    invoke-direct {v1}, Lcom/netflix/falkor/PQLAdapter;-><init>()V

    invoke-virtual {p3, v0, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/falkor/RemotePathEvaluator;->gson:Lcom/google/gson/Gson;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/falkor/RemotePathEvaluator;Lcom/netflix/falkor/PQL;)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/netflix/falkor/RemotePathEvaluator;->getPathClass(Lcom/netflix/falkor/PQL;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private getPathClass(Lcom/netflix/falkor/PQL;)Ljava/lang/reflect/Type;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-virtual {p1}, Lcom/netflix/falkor/PQL;->getKeySegments()Ljava/util/List;

    move-result-object v2

    .line 65
    iget-object v1, p0, Lcom/netflix/falkor/RemotePathEvaluator;->rootType:Ljava/lang/Class;

    .line 68
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v3

    move-object v2, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 69
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 71
    if-eqz v2, :cond_0

    :try_start_0
    invoke-direct {p0, v6}, Lcom/netflix/falkor/RemotePathEvaluator;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v1, v3

    move-object v4, v2

    move-object v2, v3

    :goto_1
    move-object v8, v1

    move-object v1, v4

    move-object v4, v8

    .line 107
    goto :goto_0

    .line 76
    :cond_0
    if-eqz v4, :cond_1

    move-object v1, v3

    move-object v2, v3

    .line 79
    goto :goto_1

    .line 85
    :cond_1
    check-cast v1, Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 86
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    .line 88
    instance-of v1, v2, Ljava/lang/Class;

    if-eqz v1, :cond_3

    .line 89
    const-class v6, Ljava/util/List;

    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object v4, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_1

    .line 92
    :cond_2
    const-class v6, Ljava/util/Map;

    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    move-object v1, v0

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 93
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 94
    instance-of v4, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_5

    .line 95
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v4, 0x1

    aget-object v1, v1, v4

    :goto_2
    move-object v4, v2

    move-object v2, v3

    .line 97
    goto :goto_1

    .line 100
    :cond_3
    const-class v1, Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_4
    :goto_3
    return-object v1

    .line 104
    :catch_0
    move-exception v1

    .line 105
    const-class v1, Lcom/google/gson/JsonObject;

    goto :goto_3

    :cond_5
    move-object v1, v3

    goto :goto_2

    :cond_6
    move-object v1, v3

    move-object v4, v2

    move-object v2, v3

    goto/16 :goto_1
.end method

.method private parseInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 49
    if-nez p1, :cond_0

    .line 57
    :goto_0
    return-object v0

    .line 54
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public deleteAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/netflix/falkor/RemotePathEvaluator;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    const/4 v0, 0x0

    .line 118
    const-string/jumbo v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 119
    const-string/jumbo v1, "?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :goto_0
    const-string/jumbo v1, "method=get&responseFormat=json&pathFormat=canonical&progressive=false"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/PQL;

    .line 128
    add-int/lit8 v1, v1, 0x1

    .line 130
    :try_start_0
    const-string/jumbo v4, "&path="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/falkor/RemotePathEvaluator;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    :goto_2
    return-object v0

    .line 122
    :cond_0
    const-string/jumbo v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 137
    :cond_1
    if-nez v1, :cond_2

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 141
    :cond_2
    new-instance v0, Lcom/netflix/falkor/RemotePathEvaluator$1;

    invoke-direct {v0, p0, v2}, Lcom/netflix/falkor/RemotePathEvaluator$1;-><init>(Lcom/netflix/falkor/RemotePathEvaluator;Ljava/lang/StringBuilder;)V

    goto :goto_2
.end method

.method public getRoot()Lcom/netflix/falkor/AbstractPathEvaluator;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public setAbsolute(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/netflix/falkor/PathBoundValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
