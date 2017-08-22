.class public Lcom/novel/reader/entity/GameAPP;
.super Ljava/lang/Object;
.source "GameAPP.java"


# instance fields
.field public appStoreUrl:Ljava/lang/String;

.field public appid:I

.field public description:Ljava/lang/String;

.field public id:I

.field public imageUrl:Ljava/lang/String;

.field public showedTime:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "appid"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "imageUrl"    # Ljava/lang/String;
    .param p6, "appStoreUrl"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/novel/reader/entity/GameAPP;->showedTime:I

    .line 15
    iput p1, p0, Lcom/novel/reader/entity/GameAPP;->id:I

    .line 16
    iput p2, p0, Lcom/novel/reader/entity/GameAPP;->appid:I

    .line 17
    iput-object p3, p0, Lcom/novel/reader/entity/GameAPP;->title:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/novel/reader/entity/GameAPP;->description:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/novel/reader/entity/GameAPP;->imageUrl:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lcom/novel/reader/entity/GameAPP;->appStoreUrl:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static lessShowedTimeAPP(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/GameAPP;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/novel/reader/entity/GameAPP;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/GameAPP;>;"
    const v2, 0x186a0

    .line 26
    .local v2, "time":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/GameAPP;

    .line 27
    .local v0, "item":Lcom/novel/reader/entity/GameAPP;
    iget v4, v0, Lcom/novel/reader/entity/GameAPP;->showedTime:I

    if-ge v4, v2, :cond_0

    .line 28
    iget v2, v0, Lcom/novel/reader/entity/GameAPP;->showedTime:I

    goto :goto_0

    .line 30
    .end local v0    # "item":Lcom/novel/reader/entity/GameAPP;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v1, "lessShowedTimeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/novel/reader/entity/GameAPP;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/novel/reader/entity/GameAPP;

    .line 32
    .restart local v0    # "item":Lcom/novel/reader/entity/GameAPP;
    iget v4, v0, Lcom/novel/reader/entity/GameAPP;->showedTime:I

    if-ne v4, v2, :cond_2

    .line 33
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 37
    .end local v0    # "item":Lcom/novel/reader/entity/GameAPP;
    :cond_3
    return-object v1
.end method
