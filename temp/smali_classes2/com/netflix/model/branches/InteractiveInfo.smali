.class public Lcom/netflix/model/branches/InteractiveInfo;
.super Ljava/lang/Object;
.source "InteractiveInfo.java"

# interfaces
.implements Lcom/netflix/falkor/BranchNode;


# instance fields
.field public details:Lcom/netflix/model/leafs/InteractiveDetails;

.field public postplay:Lcom/netflix/model/leafs/InteractivePostplay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 23
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 32
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 23
    :sswitch_0
    const-string/jumbo v1, "postplay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "details"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/model/branches/InteractiveInfo;->postplay:Lcom/netflix/model/leafs/InteractivePostplay;

    goto :goto_1

    .line 27
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/InteractiveInfo;->details:Lcom/netflix/model/leafs/InteractiveDetails;

    goto :goto_1

    .line 23
    nop

    :sswitch_data_0
    .sparse-switch
        0x2d2bd3d4 -> :sswitch_0
        0x5cd8f242 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/netflix/model/branches/InteractiveInfo;->postplay:Lcom/netflix/model/leafs/InteractivePostplay;

    if-eqz v1, :cond_0

    .line 76
    const-string/jumbo v1, "postplay"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/netflix/model/branches/InteractiveInfo;->details:Lcom/netflix/model/leafs/InteractiveDetails;

    if-eqz v1, :cond_1

    .line 79
    const-string/jumbo v1, "details"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_1
    return-object v0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/InteractiveInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 52
    :goto_0
    return-object v0

    .line 43
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 52
    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :sswitch_0
    const-string/jumbo v1, "postplay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "details"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    .line 45
    :pswitch_0
    new-instance v0, Lcom/netflix/model/leafs/InteractivePostplay;

    invoke-direct {v0}, Lcom/netflix/model/leafs/InteractivePostplay;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/InteractiveInfo;->postplay:Lcom/netflix/model/leafs/InteractivePostplay;

    goto :goto_0

    .line 47
    :pswitch_1
    new-instance v0, Lcom/netflix/model/leafs/InteractiveDetails;

    invoke-direct {v0}, Lcom/netflix/model/leafs/InteractiveDetails;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/InteractiveInfo;->details:Lcom/netflix/model/leafs/InteractiveDetails;

    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x2d2bd3d4 -> :sswitch_0
        0x5cd8f242 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/InteractiveInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 58
    const-string/jumbo v0, "postplay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    check-cast p2, Lcom/netflix/model/leafs/InteractivePostplay;

    iput-object p2, p0, Lcom/netflix/model/branches/InteractiveInfo;->postplay:Lcom/netflix/model/leafs/InteractivePostplay;

    .line 65
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string/jumbo v0, "details"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    check-cast p2, Lcom/netflix/model/leafs/InteractiveDetails;

    iput-object p2, p0, Lcom/netflix/model/branches/InteractiveInfo;->details:Lcom/netflix/model/leafs/InteractiveDetails;

    goto :goto_0

    .line 63
    :cond_1
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

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InteractiveInfo{postplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/branches/InteractiveInfo;->postplay:Lcom/netflix/model/leafs/InteractivePostplay;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/branches/InteractiveInfo;->details:Lcom/netflix/model/leafs/InteractiveDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
