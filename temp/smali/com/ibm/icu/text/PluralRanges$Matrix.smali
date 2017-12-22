.class final Lcom/ibm/icu/text/PluralRanges$Matrix;
.super Ljava/lang/Object;
.source "PluralRanges.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/ibm/icu/text/PluralRanges$Matrix;",
        ">;"
    }
.end annotation


# instance fields
.field private data:[B


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    sget v1, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    .line 49
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/ibm/icu/text/PluralRanges$Matrix;
    .locals 2

    .prologue
    .line 168
    new-instance v1, Lcom/ibm/icu/text/PluralRanges$Matrix;

    invoke-direct {v1}, Lcom/ibm/icu/text/PluralRanges$Matrix;-><init>()V

    .line 169
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, v1, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    .line 170
    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/ibm/icu/text/PluralRanges$Matrix;->clone()Lcom/ibm/icu/text/PluralRanges$Matrix;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcom/ibm/icu/text/PluralRanges$Matrix;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 157
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    aget-byte v2, v2, v0

    iget-object v3, p1, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    aget-byte v3, v3, v0

    sub-int/2addr v2, v3

    .line 159
    if-eqz v2, :cond_1

    move v1, v2

    .line 163
    :cond_0
    return v1

    .line 157
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 46
    check-cast p1, Lcom/ibm/icu/text/PluralRanges$Matrix;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralRanges$Matrix;->compareTo(Lcom/ibm/icu/text/PluralRanges$Matrix;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 149
    instance-of v1, p1, Lcom/ibm/icu/text/PluralRanges$Matrix;

    if-nez v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/ibm/icu/text/PluralRanges$Matrix;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralRanges$Matrix;->compareTo(Lcom/ibm/icu/text/PluralRanges$Matrix;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method get(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)Lcom/ibm/icu/impl/StandardPlural;
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    sget v2, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v2

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    .line 85
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/StandardPlural;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 140
    move v1, v0

    .line 141
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 142
    mul-int/lit8 v1, v1, 0x25

    iget-object v2, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return v1
.end method

.method setIfNew(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    sget v2, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    mul-int/2addr v1, v2

    invoke-virtual {p2}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v2

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    .line 72
    if-ltz v0, :cond_0

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Previously set value for <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    .line 74
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/PluralRanges$Matrix;->data:[B

    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    sget v2, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    mul-int/2addr v0, v2

    invoke-virtual {p2}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v2

    add-int/2addr v2, v0

    if-nez p3, :cond_1

    const/4 v0, -0x1

    .line 77
    :goto_0
    aput-byte v0, v1, v2

    .line 78
    return-void

    .line 77
    :cond_1
    invoke-virtual {p3}, Lcom/ibm/icu/impl/StandardPlural;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    invoke-static {}, Lcom/ibm/icu/impl/StandardPlural;->values()[Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 177
    invoke-static {}, Lcom/ibm/icu/impl/StandardPlural;->values()[Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v7

    array-length v8, v7

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_1

    aget-object v9, v7, v0

    .line 178
    invoke-virtual {p0, v6, v9}, Lcom/ibm/icu/text/PluralRanges$Matrix;->get(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v10

    .line 179
    if-eqz v10, :cond_0

    .line 180
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " & "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " \u2192 "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
