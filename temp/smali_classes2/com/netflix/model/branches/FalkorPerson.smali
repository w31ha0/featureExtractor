.class public Lcom/netflix/model/branches/FalkorPerson;
.super Lcom/netflix/model/BaseFalkorObject;
.source "FalkorPerson.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/search/SearchPerson;
.implements Lcom/netflix/model/branches/FalkorObject;


# instance fields
.field public detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

.field public searchPerson:Lcom/netflix/model/leafs/SearchPerson;

.field public summary:Lcom/netflix/model/leafs/Video$Summary;

.field public videos:Lcom/netflix/model/branches/FalkorPerson$PersonVideos;


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
    .line 39
    invoke-direct {p0, p1}, Lcom/netflix/model/BaseFalkorObject;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    .line 40
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 44
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 57
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 44
    :sswitch_0
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "searchTitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "detail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "videoListForPerson"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorPerson;->summary:Lcom/netflix/model/leafs/Video$Summary;

    goto :goto_1

    .line 48
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorPerson;->searchPerson:Lcom/netflix/model/leafs/SearchPerson;

    goto :goto_1

    .line 50
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    goto :goto_1

    .line 52
    :pswitch_3
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorPerson;->videos:Lcom/netflix/model/branches/FalkorPerson$PersonVideos;

    goto :goto_1

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_0
        -0x4f95e7af -> :sswitch_2
        -0x20c3ea70 -> :sswitch_1
        0x6d8e55c5 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorPerson;->searchPerson:Lcom/netflix/model/leafs/SearchPerson;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorPerson;->searchPerson:Lcom/netflix/model/leafs/SearchPerson;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/SearchPerson;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorPerson;->searchPerson:Lcom/netflix/model/leafs/SearchPerson;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorPerson;->searchPerson:Lcom/netflix/model/leafs/SearchPerson;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/SearchPerson;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorPerson;->searchPerson:Lcom/netflix/model/leafs/SearchPerson;

    if-eqz v1, :cond_0

    .line 109
    const-string/jumbo v1, "searchTitle"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    if-eqz v1, :cond_1

    .line 112
    const-string/jumbo v1, "detail"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorPerson;->summary:Lcom/netflix/model/leafs/Video$Summary;

    if-eqz v1, :cond_2

    .line 115
    const-string/jumbo v1, "summary"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorPerson;->videos:Lcom/netflix/model/branches/FalkorPerson$PersonVideos;

    if-eqz v1, :cond_3

    .line 118
    const-string/jumbo v1, "videoListForPerson"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorPerson;->searchPerson:Lcom/netflix/model/leafs/SearchPerson;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorPerson;->searchPerson:Lcom/netflix/model/leafs/SearchPerson;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/SearchPerson;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/FalkorPerson;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 81
    :goto_0
    return-object v0

    .line 68
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 81
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :sswitch_0
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "searchTitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "detail"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "videoListForPerson"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    .line 70
    :pswitch_0
    new-instance v0, Lcom/netflix/model/leafs/Video$Summary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/Video$Summary;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorPerson;->summary:Lcom/netflix/model/leafs/Video$Summary;

    goto :goto_0

    .line 72
    :pswitch_1
    new-instance v0, Lcom/netflix/model/leafs/SearchPerson;

    invoke-direct {v0}, Lcom/netflix/model/leafs/SearchPerson;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorPerson;->searchPerson:Lcom/netflix/model/leafs/SearchPerson;

    goto :goto_0

    .line 74
    :pswitch_2
    new-instance v0, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    invoke-direct {v0}, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    goto :goto_0

    .line 76
    :pswitch_3
    new-instance v0, Lcom/netflix/model/branches/FalkorPerson$PersonVideos;

    invoke-direct {v0, p0}, Lcom/netflix/model/branches/FalkorPerson$PersonVideos;-><init>(Lcom/netflix/model/branches/FalkorPerson;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorPerson;->videos:Lcom/netflix/model/branches/FalkorPerson$PersonVideos;

    goto :goto_0

    .line 68
    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_0
        -0x4f95e7af -> :sswitch_2
        -0x20c3ea70 -> :sswitch_1
        0x6d8e55c5 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/FalkorPerson;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 87
    const-string/jumbo v0, "searchTitle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    check-cast p2, Lcom/netflix/model/leafs/SearchPerson;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorPerson;->searchPerson:Lcom/netflix/model/leafs/SearchPerson;

    .line 98
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string/jumbo v0, "summary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    check-cast p2, Lcom/netflix/model/leafs/Video$Summary;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorPerson;->summary:Lcom/netflix/model/leafs/Video$Summary;

    goto :goto_0

    .line 91
    :cond_1
    const-string/jumbo v0, "detail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    check-cast p2, Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorPerson;->detail:Lcom/netflix/model/branches/FalkorPerson$PersonDetail;

    goto :goto_0

    .line 93
    :cond_2
    const-string/jumbo v0, "videoListForPerson"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    check-cast p2, Lcom/netflix/model/branches/FalkorPerson$PersonVideos;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorPerson;->videos:Lcom/netflix/model/branches/FalkorPerson$PersonVideos;

    goto :goto_0

    .line 96
    :cond_3
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
