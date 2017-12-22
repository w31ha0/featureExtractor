.class public interface abstract Lcom/netflix/mediaclient/service/player/subtitles/TextSubtitleParser;
.super Ljava/lang/Object;
.source "TextSubtitleParser.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/subtitles/SubtitleParser;


# virtual methods
.method public abstract getCellResolution()Lcom/netflix/mediaclient/service/player/subtitles/text/CellResolution;
.end method

.method public abstract getDeviceDefault()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
.end method

.method public abstract getNamedRegion(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/Region;
.end method

.method public abstract getNamedStyle(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
.end method

.method public abstract getRegionDefault()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
.end method

.method public abstract getRegions()[Lcom/netflix/mediaclient/service/player/subtitles/text/Region;
.end method

.method public abstract getTextStyleDefault()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
.end method

.method public abstract getTickRate()D
.end method

.method public abstract getTimeBase()Ljava/lang/String;
.end method

.method public abstract getUserDefaults()Lcom/netflix/mediaclient/service/player/subtitles/text/TextStyle;
.end method
