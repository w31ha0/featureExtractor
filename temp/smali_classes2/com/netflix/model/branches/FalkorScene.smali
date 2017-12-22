.class public Lcom/netflix/model/branches/FalkorScene;
.super Lcom/netflix/model/BaseFalkorObject;
.source "FalkorScene.java"

# interfaces
.implements Lcom/netflix/model/branches/FalkorObject;


# instance fields
.field public sceneSummary:Lcom/netflix/model/leafs/SceneSummary;


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
    .line 17
    invoke-direct {p0, p1}, Lcom/netflix/model/BaseFalkorObject;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    .line 18
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 22
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 28
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 22
    :pswitch_0
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 23
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorScene;->sceneSummary:Lcom/netflix/model/leafs/SceneSummary;

    goto :goto_1

    .line 22
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
    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorScene;->sceneSummary:Lcom/netflix/model/leafs/SceneSummary;

    if-eqz v1, :cond_0

    .line 68
    const-string/jumbo v1, "summary"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    return-object v0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/FalkorScene;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 45
    :goto_0
    return-object v0

    .line 39
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 45
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :pswitch_0
    const-string/jumbo v1, "summary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 40
    :pswitch_1
    new-instance v0, Lcom/netflix/model/leafs/SceneSummary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/SceneSummary;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorScene;->sceneSummary:Lcom/netflix/model/leafs/SceneSummary;

    goto :goto_0

    .line 39
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

.method public getScenePosition()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorScene;->sceneSummary:Lcom/netflix/model/leafs/SceneSummary;

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorScene;->sceneSummary:Lcom/netflix/model/leafs/SceneSummary;

    iget v0, v0, Lcom/netflix/model/leafs/SceneSummary;->position:I

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/FalkorScene;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "summary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    check-cast p2, Lcom/netflix/model/leafs/SceneSummary;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorScene;->sceneSummary:Lcom/netflix/model/leafs/SceneSummary;

    .line 57
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FalkorScene{sceneSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/branches/FalkorScene;->sceneSummary:Lcom/netflix/model/leafs/SceneSummary;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
