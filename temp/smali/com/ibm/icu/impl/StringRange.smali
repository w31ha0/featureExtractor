.class public Lcom/ibm/icu/impl/StringRange;
.super Ljava/lang/Object;
.source "StringRange.java"


# static fields
.field public static final COMPARE_INT_ARRAYS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/ibm/icu/impl/StringRange$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/StringRange$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/StringRange;->COMPARE_INT_ARRAYS:Ljava/util/Comparator;

    return-void
.end method

.method private static add(II[I[ILjava/lang/StringBuilder;Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I[I",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    add-int v0, p0, p1

    aget v1, p2, v0

    .line 268
    aget v8, p3, p0

    .line 269
    if-le v1, v8, :cond_0

    .line 270
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "Range must have x\u1d62 \u2264 y\u1d62 for each index i"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    if-ne p0, v0, :cond_1

    const/4 v0, 0x1

    move v6, v0

    .line 273
    :goto_0
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    move v7, v1

    .line 274
    :goto_1
    if-gt v7, v8, :cond_3

    .line 275
    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 276
    if-eqz v6, :cond_2

    .line 277
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 281
    :goto_2
    invoke-virtual {p4, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 274
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    .line 272
    :cond_1
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    .line 279
    :cond_2
    add-int/lit8 v0, p0, 0x1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/StringRange;->add(II[I[ILjava/lang/StringBuilder;Ljava/util/Collection;)V

    goto :goto_2

    .line 283
    :cond_3
    return-void
.end method

.method public static expand(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 243
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 244
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "Range must have 2 valid strings"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_1
    invoke-static {p0}, Lcom/ibm/icu/lang/CharSequences;->codePoints(Ljava/lang/CharSequence;)[I

    move-result-object v2

    .line 247
    invoke-static {p1}, Lcom/ibm/icu/lang/CharSequences;->codePoints(Ljava/lang/CharSequence;)[I

    move-result-object v3

    .line 248
    array-length v1, v2

    array-length v4, v3

    sub-int/2addr v1, v4

    .line 250
    if-eqz p2, :cond_2

    if-eqz v1, :cond_2

    .line 251
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "Range must have equal-length strings"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_2
    if-gez v1, :cond_3

    .line 253
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "Range must have start-length \u2265 end-length"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_3
    array-length v4, v3

    if-nez v4, :cond_4

    .line 255
    new-instance v0, Lcom/ibm/icu/util/ICUException;

    const-string/jumbo v1, "Range must have end-length > 0"

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v0

    .line 259
    :goto_0
    if-ge v5, v1, :cond_5

    .line 260
    aget v6, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 259
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    move-object v5, p3

    .line 262
    invoke-static/range {v0 .. v5}, Lcom/ibm/icu/impl/StringRange;->add(II[I[ILjava/lang/StringBuilder;Ljava/util/Collection;)V

    .line 263
    return-object p3
.end method
