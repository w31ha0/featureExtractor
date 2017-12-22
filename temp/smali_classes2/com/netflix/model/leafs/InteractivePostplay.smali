.class public Lcom/netflix/model/leafs/InteractivePostplay;
.super Ljava/lang/Object;
.source "InteractivePostplay.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;


# static fields
.field private static final TAG:Ljava/lang/String; = "InteractivePostplay"


# instance fields
.field data:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/model/leafs/InteractivePostplay;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    return-object v0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 32
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    iput-object v0, p0, Lcom/netflix/model/leafs/InteractivePostplay;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    .line 33
    iget-object v0, p0, Lcom/netflix/model/leafs/InteractivePostplay;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/leafs/InteractivePostplay;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string/jumbo v0, "KONG_POST_PLAY"

    iget-object v1, p0, Lcom/netflix/model/leafs/InteractivePostplay;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/ui/iko/kong/model/KongInteractivePostPlayModel;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    iput-object v0, p0, Lcom/netflix/model/leafs/InteractivePostplay;->data:Lcom/netflix/mediaclient/ui/iko/model/InteractivePostplayModel;

    .line 42
    :cond_0
    return-void
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
