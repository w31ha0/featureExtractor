.class public Lcom/netflix/model/Root;
.super Ljava/lang/Object;
.source "Root.java"

# interfaces
.implements Lcom/netflix/falkor/BranchNode;
.implements Ljava/io/Flushable;


# static fields
.field private static final TAG:Ljava/lang/String; = "Root"


# instance fields
.field private actorVideoStills:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/model/branches/FalkorActorStill;",
            ">;"
        }
    .end annotation
.end field

.field private characters:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/model/branches/FalkorKidsCharacter;",
            ">;"
        }
    .end annotation
.end field

.field private episodes:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/model/branches/FalkorEpisode;",
            ">;"
        }
    .end annotation
.end field

.field private evidenceLists:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/model/branches/FalkorEvidenceList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;>;"
        }
    .end annotation
.end field

.field private flatGenres:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/model/branches/UnsummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;>;"
        }
    .end annotation
.end field

.field private genreList:Lcom/netflix/falkor/Sentinel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/Sentinel",
            "<",
            "Lcom/netflix/model/leafs/ListOfListOfGenres;",
            ">;"
        }
    .end annotation
.end field

.field private lists:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/model/branches/SummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            "Lcom/netflix/model/leafs/ListOfMoviesSummary;",
            ">;>;"
        }
    .end annotation
.end field

.field private lolomo:Lcom/netflix/falkor/Ref;

.field private lolomos:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/model/branches/SummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            "Lcom/netflix/model/leafs/LoLoMoSummary;",
            ">;>;"
        }
    .end annotation
.end field

.field private movies:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/model/branches/FalkorVideo;",
            ">;"
        }
    .end annotation
.end field

.field private nonMemberVideos:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end field

.field private notifications:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/model/branches/FalkorIrisNotification;",
            ">;"
        }
    .end annotation
.end field

.field private notificationsList:Lcom/netflix/model/branches/SummarizedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/model/branches/SummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            "Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;",
            ">;"
        }
    .end annotation
.end field

.field private people:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/model/branches/FalkorPerson;",
            ">;"
        }
    .end annotation
.end field

.field private postPlayExperiences:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/model/branches/PostPlayExperienceMap;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Lcom/netflix/falkor/ModelProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;"
        }
    .end annotation
.end field

.field private search:Lcom/netflix/model/branches/SearchMap;

.field private seasons:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/model/branches/FalkorSeason;",
            ">;"
        }
    .end annotation
.end field

.field private shows:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/model/branches/FalkorVideo;",
            ">;"
        }
    .end annotation
.end field

.field private suggestions:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/model/branches/FalkorSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private topGenres:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end field

.field private videos:Lcom/netflix/falkor/BranchMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/BranchMap",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/netflix/model/Root;->getKeys()Ljava/util/Set;

    move-result-object v0

    .line 267
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    invoke-virtual {p0, v0}, Lcom/netflix/model/Root;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 69
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 92
    const-string/jumbo v0, "Root"

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

    .line 93
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 69
    :sswitch_0
    const-string/jumbo v1, "lolomos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "lolomo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "lists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "flatGenre"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "evidenceLists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "genreList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "topGenres"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "videos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "shows"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v1, "movies"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v1, "episodes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v1, "seasons"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v1, "postPlayExperiences"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v1, "search"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v1, "people"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v1, "videoCastStills"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v1, "suggestions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v1, "characters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v1, "notifications"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v1, "notificationsList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v1, "nonMemberVideos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_0

    .line 70
    :pswitch_0
    iget-object v0, p0, Lcom/netflix/model/Root;->lolomos:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/netflix/model/Root;->lolomo:Lcom/netflix/falkor/Ref;

    goto/16 :goto_1

    .line 72
    :pswitch_2
    iget-object v0, p0, Lcom/netflix/model/Root;->lists:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 73
    :pswitch_3
    iget-object v0, p0, Lcom/netflix/model/Root;->flatGenres:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 74
    :pswitch_4
    iget-object v0, p0, Lcom/netflix/model/Root;->evidenceLists:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 75
    :pswitch_5
    iget-object v0, p0, Lcom/netflix/model/Root;->genreList:Lcom/netflix/falkor/Sentinel;

    goto/16 :goto_1

    .line 76
    :pswitch_6
    iget-object v0, p0, Lcom/netflix/model/Root;->topGenres:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 77
    :pswitch_7
    iget-object v0, p0, Lcom/netflix/model/Root;->videos:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 78
    :pswitch_8
    iget-object v0, p0, Lcom/netflix/model/Root;->shows:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 79
    :pswitch_9
    iget-object v0, p0, Lcom/netflix/model/Root;->movies:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 80
    :pswitch_a
    iget-object v0, p0, Lcom/netflix/model/Root;->episodes:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 81
    :pswitch_b
    iget-object v0, p0, Lcom/netflix/model/Root;->seasons:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 82
    :pswitch_c
    iget-object v0, p0, Lcom/netflix/model/Root;->postPlayExperiences:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 83
    :pswitch_d
    iget-object v0, p0, Lcom/netflix/model/Root;->search:Lcom/netflix/model/branches/SearchMap;

    goto/16 :goto_1

    .line 84
    :pswitch_e
    iget-object v0, p0, Lcom/netflix/model/Root;->people:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 85
    :pswitch_f
    iget-object v0, p0, Lcom/netflix/model/Root;->actorVideoStills:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 86
    :pswitch_10
    iget-object v0, p0, Lcom/netflix/model/Root;->suggestions:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 87
    :pswitch_11
    iget-object v0, p0, Lcom/netflix/model/Root;->characters:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 88
    :pswitch_12
    iget-object v0, p0, Lcom/netflix/model/Root;->notifications:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 89
    :pswitch_13
    iget-object v0, p0, Lcom/netflix/model/Root;->notificationsList:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_1

    .line 90
    :pswitch_14
    iget-object v0, p0, Lcom/netflix/model/Root;->nonMemberVideos:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 69
    :sswitch_data_0
    .sparse-switch
        -0x5ca9fa5a -> :sswitch_13
        -0x5aea8911 -> :sswitch_10
        -0x44762276 -> :sswitch_3
        -0x4165a598 -> :sswitch_1
        -0x3fac58bd -> :sswitch_9
        -0x3b1dcd71 -> :sswitch_e
        -0x36059a58 -> :sswitch_d
        -0x31bf8c4b -> :sswitch_c
        -0x30ad84a8 -> :sswitch_7
        -0x25b9fe28 -> :sswitch_a
        -0x22b63efb -> :sswitch_6
        -0x10bb601 -> :sswitch_14
        0x6236395 -> :sswitch_2
        0x6858516 -> :sswitch_8
        0x14b0f30b -> :sswitch_0
        0x265fe2c5 -> :sswitch_f
        0x2688b4c1 -> :sswitch_5
        0x4a3baa6a -> :sswitch_11
        0x4bd694e8 -> :sswitch_12
        0x6b95337e -> :sswitch_4
        0x7552f1f0 -> :sswitch_b
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
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
    .line 134
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/netflix/model/Root;->lolomo:Lcom/netflix/falkor/Ref;

    if-eqz v1, :cond_0

    .line 136
    const-string/jumbo v1, "lolomo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/netflix/model/Root;->lolomos:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_1

    .line 139
    const-string/jumbo v1, "lolomos"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/netflix/model/Root;->lists:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_2

    .line 142
    const-string/jumbo v1, "lists"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/netflix/model/Root;->flatGenres:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_3

    .line 145
    const-string/jumbo v1, "flatGenre"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/netflix/model/Root;->evidenceLists:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_4

    .line 148
    const-string/jumbo v1, "evidenceLists"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/netflix/model/Root;->genreList:Lcom/netflix/falkor/Sentinel;

    if-eqz v1, :cond_5

    .line 151
    const-string/jumbo v1, "genreList"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_5
    iget-object v1, p0, Lcom/netflix/model/Root;->topGenres:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_6

    .line 154
    const-string/jumbo v1, "topGenres"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_6
    iget-object v1, p0, Lcom/netflix/model/Root;->videos:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_7

    .line 157
    const-string/jumbo v1, "videos"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_7
    iget-object v1, p0, Lcom/netflix/model/Root;->movies:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_8

    .line 160
    const-string/jumbo v1, "movies"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_8
    iget-object v1, p0, Lcom/netflix/model/Root;->shows:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_9

    .line 163
    const-string/jumbo v1, "shows"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_9
    iget-object v1, p0, Lcom/netflix/model/Root;->episodes:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_a

    .line 166
    const-string/jumbo v1, "episodes"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_a
    iget-object v1, p0, Lcom/netflix/model/Root;->seasons:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_b

    .line 169
    const-string/jumbo v1, "seasons"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_b
    iget-object v1, p0, Lcom/netflix/model/Root;->postPlayExperiences:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_c

    .line 172
    const-string/jumbo v1, "postPlayExperiences"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_c
    iget-object v1, p0, Lcom/netflix/model/Root;->search:Lcom/netflix/model/branches/SearchMap;

    if-eqz v1, :cond_d

    .line 175
    const-string/jumbo v1, "search"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_d
    iget-object v1, p0, Lcom/netflix/model/Root;->people:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_e

    .line 178
    const-string/jumbo v1, "people"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_e
    iget-object v1, p0, Lcom/netflix/model/Root;->actorVideoStills:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_f

    .line 181
    const-string/jumbo v1, "videoCastStills"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_f
    iget-object v1, p0, Lcom/netflix/model/Root;->suggestions:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_10

    .line 184
    const-string/jumbo v1, "suggestions"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_10
    iget-object v1, p0, Lcom/netflix/model/Root;->characters:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_11

    .line 187
    const-string/jumbo v1, "characters"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_11
    iget-object v1, p0, Lcom/netflix/model/Root;->notifications:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_12

    .line 190
    const-string/jumbo v1, "notifications"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_12
    iget-object v1, p0, Lcom/netflix/model/Root;->notificationsList:Lcom/netflix/model/branches/SummarizedList;

    if-eqz v1, :cond_13

    .line 193
    const-string/jumbo v1, "notificationsList"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_13
    iget-object v1, p0, Lcom/netflix/model/Root;->nonMemberVideos:Lcom/netflix/falkor/BranchMap;

    if-eqz v1, :cond_14

    .line 196
    const-string/jumbo v1, "nonMemberVideos"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_14
    return-object v0
.end method

.method public getOrCreate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/netflix/model/Root;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-object v0

    .line 210
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 232
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

    .line 210
    :sswitch_0
    const-string/jumbo v1, "lolomo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "lolomos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "lists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "flatGenre"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "evidenceLists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "genreList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "topGenres"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v1, "videos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v1, "shows"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string/jumbo v1, "movies"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v1, "episodes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v1, "seasons"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v1, "postPlayExperiences"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v1, "people"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v1, "videoCastStills"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v1, "suggestions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v1, "search"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v1, "characters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v1, "notifications"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v1, "notificationsList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v1, "nonMemberVideos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x14

    goto/16 :goto_1

    .line 211
    :pswitch_0
    new-instance v0, Lcom/netflix/falkor/Ref;

    invoke-direct {v0}, Lcom/netflix/falkor/Ref;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/Root;->lolomo:Lcom/netflix/falkor/Ref;

    goto/16 :goto_0

    .line 212
    :pswitch_1
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->SummarizedListOfLoLoMoSummaryRefs:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->lolomos:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 213
    :pswitch_2
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->SummarizedListOfMovieRefs:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->lists:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 214
    :pswitch_3
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->UnsummarizedListOfRef:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->flatGenres:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 215
    :pswitch_4
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    iget-object v1, p0, Lcom/netflix/model/Root;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->FalkorEvidenceList(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->evidenceLists:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 216
    :pswitch_5
    new-instance v0, Lcom/netflix/falkor/Sentinel;

    new-instance v1, Lcom/netflix/model/leafs/ListOfListOfGenres;

    invoke-direct {v1}, Lcom/netflix/model/leafs/ListOfListOfGenres;-><init>()V

    invoke-direct {v0, v1}, Lcom/netflix/falkor/Sentinel;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->genreList:Lcom/netflix/falkor/Sentinel;

    goto/16 :goto_0

    .line 217
    :pswitch_6
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->topGenres:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 218
    :pswitch_7
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->videos:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 219
    :pswitch_8
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    iget-object v1, p0, Lcom/netflix/model/Root;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->FalkorVideo(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->shows:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 220
    :pswitch_9
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    iget-object v1, p0, Lcom/netflix/model/Root;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->FalkorVideo(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->movies:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 221
    :pswitch_a
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    iget-object v1, p0, Lcom/netflix/model/Root;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->FalkorEpisode(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->episodes:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 222
    :pswitch_b
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    iget-object v1, p0, Lcom/netflix/model/Root;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->FalkorSeason(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->seasons:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 223
    :pswitch_c
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    iget-object v1, p0, Lcom/netflix/model/Root;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->PostPlayExperienceMap(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->postPlayExperiences:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 224
    :pswitch_d
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    iget-object v1, p0, Lcom/netflix/model/Root;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->FalkorPerson(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->people:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 225
    :pswitch_e
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    iget-object v1, p0, Lcom/netflix/model/Root;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->FalkorActorStill(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->actorVideoStills:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 226
    :pswitch_f
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    iget-object v1, p0, Lcom/netflix/model/Root;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->FalkorSuggestion(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->suggestions:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 227
    :pswitch_10
    new-instance v0, Lcom/netflix/model/branches/SearchMap;

    invoke-direct {v0}, Lcom/netflix/model/branches/SearchMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/model/Root;->search:Lcom/netflix/model/branches/SearchMap;

    goto/16 :goto_0

    .line 228
    :pswitch_11
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    iget-object v1, p0, Lcom/netflix/model/Root;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->FalkorKidsCharacter(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->characters:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 229
    :pswitch_12
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    iget-object v1, p0, Lcom/netflix/model/Root;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->FalkorSocialNotifications(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->notifications:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 230
    :pswitch_13
    iget-object v0, p0, Lcom/netflix/model/Root;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->FalkorSocialNotificationsList(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/model/branches/SummarizedList;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/model/Root;->notificationsList:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_0

    .line 231
    :pswitch_14
    new-instance v0, Lcom/netflix/falkor/BranchMap;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    invoke-direct {v0, v1}, Lcom/netflix/falkor/BranchMap;-><init>(Lcom/netflix/falkor/Func;)V

    iput-object v0, p0, Lcom/netflix/model/Root;->nonMemberVideos:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_0

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5ca9fa5a -> :sswitch_13
        -0x5aea8911 -> :sswitch_f
        -0x44762276 -> :sswitch_3
        -0x4165a598 -> :sswitch_0
        -0x3fac58bd -> :sswitch_9
        -0x3b1dcd71 -> :sswitch_d
        -0x36059a58 -> :sswitch_10
        -0x31bf8c4b -> :sswitch_c
        -0x30ad84a8 -> :sswitch_7
        -0x25b9fe28 -> :sswitch_a
        -0x22b63efb -> :sswitch_6
        -0x10bb601 -> :sswitch_14
        0x6236395 -> :sswitch_2
        0x6858516 -> :sswitch_8
        0x14b0f30b -> :sswitch_1
        0x265fe2c5 -> :sswitch_e
        0x2688b4c1 -> :sswitch_5
        0x4a3baa6a -> :sswitch_11
        0x4bd694e8 -> :sswitch_12
        0x6b95337e -> :sswitch_4
        0x7552f1f0 -> :sswitch_b
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/netflix/model/Root;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 99
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 123
    const-string/jumbo v0, "Root"

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

    .line 125
    :goto_1
    return-void

    .line 99
    :sswitch_0
    const-string/jumbo v1, "lolomos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "lolomo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "lists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "flatGenre"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "evidenceLists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v1, "genreList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string/jumbo v1, "topGenres"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "videos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "shows"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v1, "movies"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v1, "episodes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v1, "seasons"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string/jumbo v1, "postPlayExperiences"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v1, "search"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string/jumbo v1, "people"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v1, "videoCastStills"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xf

    goto/16 :goto_0

    :sswitch_10
    const-string/jumbo v1, "suggestions"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_0

    :sswitch_11
    const-string/jumbo v1, "characters"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v1, "nonMemberVideos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_0

    :sswitch_13
    const-string/jumbo v1, "notifications"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_0

    :sswitch_14
    const-string/jumbo v1, "notificationsList"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_0

    .line 100
    :pswitch_0
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/Root;->lolomos:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 101
    :pswitch_1
    check-cast p2, Lcom/netflix/falkor/Ref;

    iput-object p2, p0, Lcom/netflix/model/Root;->lolomo:Lcom/netflix/falkor/Ref;

    goto/16 :goto_1

    .line 102
    :pswitch_2
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/Root;->lists:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 103
    :pswitch_3
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/Root;->flatGenres:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 104
    :pswitch_4
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/Root;->evidenceLists:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 105
    :pswitch_5
    check-cast p2, Lcom/netflix/falkor/Sentinel;

    iput-object p2, p0, Lcom/netflix/model/Root;->genreList:Lcom/netflix/falkor/Sentinel;

    goto/16 :goto_1

    .line 106
    :pswitch_6
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/Root;->topGenres:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 107
    :pswitch_7
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/Root;->videos:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 108
    :pswitch_8
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/Root;->shows:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 109
    :pswitch_9
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/Root;->movies:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 110
    :pswitch_a
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/Root;->episodes:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 111
    :pswitch_b
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/Root;->seasons:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 112
    :pswitch_c
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/Root;->postPlayExperiences:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 113
    :pswitch_d
    check-cast p2, Lcom/netflix/model/branches/SearchMap;

    iput-object p2, p0, Lcom/netflix/model/Root;->search:Lcom/netflix/model/branches/SearchMap;

    goto/16 :goto_1

    .line 114
    :pswitch_e
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/Root;->people:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 115
    :pswitch_f
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/Root;->actorVideoStills:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 116
    :pswitch_10
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/Root;->suggestions:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 117
    :pswitch_11
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/Root;->characters:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    .line 118
    :pswitch_12
    check-cast p2, Lcom/netflix/falkor/BranchMap;

    iput-object p2, p0, Lcom/netflix/model/Root;->nonMemberVideos:Lcom/netflix/falkor/BranchMap;

    goto/16 :goto_1

    :pswitch_13
    move-object v0, p2

    .line 119
    check-cast v0, Lcom/netflix/falkor/BranchMap;

    iput-object v0, p0, Lcom/netflix/model/Root;->notifications:Lcom/netflix/falkor/BranchMap;

    .line 120
    :pswitch_14
    check-cast p2, Lcom/netflix/model/branches/SummarizedList;

    iput-object p2, p0, Lcom/netflix/model/Root;->notificationsList:Lcom/netflix/model/branches/SummarizedList;

    goto/16 :goto_1

    .line 99
    :sswitch_data_0
    .sparse-switch
        -0x5ca9fa5a -> :sswitch_14
        -0x5aea8911 -> :sswitch_10
        -0x44762276 -> :sswitch_3
        -0x4165a598 -> :sswitch_1
        -0x3fac58bd -> :sswitch_9
        -0x3b1dcd71 -> :sswitch_e
        -0x36059a58 -> :sswitch_d
        -0x31bf8c4b -> :sswitch_c
        -0x30ad84a8 -> :sswitch_7
        -0x25b9fe28 -> :sswitch_a
        -0x22b63efb -> :sswitch_6
        -0x10bb601 -> :sswitch_12
        0x6236395 -> :sswitch_2
        0x6858516 -> :sswitch_8
        0x14b0f30b -> :sswitch_0
        0x265fe2c5 -> :sswitch_f
        0x2688b4c1 -> :sswitch_5
        0x4a3baa6a -> :sswitch_11
        0x4bd694e8 -> :sswitch_13
        0x6b95337e -> :sswitch_4
        0x7552f1f0 -> :sswitch_b
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
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public setProxy(Lcom/netflix/falkor/ModelProxy;)V
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
    .line 64
    iput-object p1, p0, Lcom/netflix/model/Root;->proxy:Lcom/netflix/falkor/ModelProxy;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Root{lolomo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->lolomo:Lcom/netflix/falkor/Ref;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lolomos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->lolomos:Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->lists:Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flastGenres="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->flatGenres:Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", evidenceLists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->evidenceLists:Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", genreList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->genreList:Lcom/netflix/falkor/Sentinel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", topGenres="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->topGenres:Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", videos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->videos:Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", movies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->movies:Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", shows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->shows:Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", episodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->episodes:Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", seasons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->seasons:Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", postPlayExperiences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->postPlayExperiences:Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", people="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->people:Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", actorVideoStills="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->actorVideoStills:Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", suggestions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->suggestions:Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", characters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->characters:Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", search="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->search:Lcom/netflix/model/branches/SearchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", notifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->notifications:Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", notificationsList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->notificationsList:Lcom/netflix/model/branches/SummarizedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", nonMemberVideos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->nonMemberVideos:Lcom/netflix/falkor/BranchMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/model/Root;->proxy:Lcom/netflix/falkor/ModelProxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
