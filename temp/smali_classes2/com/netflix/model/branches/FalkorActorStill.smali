.class public Lcom/netflix/model/branches/FalkorActorStill;
.super Lcom/netflix/model/BaseFalkorObject;
.source "FalkorActorStill.java"

# interfaces
.implements Lcom/netflix/model/branches/FalkorObject;


# instance fields
.field public summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;


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
    .line 26
    invoke-direct {p0, p1}, Lcom/netflix/model/BaseFalkorObject;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    .line 27
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 31
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 39
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 31
    :pswitch_0
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    goto :goto_1

    .line 31
    nop

    :pswitch_data_0
    .packed-switch -0x6eb9585a
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
    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 78
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    if-eqz v1, :cond_0

    .line 79
    const-string/jumbo v1, "summary"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    return-object v0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/FalkorActorStill;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-object v0

    .line 50
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 57
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :pswitch_0
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 52
    :pswitch_1
    new-instance v0, Lcom/netflix/model/branches/FalkorActorStill$Summary;

    invoke-direct {v0}, Lcom/netflix/model/branches/FalkorActorStill$Summary;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch -0x6eb9585a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public getStillUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    iget-object v0, v0, Lcom/netflix/model/branches/FalkorActorStill$Summary;->stillImageUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getStillXFocus()F
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    iget v0, v0, Lcom/netflix/model/branches/FalkorActorStill$Summary;->stillImageXFocus:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public getStillYFocus()F
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    iget v0, v0, Lcom/netflix/model/branches/FalkorActorStill$Summary;->stillImageYFocus:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/FalkorActorStill;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 63
    const-string/jumbo v0, "summary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    check-cast p2, Lcom/netflix/model/branches/FalkorActorStill$Summary;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorActorStill;->summary:Lcom/netflix/model/branches/FalkorActorStill$Summary;

    .line 68
    return-void

    .line 66
    :cond_0
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
