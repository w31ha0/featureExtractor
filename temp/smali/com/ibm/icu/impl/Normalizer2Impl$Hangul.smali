.class public final Lcom/ibm/icu/impl/Normalizer2Impl$Hangul;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"


# direct methods
.method public static decompose(ILjava/lang/Appendable;)I
    .locals 3

    .prologue
    .line 67
    const v0, 0xac00

    sub-int v0, p0, v0

    .line 68
    :try_start_0
    rem-int/lit8 v1, v0, 0x1c

    .line 69
    div-int/lit8 v0, v0, 0x1c

    .line 70
    div-int/lit8 v2, v0, 0x15

    add-int/lit16 v2, v2, 0x1100

    int-to-char v2, v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 71
    rem-int/lit8 v0, v0, 0x15

    add-int/lit16 v0, v0, 0x1161

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 72
    if-nez v1, :cond_0

    .line 73
    const/4 v0, 0x2

    .line 76
    :goto_0
    return v0

    .line 75
    :cond_0
    add-int/lit16 v0, v1, 0x11a7

    int-to-char v0, v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    const/4 v0, 0x3

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isHangulWithoutJamoT(C)Z
    .locals 2

    .prologue
    .line 51
    const v0, 0xac00

    sub-int v0, p0, v0

    int-to-char v0, v0

    .line 52
    const/16 v1, 0x2ba4

    if-ge v0, v1, :cond_0

    rem-int/lit8 v0, v0, 0x1c

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
