.class public Lcom/netflix/model/branches/FalkorEvidenceList;
.super Lcom/netflix/falkor/BranchMap;
.source "FalkorEvidenceList.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;
.implements Lcom/netflix/model/branches/FalkorObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netflix/falkor/BranchMap",
        "<TT;>;",
        "Lcom/netflix/mediaclient/servicemgr/interface_/LoMo;",
        "Lcom/netflix/model/branches/FalkorObject;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FalkorEvidenceList"


# instance fields
.field private billboardData:Lcom/netflix/model/branches/UnsummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/UnsummarizedList",
            "<",
            "Lcom/netflix/model/branches/FalkorBillboardData;",
            ">;"
        }
    .end annotation
.end field

.field private discoveryData:Lcom/netflix/model/branches/UnsummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/UnsummarizedList",
            "<",
            "Lcom/netflix/model/branches/UnsummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;>;"
        }
    .end annotation
.end field

.field private summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

.field private videoEvidence:Lcom/netflix/model/branches/UnsummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/UnsummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/Func;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/Func",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unsupported method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 41
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 50
    invoke-super {p0, p1}, Lcom/netflix/falkor/BranchMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    .line 41
    :sswitch_0
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "discoveryEvidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "videoEvidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "billboardData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    goto :goto_1

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->discoveryData:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_1

    .line 44
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->videoEvidence:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_1

    .line 45
    :pswitch_3
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->billboardData:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_1

    .line 41
    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_0
        -0xa481c77 -> :sswitch_3
        0x6eb6bf2 -> :sswitch_2
        0x6a2bd827 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getHeroTrackId()I
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getHeroTrackId()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getImpressionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getImpressionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 80
    invoke-super {p0}, Lcom/netflix/falkor/BranchMap;->getKeys()Ljava/util/Set;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-eqz v1, :cond_0

    .line 82
    const-string/jumbo v1, "summary"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->videoEvidence:Lcom/netflix/model/branches/UnsummarizedList;

    if-eqz v1, :cond_1

    .line 85
    const-string/jumbo v1, "videoEvidence"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->billboardData:Lcom/netflix/model/branches/UnsummarizedList;

    if-eqz v1, :cond_2

    .line 88
    const-string/jumbo v1, "billboardData"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->discoveryData:Lcom/netflix/model/branches/UnsummarizedList;

    if-eqz v1, :cond_3

    .line 91
    const-string/jumbo v1, "discoveryEvidence"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_3
    return-object v0
.end method

.method public getListPos()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getListPos()I

    move-result v0

    goto :goto_0
.end method

.method public getMoreImages()Ljava/util/List;
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
    .line 167
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getMoreImages()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getNumVideos()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getNumVideos()I

    move-result v0

    goto :goto_0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/FalkorEvidenceList;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-object v0

    .line 65
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 74
    invoke-super {p0, p1}, Lcom/netflix/falkor/BranchMap;->getOrCreate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 65
    :sswitch_0
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "discoveryEvidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "videoEvidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "billboardData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    .line 66
    :pswitch_0
    new-instance v0, Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    goto :goto_0

    .line 67
    :pswitch_1
    new-instance v0, Lcom/netflix/model/branches/UnsummarizedList;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->UnsummarizedListOfRef:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/model/branches/UnsummarizedList;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->discoveryData:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_0

    .line 68
    :pswitch_2
    new-instance v0, Lcom/netflix/model/branches/UnsummarizedList;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/model/branches/UnsummarizedList;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->videoEvidence:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_0

    .line 69
    :pswitch_3
    new-instance v0, Lcom/netflix/model/branches/UnsummarizedList;

    invoke-static {}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->FalkorBillboardData()Lcom/netflix/falkor/Func;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/model/branches/UnsummarizedList;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->billboardData:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_0
        -0xa481c77 -> :sswitch_3
        0x6eb6bf2 -> :sswitch_2
        0x6a2bd827 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getRequestId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrackId()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getTrackId()I

    move-result v0

    goto :goto_0
.end method

.method public getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->STANDARD:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v0

    goto :goto_0
.end method

.method public isBillboard()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->isBillboard()Z

    move-result v0

    goto :goto_0
.end method

.method public isHero()Z
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->isHero()Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/FalkorEvidenceList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 100
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 109
    invoke-super {p0, p1, p2}, Lcom/netflix/falkor/BranchMap;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    :goto_1
    return-void

    .line 100
    :sswitch_0
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "videoEvidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "billboardData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "discoveryEvidence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 101
    :pswitch_0
    check-cast p2, Lcom/netflix/model/leafs/ListOfMoviesSummary;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    goto :goto_1

    .line 102
    :pswitch_1
    check-cast p2, Lcom/netflix/model/branches/UnsummarizedList;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->videoEvidence:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_1

    .line 103
    :pswitch_2
    check-cast p2, Lcom/netflix/model/branches/UnsummarizedList;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->billboardData:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_1

    .line 104
    :pswitch_3
    check-cast p2, Lcom/netflix/model/branches/UnsummarizedList;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->discoveryData:Lcom/netflix/model/branches/UnsummarizedList;

    goto :goto_1

    .line 100
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6eb9585a -> :sswitch_0
        -0xa481c77 -> :sswitch_2
        0x6eb6bf2 -> :sswitch_1
        0x6a2bd827 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0, p1}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->setId(Ljava/lang/String;)V

    .line 187
    :cond_0
    return-void
.end method

.method public setListPos(I)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorEvidenceList;->summary:Lcom/netflix/model/leafs/ListOfMoviesSummary;

    invoke-virtual {v0, p1}, Lcom/netflix/model/leafs/ListOfMoviesSummary;->setListPos(I)V

    .line 180
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unsupported method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
