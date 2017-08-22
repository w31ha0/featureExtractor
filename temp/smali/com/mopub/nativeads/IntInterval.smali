.class public Lcom/mopub/nativeads/IntInterval;
.super Ljava/lang/Object;
.source "IntInterval.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mopub/nativeads/IntInterval;",
        ">;"
    }
.end annotation


# instance fields
.field private length:I

.field private start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/mopub/nativeads/IntInterval;->start:I

    .line 14
    iput p2, p0, Lcom/mopub/nativeads/IntInterval;->length:I

    .line 15
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mopub/nativeads/IntInterval;)I
    .locals 2
    .param p1, "another"    # Lcom/mopub/nativeads/IntInterval;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    iget v0, p0, Lcom/mopub/nativeads/IntInterval;->start:I

    iget v1, p1, Lcom/mopub/nativeads/IntInterval;->start:I

    if-ne v0, v1, :cond_0

    .line 73
    iget v0, p0, Lcom/mopub/nativeads/IntInterval;->length:I

    iget v1, p1, Lcom/mopub/nativeads/IntInterval;->length:I

    sub-int/2addr v0, v1

    .line 75
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/mopub/nativeads/IntInterval;->start:I

    iget v1, p1, Lcom/mopub/nativeads/IntInterval;->start:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 8
    check-cast p1, Lcom/mopub/nativeads/IntInterval;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/IntInterval;->compareTo(Lcom/mopub/nativeads/IntInterval;)I

    move-result v0

    return v0
.end method

.method public equals(II)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 40
    iget v0, p0, Lcom/mopub/nativeads/IntInterval;->start:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/mopub/nativeads/IntInterval;->length:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-ne p0, p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 53
    :cond_1
    instance-of v3, p1, Lcom/mopub/nativeads/IntInterval;

    if-nez v3, :cond_2

    move v1, v2

    .line 54
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 57
    check-cast v0, Lcom/mopub/nativeads/IntInterval;

    .line 58
    .local v0, "other":Lcom/mopub/nativeads/IntInterval;
    iget v3, p0, Lcom/mopub/nativeads/IntInterval;->start:I

    iget v4, v0, Lcom/mopub/nativeads/IntInterval;->start:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/mopub/nativeads/IntInterval;->length:I

    iget v4, v0, Lcom/mopub/nativeads/IntInterval;->length:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/mopub/nativeads/IntInterval;->length:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/mopub/nativeads/IntInterval;->start:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 63
    const/16 v0, 0x1d

    .line 64
    .local v0, "result":I
    iget v1, p0, Lcom/mopub/nativeads/IntInterval;->start:I

    add-int/lit16 v0, v1, 0x383

    .line 65
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mopub/nativeads/IntInterval;->length:I

    add-int v0, v1, v2

    .line 66
    return v0
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/mopub/nativeads/IntInterval;->length:I

    .line 31
    return-void
.end method

.method public setStart(I)V
    .locals 0
    .param p1, "start"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/mopub/nativeads/IntInterval;->start:I

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mopub/nativeads/IntInterval;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mopub/nativeads/IntInterval;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
