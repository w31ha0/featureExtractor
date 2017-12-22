.class Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;
.super Ljava/lang/Object;
.source "PlayTimeTracker.java"


# instance fields
.field mAdlid:Ljava/lang/String;

.field mAudioPlayTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMovieTotal:J

.field mSubtitlePlayTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSubtitledlid:Ljava/lang/String;

.field mVdlid:Ljava/lang/String;

.field mVideoPlayTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mMovieTotal:J

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mVideoPlayTime:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mAudioPlayTime:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mSubtitlePlayTime:Ljava/util/Map;

    .line 28
    return-void
.end method

.method public static getDefaultTimeJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 84
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 85
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 87
    :try_start_0
    const-string/jumbo v2, "total"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string/jumbo v2, "video"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private mapToJsonArray(Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 103
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 105
    const-string/jumbo v4, "downloadableId"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string/jumbo v4, "duration"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 109
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getMovieTotalInMs()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mMovieTotal:J

    return-wide v0
.end method

.method public getPlayTimeJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 70
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 72
    :try_start_0
    const-string/jumbo v0, "total"

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mMovieTotal:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 73
    const-string/jumbo v0, "video"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mVideoPlayTime:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mapToJsonArray(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string/jumbo v0, "audio"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mAudioPlayTime:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mapToJsonArray(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mSubtitlePlayTime:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    const-string/jumbo v0, "timedtext"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mSubtitlePlayTime:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mapToJsonArray(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PlayTimeTracker{mSubtitlePlayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mSubtitlePlayTime:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mAudioPlayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mAudioPlayTime:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVideoPlayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mVideoPlayTime:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateCurrrentPlayDlids(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mVdlid:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mAdlid:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mSubtitledlid:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mVideoPlayTime:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mVideoPlayTime:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mAudioPlayTime:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mAudioPlayTime:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_1
    invoke-static {p3}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mSubtitlePlayTime:Ljava/util/Map;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mSubtitledlid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mSubtitlePlayTime:Ljava/util/Map;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mSubtitledlid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_2
    return-void
.end method

.method updatePlayTime(I)V
    .locals 4

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mMovieTotal:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mMovieTotal:J

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mVideoPlayTime:Ljava/util/Map;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mVdlid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mVideoPlayTime:Ljava/util/Map;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mVdlid:Ljava/lang/String;

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mAudioPlayTime:Ljava/util/Map;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mAdlid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mAudioPlayTime:Ljava/util/Map;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mAdlid:Ljava/lang/String;

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mSubtitledlid:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mSubtitlePlayTime:Ljava/util/Map;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mSubtitledlid:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mSubtitlePlayTime:Ljava/util/Map;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/PlayTimeTracker;->mSubtitledlid:Ljava/lang/String;

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    return-void
.end method
