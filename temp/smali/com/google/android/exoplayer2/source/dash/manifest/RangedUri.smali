.class public final Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
.super Ljava/lang/Object;
.source "RangedUri.java"


# instance fields
.field private final baseUri:Ljava/lang/String;

.field private hashCode:I

.field public final length:J

.field private final referenceUri:Ljava/lang/String;

.field public final start:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "referenceUri"    # Ljava/lang/String;
    .param p3, "start"    # J
    .param p5, "length"    # J

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 59
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->baseUri:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    .line 61
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    .line 62
    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    .line 63
    return-void

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 10
    .param p1, "other"    # Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v6, -0x1

    .line 95
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-object v1

    .line 97
    :cond_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    add-long/2addr v2, v4

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 98
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->baseUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v8, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v0, v8, v6

    if-nez v0, :cond_2

    :goto_1
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_2
    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-wide v8, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    add-long/2addr v6, v8

    goto :goto_1

    .line 100
    :cond_3
    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 101
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->baseUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v0, v8, v6

    if-nez v0, :cond_4

    :goto_2
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_4
    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    add-long/2addr v6, v8

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    if-ne p0, p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v1

    .line 125
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 126
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 128
    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 129
    .local v0, "other":Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 131
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->getUriString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->baseUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->baseUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 110
    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    if-nez v1, :cond_0

    .line 111
    const/16 v0, 0x11

    .line 112
    .local v0, "result":I
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    long-to-int v1, v2

    add-int/lit16 v0, v1, 0x20f

    .line 113
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 114
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 115
    iput v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    .line 117
    .end local v0    # "result":I
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    return v1
.end method
