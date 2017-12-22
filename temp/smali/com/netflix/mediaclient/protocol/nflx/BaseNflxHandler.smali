.class abstract Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;
.super Ljava/lang/Object;
.source "BaseNflxHandler.java"

# interfaces
.implements Lcom/netflix/mediaclient/protocol/nflx/NflxHandler;


# static fields
.field public static final BASE_ENCODING_MODULE:I = 0x3e

.field protected static final TAG:Ljava/lang/String; = "NflxHandler"


# instance fields
.field protected mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field protected mParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 40
    iput-object p2, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->mParamsMap:Ljava/util/Map;

    .line 41
    return-void
.end method


# virtual methods
.method protected getVideoInfo()Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->mParamsMap:Ljava/util/Map;

    const-string/jumbo v1, "movieid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->getVideoInfoFromTinyUrl()Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    move-result-object v0

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->mParamsMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getVideoInfoFromVideoIdUrl(Ljava/lang/String;Ljava/util/Map;)Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    move-result-object v0

    .line 64
    if-nez v0, :cond_2

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->mParamsMap:Ljava/util/Map;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getEpisodeId(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->getCatalogId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->createFromEpisode(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    move-result-object v1

    .line 73
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 79
    goto :goto_0
.end method

.method protected getVideoInfoFromTinyUrl()Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->mParamsMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getTargetUrl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string/jumbo v0, "NflxHandler"

    const-string/jumbo v1, "movie id uri and tiny url both doesn\'t exist in params map"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v0, 0x0

    .line 105
    :goto_0
    return-object v0

    .line 94
    :cond_0
    const-string/jumbo v1, "NflxHandler"

    const-string/jumbo v2, "movie id uri doesn\'t exist in params map, but tiny url does. Resolve it"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v1, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$1;-><init>(Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 105
    sget-object v0, Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;->DELAYED:Lcom/netflix/mediaclient/util/NflxProtocolUtils$VideoInfo;

    goto :goto_0
.end method

.method protected abstract handleEpisodeFromTinyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
.end method

.method protected handleHomeAction()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/netflix/mediaclient/protocol/nflx/HomeActionHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->mParamsMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/protocol/nflx/HomeActionHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/util/Map;)V

    .line 47
    invoke-virtual {v0}, Lcom/netflix/mediaclient/protocol/nflx/HomeActionHandler;->handle()Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 48
    return-void
.end method

.method protected abstract handleMovieFromTinyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
.end method

.method protected handleTinyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 139
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertNotOnMain()Z

    .line 141
    sget-object v0, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 144
    :try_start_0
    invoke-static {p1}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->getExpandUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    const/16 v4, 0x3e

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/util/BaseConverter;->convertFromBaseToInteger(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 147
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 148
    sget-object v5, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->MOVIE_TYPE:Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    invoke-static {v4}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;->ordinalToType(I)Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler$TinyTypes;

    move-result-object v4

    if-ne v5, v4, :cond_1

    .line 150
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    const-string/jumbo v1, "NflxHandler"

    const-string/jumbo v2, "No catalog_title in JSON object! Go to LOLOMO."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->handleHomeAction()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_1
    sget-object v1, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->HANDLING_WITH_DELAY:Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->mActivity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/NflxProtocolUtils;->reportDelayedResponseHandled(Landroid/app/Activity;)V

    .line 177
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 148
    goto :goto_0

    .line 160
    :cond_2
    if-eqz v1, :cond_3

    .line 161
    :try_start_1
    const-string/jumbo v1, "NflxHandler"

    const-string/jumbo v3, "This was a movie url"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0, v2, p2, p3}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->handleMovieFromTinyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    move-result-object v0

    goto :goto_1

    .line 164
    :cond_3
    const-string/jumbo v1, "NflxHandler"

    const-string/jumbo v3, "This was a TV Show url"

    invoke-static {v1, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0, v2, p2, p3}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->handleEpisodeFromTinyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 169
    :catch_0
    move-exception v1

    .line 170
    const-string/jumbo v2, "NflxHandler"

    const-string/jumbo v3, "We failed to get expanded URL "

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    invoke-virtual {p0}, Lcom/netflix/mediaclient/protocol/nflx/BaseNflxHandler;->handleHomeAction()V

    goto :goto_1
.end method
