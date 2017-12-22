.class public Lcom/netflix/mediaclient/service/logging/client/model/Error;
.super Ljava/lang/Object;
.source "Error.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/logging/JsonSerializer;


# static fields
.field public static final DEEP_ERROR:Ljava/lang/String; = "deepError"

.field public static final ROOT_CAUSE:Ljava/lang/String; = "rootCause"


# instance fields
.field protected final deepError:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deepError"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;",
            ">;"
        }
    .end annotation
.end field

.field protected rootCause:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rootCause"
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/Since;
        value = 1.0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->deepError:Ljava/util/List;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/logging/client/model/RootCause;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->deepError:Ljava/util/List;

    .line 76
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->rootCause:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 77
    if-eqz p2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->deepError:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->deepError:Ljava/util/List;

    .line 58
    const-string/jumbo v0, "rootCause"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->rootCause:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 62
    :cond_0
    const-string/jumbo v0, "deepError"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->deepError:Ljava/util/List;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method

.method public static createInstance(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/logging/client/model/Error;
    .locals 1

    .prologue
    .line 143
    if-nez p0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 147
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/Error;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/logging/client/model/Error;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public static createInstance(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/client/model/UIError;
    .locals 2

    .prologue
    .line 134
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/service/logging/client/model/UIError;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/logging/client/model/UIError;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public addDeepError(Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->deepError:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    return-void
.end method

.method public addDeepErrors(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->deepError:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    return-void
.end method

.method public getDeepError()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->deepError:Ljava/util/List;

    return-object v0
.end method

.method public getRootCause()Lcom/netflix/mediaclient/service/logging/client/model/RootCause;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->rootCause:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    return-object v0
.end method

.method public setRootCause(Lcom/netflix/mediaclient/service/logging/client/model/RootCause;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->rootCause:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    .line 157
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 118
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->rootCause:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    if-eqz v0, :cond_0

    .line 120
    const-string/jumbo v0, "rootCause"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->rootCause:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/logging/client/model/RootCause;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->deepError:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->deepError:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 123
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->deepError:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;

    .line 125
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/client/model/DeepErrorElement;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 127
    :cond_1
    const-string/jumbo v0, "deepError"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    :cond_2
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/logging/client/model/Error;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error [rootCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/logging/client/model/Error;->rootCause:Lcom/netflix/mediaclient/service/logging/client/model/RootCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
