.class public interface abstract Lcom/netflix/mediaclient/service/player/subtitles/PlaybackSubtitleProvider;
.super Ljava/lang/Object;
.source "PlaybackSubtitleProvider.java"


# virtual methods
.method public abstract getCurrentPlayableId()J
.end method

.method public abstract getCurrentSubtitleTrack()Lcom/netflix/mediaclient/media/Subtitle;
.end method

.method public abstract getPlayerFileCache()Lcom/netflix/mediaclient/servicemgr/IPlayerFileCache;
.end method

.method public abstract getResourceFetcher()Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcher;
.end method

.method public abstract reportFailedSubtitle(Ljava/lang/String;Lcom/netflix/mediaclient/media/SubtitleUrl;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleFailure;ZLcom/netflix/mediaclient/android/app/Status;[Ljava/lang/String;)V
.end method

.method public abstract reportSubtitleChanged(Ljava/lang/String;Ljava/lang/String;)V
.end method
