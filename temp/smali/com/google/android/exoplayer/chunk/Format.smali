.class public Lcom/google/android/exoplayer/chunk/Format;
.super Ljava/lang/Object;
.source "Format.java"


# instance fields
.field public final audioChannels:I

.field public final audioSamplingRate:I

.field public final bitrate:I

.field public final codecs:Ljava/lang/String;

.field public final frameRate:F

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final language:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIFIIILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {p1}, Lcom/google/android/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    .line 141
    iput-object p2, p0, Lcom/google/android/exoplayer/chunk/Format;->mimeType:Ljava/lang/String;

    .line 142
    iput p3, p0, Lcom/google/android/exoplayer/chunk/Format;->width:I

    .line 143
    iput p4, p0, Lcom/google/android/exoplayer/chunk/Format;->height:I

    .line 144
    iput p5, p0, Lcom/google/android/exoplayer/chunk/Format;->frameRate:F

    .line 145
    iput p6, p0, Lcom/google/android/exoplayer/chunk/Format;->audioChannels:I

    .line 146
    iput p7, p0, Lcom/google/android/exoplayer/chunk/Format;->audioSamplingRate:I

    .line 147
    iput p8, p0, Lcom/google/android/exoplayer/chunk/Format;->bitrate:I

    .line 148
    iput-object p9, p0, Lcom/google/android/exoplayer/chunk/Format;->language:Ljava/lang/String;

    .line 149
    iput-object p10, p0, Lcom/google/android/exoplayer/chunk/Format;->codecs:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 162
    if-ne p0, p1, :cond_0

    .line 163
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    .line 165
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 166
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :cond_2
    check-cast p1, Lcom/google/android/exoplayer/chunk/Format;

    .line 169
    iget-object v0, p1, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer/chunk/Format;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
