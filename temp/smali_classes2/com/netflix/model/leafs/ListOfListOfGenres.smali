.class public Lcom/netflix/model/leafs/ListOfListOfGenres;
.super Ljava/util/ArrayList;
.source "ListOfListOfGenres.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList;",
        ">;",
        "Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;",
        "Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 3

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/netflix/model/leafs/ListOfListOfGenres;->clear()V

    .line 22
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 23
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 25
    new-instance v2, Lcom/netflix/model/leafs/ListOfGenreSummary;

    invoke-direct {v2}, Lcom/netflix/model/leafs/ListOfGenreSummary;-><init>()V

    .line 26
    invoke-virtual {v2, v0}, Lcom/netflix/model/leafs/ListOfGenreSummary;->populate(Lcom/google/gson/JsonElement;)V

    .line 27
    invoke-virtual {p0, v2}, Lcom/netflix/model/leafs/ListOfListOfGenres;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 33
    const-string/jumbo v0, "length"

    if-ne p1, v0, :cond_0

    .line 34
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    .line 42
    :goto_0
    return v4

    .line 38
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 39
    new-instance v1, Lcom/netflix/model/leafs/ListOfGenreSummary;

    invoke-direct {v1}, Lcom/netflix/model/leafs/ListOfGenreSummary;-><init>()V

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/netflix/model/leafs/ListOfListOfGenres;->add(ILjava/lang/Object;)V

    .line 41
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v1, p2, v0, v2, v3}, Lcom/netflix/falkor/BranchNodeUtils;->merge(Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;ZI)Ljava/lang/Object;

    goto :goto_0
.end method
