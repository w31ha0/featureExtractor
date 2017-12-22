.class Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$2;
.super Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;
.source "ApiFalkorRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$2;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorVolleyWebClientRequest;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getMethodType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$2;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->getMethodType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getOptionalParams()Ljava/lang/String;
    .locals 5

    .prologue
    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$2;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 147
    if-nez v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 150
    :cond_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 151
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 153
    const/16 v1, 0x26

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 156
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 166
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPQLQueries()Ljava/util/List;
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
    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$2;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isAuthorizationRequired()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$2;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->isAuthorizationRequired()Z

    move-result v0

    return v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$2;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->onFailure(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 114
    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$2;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->onSuccess(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method protected parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$2;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected parsedResponseCanBeNull()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$2;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->parsedResponseCanBeNull()Z

    move-result v0

    return v0
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$2;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->shouldSkipProcessingOnInvalidUser()Z

    move-result v0

    return v0
.end method
