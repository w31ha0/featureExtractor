.class public Lcom/netflix/model/branches/FalkorBillboardData;
.super Lcom/netflix/falkor/BranchMap;
.source "FalkorBillboardData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/falkor/BranchMap",
        "<",
        "Lcom/netflix/model/leafs/originals/BillboardSummary;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FalkorBillboardData"


# instance fields
.field private billboardSummary:Lcom/netflix/model/leafs/originals/BillboardSummary;


# direct methods
.method public constructor <init>(Lcom/netflix/falkor/Func;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/leafs/originals/BillboardSummary;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    .line 18
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 27
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 33
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 27
    :pswitch_0
    const-string/jumbo v1, "billboardSummary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 28
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/FalkorBillboardData;->billboardSummary:Lcom/netflix/model/leafs/originals/BillboardSummary;

    goto :goto_1

    .line 27
    nop

    :pswitch_data_0
    .packed-switch -0x4265cc99
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
    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 61
    iget-object v1, p0, Lcom/netflix/model/branches/FalkorBillboardData;->billboardSummary:Lcom/netflix/model/leafs/originals/BillboardSummary;

    if-eqz v1, :cond_0

    .line 62
    const-string/jumbo v1, "billboardSummary"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    return-object v0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/FalkorBillboardData;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 54
    :goto_0
    return-object v0

    .line 48
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 54
    const/4 v0, 0x0

    goto :goto_0

    .line 48
    :pswitch_0
    const-string/jumbo v1, "billboardSummary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 49
    :pswitch_1
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardSummary;

    invoke-direct {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/FalkorBillboardData;->billboardSummary:Lcom/netflix/model/leafs/originals/BillboardSummary;

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch -0x4265cc99
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/FalkorBillboardData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 70
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 77
    :goto_1
    return-void

    .line 70
    :pswitch_0
    const-string/jumbo v1, "billboardSummary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :pswitch_1
    check-cast p2, Lcom/netflix/model/leafs/originals/BillboardSummary;

    iput-object p2, p0, Lcom/netflix/model/branches/FalkorBillboardData;->billboardSummary:Lcom/netflix/model/leafs/originals/BillboardSummary;

    goto :goto_1

    .line 70
    :pswitch_data_0
    .packed-switch -0x4265cc99
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
