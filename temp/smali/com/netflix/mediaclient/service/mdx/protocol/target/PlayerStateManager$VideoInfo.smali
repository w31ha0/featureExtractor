.class Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;
.super Ljava/lang/Object;
.source "PlayerStateManager.java"


# instance fields
.field private mCatalogId:Ljava/lang/String;

.field private mDuration:I

.field private mEpisodeId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->mDuration:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$1;)V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;-><init>()V

    return-void
.end method


# virtual methods
.method getCatalogId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->mCatalogId:Ljava/lang/String;

    return-object v0
.end method

.method getDuration()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->mDuration:I

    return v0
.end method

.method getEpisodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->mEpisodeId:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized getVideoIds()Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    .locals 5

    .prologue
    .line 302
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "MdxTargetPlayerState"

    const-string/jumbo v1, "getVideoIds %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->mCatalogId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->mEpisodeId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    const/4 v0, 0x0

    .line 305
    :try_start_1
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->mCatalogId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->mEpisodeId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/WebApiUtils;->extractIds(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/util/WebApiUtils$VideoIds;
    :try_end_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 309
    :goto_0
    monitor-exit p0

    return-object v0

    .line 306
    :catch_0
    move-exception v1

    .line 307
    :try_start_2
    const-string/jumbo v1, "MdxTargetPlayerState"

    const-string/jumbo v2, "getVideoIds has exception."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized reset(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 283
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->mCatalogId:Ljava/lang/String;

    .line 284
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->mEpisodeId:Ljava/lang/String;

    .line 285
    iput p3, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->mDuration:I

    .line 286
    const-string/jumbo v0, "MdxTargetPlayerState"

    const-string/jumbo v1, "reset VideoInfo %s, %s, %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->mCatalogId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->mEpisodeId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/netflix/mediaclient/service/mdx/protocol/target/PlayerStateManager$VideoInfo;->mDuration:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
