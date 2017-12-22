.class public interface abstract Lcom/netflix/mediaclient/service/player/OfflinePlaybackInterface$OfflineManifest;
.super Ljava/lang/Object;
.source "OfflinePlaybackInterface.java"


# virtual methods
.method public abstract getAudioSubtitleDefaultOrderInfo()[Lcom/netflix/mediaclient/media/AudioSubtitleDefaultOrderInfo;
.end method

.method public abstract getAudioTrackList()[Lcom/netflix/mediaclient/media/AudioSource;
.end method

.method public abstract getBifFile()Ljava/lang/String;
.end method

.method public abstract getDownloadContext()Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;
.end method

.method public abstract getDxId()Ljava/lang/String;
.end method

.method public abstract getLinks()Lorg/json/JSONObject;
.end method

.method public abstract getManifestData()Lcom/netflix/mediaclient/media/PlayerManifestData;
.end method

.method public abstract getMpd()Lcom/google/android/exoplayer/dash/mpd/MediaPresentationDescription;
.end method

.method public abstract getOfflineKeySetId()[B
.end method

.method public abstract getOxId()Ljava/lang/String;
.end method

.method public abstract getSubtitleTrackList()[Lcom/netflix/mediaclient/media/Subtitle;
.end method

.method public abstract getVideoTrackList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/media/manifest/VideoTrack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWatermark()Lcom/netflix/mediaclient/media/Watermark;
.end method
