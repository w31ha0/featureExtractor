.class public final Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;
.super Lcom/netflix/mediaclient/media/bitrate/BitrateRange;
.source "VideoBitrateRange.java"


# instance fields
.field private mProfile:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/media/bitrate/BitrateRange;-><init>(II)V

    .line 29
    iput-object p3, p0, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->mProfile:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    instance-of v2, p1, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;

    if-nez v2, :cond_3

    move v0, v1

    .line 72
    goto :goto_0

    .line 74
    :cond_3
    check-cast p1, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;

    .line 75
    iget v2, p0, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->maximal:I

    iget v3, p1, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->maximal:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 76
    goto :goto_0

    .line 78
    :cond_4
    iget v2, p0, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->minimal:I

    iget v3, p1, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->minimal:I

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 79
    goto :goto_0

    .line 81
    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->mProfile:Ljava/lang/String;

    iget-object v3, p1, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->mProfile:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 82
    goto :goto_0
.end method

.method public getProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->mProfile:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 52
    .line 54
    iget v0, p0, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->maximal:I

    add-int/lit8 v0, v0, 0x1f

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->minimal:I

    add-int/2addr v0, v1

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->mProfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 57
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x1

    .line 58
    return v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->mProfile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VideoBitrateRange [profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->mProfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "minimal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->minimal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maximal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/media/bitrate/VideoBitrateRange;->maximal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
