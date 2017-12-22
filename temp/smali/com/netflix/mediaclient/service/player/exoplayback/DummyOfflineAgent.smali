.class public Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;
.super Ljava/lang/Object;
.source "DummyOfflineAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface;


# static fields
.field private static final MPD_URL:Ljava/lang/String; = "file:///sdcard/offline/offline.mpd"

.field private static final TAG:Ljava/lang/String; = "dummy_offline_agent"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;->buildMpdfromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    move-result-object v0

    return-object v0
.end method

.method private buildMpdfromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 153
    const-string/jumbo v1, "dummy_offline_agent"

    const-string/jumbo v2, "generateMPD"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string/jumbo v1, "dummy_offline_agent"

    invoke-static {p1, v1}, Lcom/google/android/exoplayer/util/Util;->getUserAgent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    new-instance v2, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;

    invoke-direct {v2, p1, v1}, Lcom/google/android/exoplayer/upstream/DefaultUriDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    new-instance v1, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;

    invoke-direct {v1}, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescriptionParser;-><init>()V

    .line 157
    new-instance v3, Lcom/google/android/exoplayer/upstream/UriLoadable;

    invoke-direct {v3, p2, v2, v1}, Lcom/google/android/exoplayer/upstream/UriLoadable;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V

    .line 161
    :try_start_0
    invoke-virtual {v3}, Lcom/google/android/exoplayer/upstream/UriLoadable;->load()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    invoke-virtual {v3}, Lcom/google/android/exoplayer/upstream/UriLoadable;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;

    .line 170
    const-string/jumbo v1, "dummy_offline_agent"

    const-string/jumbo v2, "generateMPD done"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_0
    return-object v0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    const-string/jumbo v2, "dummy_offline_agent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " fial to load manifest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :catch_1
    move-exception v1

    .line 166
    const-string/jumbo v2, "dummy_offline_agent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " fial to load manifest"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public abortManifestRequest(J)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public notifyPause(J)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public notifyPlay(J)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public notifyPlayError(J)V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public notifyPlayProgress(JJ)V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public notifyStop(J)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public requestOfflineManifest(JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;)V
    .locals 7

    .prologue
    .line 177
    new-instance v4, Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent$DummyOfflineManifest;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent$DummyOfflineManifest;-><init>(Lcom/netflix/mediaclient/service/player/exoplayback/DummyOfflineAgent;)V

    const-string/jumbo v5, "-1"

    sget-object v6, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    move-object v1, p3

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$ManifestCallback;->onManifestResponse(JLcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 178
    return-void
.end method
