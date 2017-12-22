.class Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$1;
.super Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;
.source "ApiFalkorRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$1;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMethodType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$1;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->getMethodType()Ljava/lang/String;

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
    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$1;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->getPQLQueries()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
    .locals 3
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
    .line 85
    invoke-super {p0}, Lcom/netflix/mediaclient/service/msl/volley/ApiFalkorMSLVolleyRequest;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$1;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->getParams()Ljava/util/Map;

    move-result-object v1

    .line 87
    if-nez v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 88
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 91
    :cond_1
    return-object v0
.end method

.method protected isAuthorizationRequired()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$1;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->isAuthorizationRequired()Z

    move-result v0

    return v0
.end method

.method protected onFailure(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$1;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->onFailure(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 55
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
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$1;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->onSuccess(Ljava/lang/Object;)V

    .line 50
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
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$1;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->parseFalkorResponse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected parsedResponseCanBeNull()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$1;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->parsedResponseCanBeNull()Z

    move-result v0

    return v0
.end method

.method protected shouldSkipProcessingOnInvalidUser()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$1;->this$0:Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->shouldSkipProcessingOnInvalidUser()Z

    move-result v0

    return v0
.end method
