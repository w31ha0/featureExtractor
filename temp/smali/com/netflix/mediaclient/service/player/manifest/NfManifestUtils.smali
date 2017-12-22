.class public Lcom/netflix/mediaclient/service/player/manifest/NfManifestUtils;
.super Ljava/lang/Object;
.source "NfManifestUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAudioSourceForDownloadable(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/lang/String;)Lcom/netflix/mediaclient/media/AudioSource;
    .locals 6

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v3

    .line 33
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v3, v2

    .line 34
    invoke-virtual {v1}, Lcom/netflix/mediaclient/media/AudioSource;->getStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Stream;

    .line 35
    iget-object v0, v0, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadable_id:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/StringUtils;->notEmptyAndEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 40
    :goto_1
    return-object v0

    .line 33
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 40
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getAudioSourceStreamForDownloadable(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/netflix/mediaclient/media/AudioSource;",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    .line 46
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 47
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/AudioSource;->getStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Stream;

    .line 48
    iget-object v6, v0, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadable_id:Ljava/lang/String;

    invoke-static {v6, p1}, Lcom/netflix/mediaclient/util/StringUtils;->notEmptyAndEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 49
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 53
    :goto_1
    return-object v0

    .line 46
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 53
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getDownloadableForAudioTrackId(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;

    move-result-object v2

    .line 58
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 60
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/AudioSource;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/netflix/mediaclient/util/StringUtils;->notEmptyAndEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v4}, Lcom/netflix/mediaclient/media/AudioSource;->getStreams()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/Stream;

    iget-object v0, v0, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadable_id:Ljava/lang/String;

    .line 67
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getVideoTrackStreamForDownloadable(Lcom/netflix/mediaclient/service/player/manifest/NfManifest;Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/service/player/manifest/NfManifest;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            "Lcom/netflix/mediaclient/media/manifest/Stream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;->getVideoTracks()Ljava/util/List;

    move-result-object v0

    .line 21
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/manifest/VideoTrack;

    .line 22
    iget-object v1, v0, Lcom/netflix/mediaclient/media/manifest/VideoTrack;->streams:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/media/manifest/Stream;

    .line 23
    iget-object v4, v1, Lcom/netflix/mediaclient/media/manifest/Stream;->downloadable_id:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/netflix/mediaclient/util/StringUtils;->notEmptyAndEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 24
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .line 28
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
