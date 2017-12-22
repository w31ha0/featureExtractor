.class public Lcom/netflix/model/branches/FalkorSuggestion;
.super Lcom/netflix/model/BaseFalkorObject;
.source "FalkorSuggestion.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchSuggestion;
.implements Lcom/netflix/model/branches/FalkorObject;


# instance fields
.field public searchSuggestion:Lcom/netflix/model/leafs/SearchSuggestion;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/ModelProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/netflix/model/BaseFalkorObject;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    .line 21
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 25
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 32
    :goto_1
    :pswitch_0
    return-object v0

    .line 25
    :sswitch_0
    const-string/jumbo v2, "searchTitle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "summary"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 26
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSuggestion;->searchSuggestion:Lcom/netflix/model/leafs/SearchSuggestion;

    goto :goto_1

    .line 25
    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_1
        -0x20c3ea70 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorSuggestion;->searchSuggestion:Lcom/netflix/model/leafs/SearchSuggestion;

    if-eqz v1, :cond_0

    .line 76
    const-string/jumbo v1, "searchTitle"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    return-object v0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/FalkorSuggestion;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 50
    :goto_0
    return-object v0

    .line 43
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 50
    goto :goto_0

    .line 43
    :sswitch_0
    const-string/jumbo v2, "searchTitle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "summary"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 44
    :pswitch_0
    new-instance v0, Lcom/netflix/model/leafs/SearchSuggestion;

    invoke-direct {v0}, Lcom/netflix/model/leafs/SearchSuggestion;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorSuggestion;->searchSuggestion:Lcom/netflix/model/leafs/SearchSuggestion;

    goto :goto_0

    :pswitch_1
    move-object v0, v1

    .line 45
    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_1
        -0x20c3ea70 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSuggestion;->searchSuggestion:Lcom/netflix/model/leafs/SearchSuggestion;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorSuggestion;->searchSuggestion:Lcom/netflix/model/leafs/SearchSuggestion;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/SearchSuggestion;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/FalkorSuggestion;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 56
    const-string/jumbo v0, "searchTitle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    check-cast p2, Lcom/netflix/model/leafs/SearchSuggestion;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorSuggestion;->searchSuggestion:Lcom/netflix/model/leafs/SearchSuggestion;

    .line 65
    :cond_0
    return-void

    .line 59
    :cond_1
    const-string/jumbo v0, "summary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t set key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
