.class public Lcom/netflix/model/branches/MementoVideoSwatch;
.super Ljava/lang/Object;
.source "MementoVideoSwatch.java"

# interfaces
.implements Lcom/netflix/falkor/BranchNode;


# static fields
.field private static final TAG:Ljava/lang/String; = "MementoVideoSwatch"


# instance fields
.field public boxArtUrl:Ljava/lang/String;

.field public collectionId:Ljava/lang/String;

.field public collectionName:Ljava/lang/String;

.field public firstVideoId:Ljava/lang/String;

.field public firstVideoTitle:Ljava/lang/String;

.field public firstVideoType:Ljava/lang/String;

.field public storyArtUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 39
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 49
    const-string/jumbo v0, "MementoVideoSwatch"

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

    .line 50
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 39
    :sswitch_0
    const-string/jumbo v1, "collectionName"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "collectionId"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "firstVideoTitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "firstVideoId"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "firstVideoType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "boxArtUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "storyArtUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->collectionName:Ljava/lang/String;

    goto :goto_1

    .line 41
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->collectionId:Ljava/lang/String;

    goto :goto_1

    .line 42
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->firstVideoTitle:Ljava/lang/String;

    goto :goto_1

    .line 43
    :pswitch_3
    iget-object v0, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->firstVideoId:Ljava/lang/String;

    goto :goto_1

    .line 44
    :pswitch_4
    iget-object v0, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->firstVideoType:Ljava/lang/String;

    goto :goto_1

    .line 45
    :pswitch_5
    iget-object v0, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->boxArtUrl:Ljava/lang/String;

    goto :goto_1

    .line 46
    :pswitch_6
    iget-object v0, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->storyArtUrl:Ljava/lang/String;

    goto :goto_1

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        -0x69d0d29f -> :sswitch_6
        -0x65df4a7b -> :sswitch_4
        -0x56113a93 -> :sswitch_2
        0xe2839b7 -> :sswitch_5
        0x12861e49 -> :sswitch_0
        0x16454a26 -> :sswitch_3
        0x61848859 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
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
    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->collectionName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 77
    const-string/jumbo v1, "collectionName"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->collectionId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 80
    const-string/jumbo v1, "collectionId"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->firstVideoTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 83
    const-string/jumbo v1, "firstVideoTitle"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->firstVideoId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 86
    const-string/jumbo v1, "firstVideoId"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_3
    iget-object v1, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->firstVideoType:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 89
    const-string/jumbo v1, "firstVideoType"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_4
    iget-object v1, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->boxArtUrl:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 92
    const-string/jumbo v1, "boxArtUrl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_5
    iget-object v1, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->storyArtUrl:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 95
    const-string/jumbo v1, "storyArtUrl"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_6
    return-object v0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/netflix/model/branches/MementoVideoSwatch;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-object v0

    .line 61
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 69
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

    .line 61
    :sswitch_0
    const-string/jumbo v1, "collectionName"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "collectionId"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "firstVideoTitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "firstVideoId"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "firstVideoType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "boxArtUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "storyArtUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    .line 62
    :pswitch_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto :goto_0

    .line 63
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto :goto_0

    .line 64
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto/16 :goto_0

    .line 65
    :pswitch_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto/16 :goto_0

    .line 66
    :pswitch_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto/16 :goto_0

    .line 67
    :pswitch_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto/16 :goto_0

    .line 68
    :pswitch_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    goto/16 :goto_0

    .line 61
    :sswitch_data_0
    .sparse-switch
        -0x69d0d29f -> :sswitch_6
        -0x65df4a7b -> :sswitch_4
        -0x56113a93 -> :sswitch_2
        0xe2839b7 -> :sswitch_5
        0x12861e49 -> :sswitch_0
        0x16454a26 -> :sswitch_3
        0x61848859 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/branches/MementoVideoSwatch;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 102
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 112
    const-string/jumbo v0, "MementoVideoSwatch"

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

    .line 114
    :goto_1
    return-void

    .line 102
    :sswitch_0
    const-string/jumbo v1, "collectionName"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "collectionId"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "firstVideoTitle"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "firstVideoId"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "firstVideoType"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "boxArtUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "storyArtUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 103
    :pswitch_0
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->collectionName:Ljava/lang/String;

    goto :goto_1

    .line 104
    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->collectionId:Ljava/lang/String;

    goto :goto_1

    .line 105
    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->firstVideoTitle:Ljava/lang/String;

    goto :goto_1

    .line 106
    :pswitch_3
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->firstVideoId:Ljava/lang/String;

    goto :goto_1

    .line 107
    :pswitch_4
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->firstVideoType:Ljava/lang/String;

    goto :goto_1

    .line 108
    :pswitch_5
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->boxArtUrl:Ljava/lang/String;

    goto :goto_1

    .line 109
    :pswitch_6
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/netflix/model/branches/MementoVideoSwatch;->storyArtUrl:Ljava/lang/String;

    goto :goto_1

    .line 102
    :sswitch_data_0
    .sparse-switch
        -0x69d0d29f -> :sswitch_6
        -0x65df4a7b -> :sswitch_4
        -0x56113a93 -> :sswitch_2
        0xe2839b7 -> :sswitch_5
        0x12861e49 -> :sswitch_0
        0x16454a26 -> :sswitch_3
        0x61848859 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
