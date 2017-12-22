.class public Lcom/netflix/model/branches/SearchMap;
.super Ljava/lang/Object;
.source "SearchMap.java"

# interfaces
.implements Lcom/netflix/falkor/BranchNode;


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchMap"


# instance fields
.field private people:Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

.field private suggestions:Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

.field private videos:Lcom/netflix/model/branches/SearchMap$SearchQueryMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 343
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 348
    const-string/jumbo v0, "SearchMap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not find key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 343
    :sswitch_0
    const-string/jumbo v1, "videos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "people"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "suggestions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 344
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/model/branches/SearchMap;->videos:Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    goto :goto_1

    .line 345
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/SearchMap;->people:Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    goto :goto_1

    .line 346
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/model/branches/SearchMap;->suggestions:Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    goto :goto_1

    .line 343
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5aea8911 -> :sswitch_2
        -0x3b1dcd71 -> :sswitch_1
        -0x30ad84a8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 370
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 371
    iget-object v1, p0, Lcom/netflix/model/branches/SearchMap;->videos:Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    if-eqz v1, :cond_0

    .line 372
    const-string/jumbo v1, "videos"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/netflix/model/branches/SearchMap;->people:Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    if-eqz v1, :cond_1

    .line 375
    const-string/jumbo v1, "people"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/netflix/model/branches/SearchMap;->suggestions:Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    if-eqz v1, :cond_2

    .line 378
    const-string/jumbo v1, "suggestions"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_2
    return-object v0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/SearchMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 356
    if-eqz v0, :cond_0

    .line 363
    :goto_0
    return-object v0

    .line 360
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :sswitch_0
    const-string/jumbo v1, "videos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "people"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "suggestions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    .line 361
    :pswitch_0
    new-instance v0, Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    invoke-direct {v0}, Lcom/netflix/model/branches/SearchMap$SearchQueryMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/SearchMap;->videos:Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    goto :goto_0

    .line 362
    :pswitch_1
    new-instance v0, Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    invoke-direct {v0}, Lcom/netflix/model/branches/SearchMap$SearchQueryMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/SearchMap;->people:Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    goto :goto_0

    .line 363
    :pswitch_2
    new-instance v0, Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    invoke-direct {v0}, Lcom/netflix/model/branches/SearchMap$SearchQueryMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/branches/SearchMap;->suggestions:Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    goto :goto_0

    .line 360
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5aea8911 -> :sswitch_2
        -0x3b1dcd71 -> :sswitch_1
        -0x30ad84a8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/SearchMap;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 385
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 390
    const-string/jumbo v0, "SearchMap"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Don\'t know how to set key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :goto_1
    return-void

    .line 385
    :sswitch_0
    const-string/jumbo v1, "videos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "people"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "suggestions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 386
    :pswitch_0
    check-cast p2, Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    iput-object p2, p0, Lcom/netflix/model/branches/SearchMap;->videos:Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    goto :goto_1

    .line 387
    :pswitch_1
    check-cast p2, Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    iput-object p2, p0, Lcom/netflix/model/branches/SearchMap;->people:Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    goto :goto_1

    .line 388
    :pswitch_2
    check-cast p2, Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    iput-object p2, p0, Lcom/netflix/model/branches/SearchMap;->suggestions:Lcom/netflix/model/branches/SearchMap$SearchQueryMap;

    goto :goto_1

    .line 385
    :sswitch_data_0
    .sparse-switch
        -0x5aea8911 -> :sswitch_2
        -0x3b1dcd71 -> :sswitch_1
        -0x30ad84a8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
