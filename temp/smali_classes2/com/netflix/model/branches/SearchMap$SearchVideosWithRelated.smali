.class Lcom/netflix/model/branches/SearchMap$SearchVideosWithRelated;
.super Lcom/netflix/model/branches/SummarizedList;
.source "SearchMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/model/branches/SummarizedList",
        "<",
        "Lcom/netflix/falkor/Ref;",
        "Lcom/netflix/model/leafs/SearchTrackableListSummary;",
        ">;"
    }
.end annotation


# static fields
.field private static final RELATED_VIDEOS_KEY:Ljava/lang/String; = "relatedVideos"


# instance fields
.field private relatedSearchQueryMap:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/model/branches/SummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            "Lcom/netflix/model/leafs/SearchTrackableListSummary;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 440
    sget-object v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->SearchTrackableListSummary:Lcom/netflix/falkor/Func;

    invoke-direct {p0, v0, v1}, Lcom/netflix/model/branches/SummarizedList;-><init>(Lcom/netflix/falkor/Func;Lcom/netflix/falkor/Func;)V

    .line 441
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 445
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 448
    invoke-super {p0, p1}, Lcom/netflix/model/branches/SummarizedList;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    .line 445
    :pswitch_0
    const-string/jumbo v1, "relatedVideos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 446
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/SearchMap$SearchVideosWithRelated;->relatedSearchQueryMap:Lcom/netflix/falkor/BranchMap;

    goto :goto_1

    .line 445
    :pswitch_data_0
    .packed-switch 0xd3df763
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
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
    .line 481
    invoke-super {p0}, Lcom/netflix/model/branches/SummarizedList;->getKeys()Ljava/util/Set;

    move-result-object v0

    .line 482
    iget-object v1, p0, Lcom/netflix/model/branches/SearchMap$SearchVideosWithRelated;->relatedSearchQueryMap:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_0

    .line 483
    const-string/jumbo v1, "relatedVideos"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_0
    return-object v0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/SearchMap$SearchVideosWithRelated;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_0

    .line 465
    :goto_0
    return-object v0

    .line 461
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 465
    invoke-super {p0, p1}, Lcom/netflix/model/branches/SummarizedList;->getOrCreate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 461
    :pswitch_0
    const-string/jumbo v1, "relatedVideos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 462
    :pswitch_1
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->SummarizedListOfSearchResults:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/branches/SearchMap$SearchVideosWithRelated;->relatedSearchQueryMap:Lcom/netflix/falkor/BranchMap;

    goto :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0xd3df763
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 471
    const-string/jumbo v0, "relatedVideos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/branches/SearchMap$SearchVideosWithRelated;->relatedSearchQueryMap:Lcom/netflix/falkor/BranchMap;

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netflix/model/branches/SummarizedList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
