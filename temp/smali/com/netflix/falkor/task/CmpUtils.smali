.class public final Lcom/netflix/falkor/task/CmpUtils;
.super Ljava/lang/Object;
.source "CmpUtils.java"


# static fields
.field public static final BB_CURR_EPISODE_PQL:Lcom/netflix/falkor/PQL;

.field public static final BB_VIDEO_LEAF_PQL:Lcom/netflix/falkor/PQL;

.field public static final CW_CURR_EPISODE_PQL:Lcom/netflix/falkor/PQL;

.field public static final CW_VIDEO_LEAF_PQL:Lcom/netflix/falkor/PQL;

.field static final FETCH_EPISODES_LEAF_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;"
        }
    .end annotation
.end field

.field private static final FROM_SEASON:I = 0x0

.field private static final MAX_KIDS_CHARACTER_GALLERY_VIDEOS:I = 0x64

.field public static final MAX_SEARCH_RESULTS_PER_SECTION_INDEX:I = 0x13

.field private static final MAX_VIDEO_DETAILS_SIMILARS_COUNT:I = 0xc

.field private static final MAX_VIDEO_DETAILS_TRAILERS_COUNT:I = 0x19

.field private static final TO_SEASON:I = 0x27


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v4

    const-string/jumbo v1, "detail"

    aput-object v1, v0, v5

    const-string/jumbo v1, "bookmark"

    aput-object v1, v0, v6

    const-string/jumbo v1, "offlineAvailable"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/netflix/falkor/task/CmpUtils;->FETCH_EPISODES_LEAF_TYPES:Ljava/util/List;

    .line 32
    new-array v0, v5, [Ljava/lang/Object;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v4

    const-string/jumbo v2, "detail"

    aput-object v2, v1, v5

    const-string/jumbo v2, "rating"

    aput-object v2, v1, v6

    const-string/jumbo v2, "inQueue"

    aput-object v2, v1, v7

    const-string/jumbo v2, "bookmark"

    aput-object v2, v1, v3

    const/4 v2, 0x5

    const-string/jumbo v3, "offlineAvailable"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "cleanBoxart"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    sput-object v0, Lcom/netflix/falkor/task/CmpUtils;->CW_VIDEO_LEAF_PQL:Lcom/netflix/falkor/PQL;

    .line 33
    new-array v0, v7, [Ljava/lang/Object;

    const-string/jumbo v1, "episodes"

    aput-object v1, v0, v4

    const-string/jumbo v1, "current"

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "detail"

    aput-object v2, v1, v4

    const-string/jumbo v2, "bookmark"

    aput-object v2, v1, v5

    const-string/jumbo v2, "offlineAvailable"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    sput-object v0, Lcom/netflix/falkor/task/CmpUtils;->CW_CURR_EPISODE_PQL:Lcom/netflix/falkor/PQL;

    .line 34
    sget-object v0, Lcom/netflix/falkor/task/CmpUtils;->CW_VIDEO_LEAF_PQL:Lcom/netflix/falkor/PQL;

    sput-object v0, Lcom/netflix/falkor/task/CmpUtils;->BB_VIDEO_LEAF_PQL:Lcom/netflix/falkor/PQL;

    .line 35
    sget-object v0, Lcom/netflix/falkor/task/CmpUtils;->CW_CURR_EPISODE_PQL:Lcom/netflix/falkor/PQL;

    sput-object v0, Lcom/netflix/falkor/task/CmpUtils;->BB_CURR_EPISODE_PQL:Lcom/netflix/falkor/PQL;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static buildBillboardPql(Ljava/util/List;Ljava/lang/String;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    .line 53
    if-eqz v2, :cond_0

    new-array v0, v7, [Ljava/lang/Object;

    const-string/jumbo v1, "lolomo"

    aput-object v1, v0, v3

    const-string/jumbo v1, "billboard"

    aput-object v1, v0, v4

    const-string/jumbo v1, "videoEvidence"

    aput-object v1, v0, v5

    .line 54
    invoke-static {p2, p3}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    move-object v1, v0

    .line 57
    :goto_0
    if-eqz v2, :cond_1

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "lolomo"

    aput-object v2, v0, v3

    const-string/jumbo v2, "billboard"

    aput-object v2, v0, v4

    const-string/jumbo v2, "billboardData"

    aput-object v2, v0, v5

    .line 58
    invoke-static {p2, p3}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v6

    const-string/jumbo v2, "billboardSummary"

    aput-object v2, v0, v7

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 61
    :goto_1
    sget-object v2, Lcom/netflix/falkor/task/CmpUtils;->BB_VIDEO_LEAF_PQL:Lcom/netflix/falkor/PQL;

    invoke-virtual {v2, v1}, Lcom/netflix/falkor/PQL;->prepend(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v2, Lcom/netflix/falkor/task/CmpUtils;->BB_CURR_EPISODE_PQL:Lcom/netflix/falkor/PQL;

    invoke-virtual {v2, v1}, Lcom/netflix/falkor/PQL;->prepend(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "lolomos"

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    const-string/jumbo v1, "billboard"

    aput-object v1, v0, v5

    const-string/jumbo v1, "videoEvidence"

    aput-object v1, v0, v6

    .line 55
    invoke-static {p2, p3}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "lolomos"

    aput-object v2, v0, v3

    aput-object p1, v0, v4

    const-string/jumbo v2, "billboard"

    aput-object v2, v0, v5

    const-string/jumbo v2, "billboardData"

    aput-object v2, v0, v6

    .line 59
    invoke-static {p2, p3}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v7

    const/4 v2, 0x5

    const-string/jumbo v3, "billboardSummary"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    goto :goto_1
.end method

.method public static buildCwPql(Ljava/util/List;Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v5, [Ljava/lang/Object;

    const-string/jumbo v1, "lolomo"

    aput-object v1, v0, v2

    const-string/jumbo v1, "continueWatching"

    aput-object v1, v0, v3

    .line 43
    invoke-static {p2, p3}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    .line 46
    :goto_0
    sget-object v1, Lcom/netflix/falkor/task/CmpUtils;->CW_VIDEO_LEAF_PQL:Lcom/netflix/falkor/PQL;

    invoke-virtual {v1, v0}, Lcom/netflix/falkor/PQL;->prepend(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v1, Lcom/netflix/falkor/task/CmpUtils;->CW_CURR_EPISODE_PQL:Lcom/netflix/falkor/PQL;

    invoke-virtual {v1, v0}, Lcom/netflix/falkor/PQL;->prepend(Lcom/netflix/falkor/PQL;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "lolomos"

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    const-string/jumbo v1, "continueWatching"

    aput-object v1, v0, v4

    .line 44
    invoke-static {p2, p3}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    goto :goto_0
.end method

.method public static buildKidsCharacterVideoGalleryPql(Ljava/lang/String;)Lcom/netflix/falkor/PQL;
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "characters"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "gallery"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x64

    invoke-static {v2}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "summary"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0
.end method

.method public static buildMovieDetailsPQLs(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 100
    new-array v0, v6, [Ljava/lang/Object;

    const-string/jumbo v1, "movies"

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v3

    const-string/jumbo v2, "detail"

    aput-object v2, v1, v4

    const-string/jumbo v2, "rating"

    aput-object v2, v1, v5

    const-string/jumbo v2, "inQueue"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string/jumbo v3, "bookmark"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "offlineAvailable"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "evidence"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "defaultTrailer"

    aput-object v3, v1, v2

    .line 101
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v5

    .line 100
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {v4, p1}, Lcom/netflix/falkor/task/CmpUtils;->buildVideoSimsPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {v4, p1}, Lcom/netflix/falkor/task/CmpUtils;->buildVideoSimsSummaryPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7994;->shouldRenderTabs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {v4, p1}, Lcom/netflix/falkor/task/CmpUtils;->buildVideoTrailersPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-static {v4, p1}, Lcom/netflix/falkor/task/CmpUtils;->buildVideoTrailersSummaryPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    return-void
.end method

.method public static buildScenePql(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/falkor/PQL;
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "scenes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "summary"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0
.end method

.method public static buildShowDetailsPQL(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v4

    const-string/jumbo v2, "detail"

    aput-object v2, v1, v5

    const-string/jumbo v2, "rating"

    aput-object v2, v1, v6

    const-string/jumbo v2, "inQueue"

    aput-object v2, v1, v7

    const-string/jumbo v2, "hasWatched"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string/jumbo v3, "defaultTrailer"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    if-eqz p4, :cond_0

    .line 163
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "kubrick"

    aput-object v2, v1, v4

    const-string/jumbo v2, "heroImgs"

    aput-object v2, v1, v5

    const-string/jumbo v2, "evidence"

    aput-object v2, v1, v6

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    :cond_0
    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "shows"

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    aput-object v0, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "shows"

    aput-object v1, v0, v4

    aput-object p1, v0, v5

    const-string/jumbo v1, "episodes"

    aput-object v1, v0, v6

    const-string/jumbo v1, "current"

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "detail"

    aput-object v2, v1, v4

    const-string/jumbo v2, "bookmark"

    aput-object v2, v1, v5

    const-string/jumbo v2, "offlineAvailable"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    new-array v0, v7, [Ljava/lang/Object;

    const-string/jumbo v1, "episodes"

    aput-object v1, v0, v4

    aput-object p2, v0, v5

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "detail"

    aput-object v2, v1, v4

    const-string/jumbo v2, "bookmark"

    aput-object v2, v1, v5

    const-string/jumbo v2, "offlineAvailable"

    aput-object v2, v1, v6

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_1
    invoke-static {v4, p1}, Lcom/netflix/falkor/task/CmpUtils;->buildVideoSimsPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static {v4, p1}, Lcom/netflix/falkor/task/CmpUtils;->buildVideoSimsSummaryPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {}, Lcom/netflix/mediaclient/NetflixApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7994;->shouldRenderTabs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-static {v4, p1}, Lcom/netflix/falkor/task/CmpUtils;->buildVideoTrailersPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-static {v4, p1}, Lcom/netflix/falkor/task/CmpUtils;->buildVideoTrailersSummaryPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_2
    if-eqz p3, :cond_3

    .line 184
    new-array v0, v8, [Ljava/lang/Object;

    const-string/jumbo v1, "shows"

    aput-object v1, v0, v4

    aput-object p1, v0, v5

    const-string/jumbo v1, "seasons"

    aput-object v1, v0, v6

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-static {p1}, Lcom/netflix/falkor/task/CmpUtils;->getSeasonsPQL(Ljava/util/List;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_3
    if-eqz p5, :cond_4

    .line 189
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "shows"

    aput-object v1, v0, v4

    aput-object p1, v0, v5

    const-string/jumbo v1, "seasons"

    aput-object v1, v0, v6

    const-string/jumbo v1, "current"

    aput-object v1, v0, v7

    const-string/jumbo v1, "episodes"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const/16 v2, 0x27

    invoke-static {v4, v2}, Lcom/netflix/falkor/PQL;->range(II)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/falkor/task/CmpUtils;->FETCH_EPISODES_LEAF_TYPES:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_4
    return-void
.end method

.method public static buildVideoSimsPql(ZLjava/lang/String;)Lcom/netflix/falkor/PQL;
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "movies"

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, "similars"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const/16 v2, 0xb

    .line 70
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v0

    .line 68
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "shows"

    goto :goto_0
.end method

.method public static buildVideoSimsPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/falkor/PQL;"
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "movies"

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, "similars"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const/16 v2, 0xb

    .line 115
    invoke-static {v2}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v0

    .line 113
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "shows"

    goto :goto_0
.end method

.method private static buildVideoSimsSummaryPql(ZLjava/lang/String;)Lcom/netflix/falkor/PQL;
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "movies"

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, "similars"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "shows"

    goto :goto_0
.end method

.method public static buildVideoSimsSummaryPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/falkor/PQL;"
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "movies"

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, "similars"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "shows"

    goto :goto_0
.end method

.method public static buildVideoTrailersPql(ZLjava/lang/String;)Lcom/netflix/falkor/PQL;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Object;

    if-eqz p0, :cond_0

    const-string/jumbo v0, "movies"

    :goto_0
    aput-object v0, v1, v3

    aput-object p1, v1, v4

    const-string/jumbo v0, "trailers"

    aput-object v0, v1, v5

    const/16 v0, 0x18

    .line 76
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v1, v6

    new-array v0, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "summary"

    aput-object v2, v0, v3

    const-string/jumbo v2, "trickplayBaseUrl"

    aput-object v2, v0, v4

    const-string/jumbo v2, "intrUrl"

    aput-object v2, v0, v5

    const-string/jumbo v2, "detail"

    aput-object v2, v0, v6

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v1, v7

    .line 74
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "shows"

    goto :goto_0
.end method

.method public static buildVideoTrailersPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/falkor/PQL;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Object;

    if-eqz p0, :cond_0

    const-string/jumbo v0, "movies"

    :goto_0
    aput-object v0, v1, v3

    aput-object p1, v1, v4

    const-string/jumbo v0, "trailers"

    aput-object v0, v1, v5

    const/16 v0, 0x18

    .line 121
    invoke-static {v0}, Lcom/netflix/falkor/PQL;->range(I)Ljava/util/Map;

    move-result-object v0

    aput-object v0, v1, v6

    new-array v0, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "summary"

    aput-object v2, v0, v3

    const-string/jumbo v2, "trickplayBaseUrl"

    aput-object v2, v0, v4

    const-string/jumbo v2, "intrUrl"

    aput-object v2, v0, v5

    const-string/jumbo v2, "detail"

    aput-object v2, v0, v6

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v1, v7

    .line 119
    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "shows"

    goto :goto_0
.end method

.method public static buildVideoTrailersSummaryPql(ZLjava/lang/String;)Lcom/netflix/falkor/PQL;
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "movies"

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, "trailers"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "shows"

    goto :goto_0
.end method

.method public static buildVideoTrailersSummaryPql(ZLjava/util/List;)Lcom/netflix/falkor/PQL;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/falkor/PQL;"
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "movies"

    :goto_0
    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, "trailers"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "shows"

    goto :goto_0
.end method

.method public static buildVolatileVideoPQLs(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/falkor/PQL;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    if-eqz p2, :cond_0

    .line 150
    new-array v0, v6, [Ljava/lang/Object;

    const-string/jumbo v1, "movies"

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "inQueue"

    aput-object v2, v1, v3

    const-string/jumbo v2, "rating"

    aput-object v2, v1, v4

    const-string/jumbo v2, "bookmark"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :goto_0
    return-void

    .line 152
    :cond_0
    new-array v0, v6, [Ljava/lang/Object;

    const-string/jumbo v1, "shows"

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "inQueue"

    aput-object v2, v1, v3

    const-string/jumbo v2, "rating"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-array v0, v7, [Ljava/lang/Object;

    const-string/jumbo v1, "shows"

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    const-string/jumbo v1, "seasons"

    aput-object v1, v0, v5

    const-string/jumbo v1, "summary"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "shows"

    aput-object v1, v0, v3

    aput-object p1, v0, v4

    const-string/jumbo v1, "episodes"

    aput-object v1, v0, v5

    const-string/jumbo v1, "current"

    aput-object v1, v0, v6

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "detail"

    aput-object v2, v1, v3

    const-string/jumbo v2, "bookmark"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/netflix/falkor/PQL;->array([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getSeasonsPQL(Ljava/util/List;)Lcom/netflix/falkor/PQL;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netflix/falkor/PQL;"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "shows"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "seasons"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "all"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "detail"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netflix/falkor/PQL;->create([Ljava/lang/Object;)Lcom/netflix/falkor/PQL;

    move-result-object v0

    return-object v0
.end method
