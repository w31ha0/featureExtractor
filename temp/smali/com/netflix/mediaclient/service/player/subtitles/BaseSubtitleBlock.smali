.class public abstract Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;
.super Ljava/lang/Object;
.source "BaseSubtitleBlock.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/player/subtitles/SubtitleBlock;


# static fields
.field protected static final TAG:Ljava/lang/String; = "nf_subtitles"


# instance fields
.field protected mEnd:J

.field protected mId:Ljava/lang/String;

.field protected mMaxFontSizeMultiplier:F

.field protected mStart:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public getEnd()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;->mEnd:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;->mStart:J

    return-wide v0
.end method

.method public isVisible(J)Z
    .locals 3

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;->mStart:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;->mEnd:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibleInGivenTimeRange(JJ)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 75
    cmp-long v1, p1, p3

    if-lez v1, :cond_1

    .line 76
    const-string/jumbo v1, "nf_subtitles"

    const-string/jumbo v2, "From can not be later than to!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;->mStart:J

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;->mEnd:J

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ", mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;->mStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;->mEnd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMaxFontSizeMultiplier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/subtitles/BaseSubtitleBlock;->mMaxFontSizeMultiplier:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
