.class public interface abstract Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;
.super Ljava/lang/Object;
.source "SubtitleParser.java"


# virtual methods
.method public abstract getNumberOfDisplayedSubtitles()I
.end method

.method public abstract getNumberOfSubtitlesExpectedToBeDisplayed()I
.end method

.method public abstract getSubtitleProfile()Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;
.end method

.method public abstract getSubtitleUrl()Lcom/netflix/mediaclient/media/SubtitleUrl;
.end method

.method public abstract getSubtitlesForPosition(J)Lcom/netflix/mediaclient/service/player/subtitles/SubtitleScreen;
.end method

.method public abstract isReady()Z
.end method

.method public abstract load()V
.end method

.method public abstract seeked(I)V
.end method
