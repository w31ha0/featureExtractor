.class Lcom/ibm/icu/text/PluralRules$SimpleTokenizer;
.super Ljava/lang/Object;
.source "PluralRules.java"


# static fields
.field static final BREAK_AND_IGNORE:Lcom/ibm/icu/text/UnicodeSet;

.field static final BREAK_AND_KEEP:Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1243
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>([I)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_IGNORE:Lcom/ibm/icu/text/UnicodeSet;

    .line 1244
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>([I)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_KEEP:Lcom/ibm/icu/text/UnicodeSet;

    return-void

    .line 1243
    :array_0
    .array-data 4
        0x9
        0xa
        0xc
        0xd
        0x20
        0x20
    .end array-data

    .line 1244
    :array_1
    .array-data 4
        0x21
        0x21
        0x25
        0x25
        0x2c
        0x2c
        0x2e
        0x2e
        0x3d
        0x3d
    .end array-data
.end method

.method static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 1246
    .line 1247
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1248
    const/4 v0, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1249
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1250
    sget-object v5, Lcom/ibm/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_IGNORE:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v5, v4}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1251
    if-ltz v1, :cond_0

    .line 1252
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 1248
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1255
    :cond_1
    sget-object v5, Lcom/ibm/icu/text/PluralRules$SimpleTokenizer;->BREAK_AND_KEEP:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v5, v4}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1256
    if-ltz v1, :cond_2

    .line 1257
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1259
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 1260
    goto :goto_1

    .line 1261
    :cond_3
    if-gez v1, :cond_0

    move v1, v0

    .line 1262
    goto :goto_1

    .line 1265
    :cond_4
    if-ltz v1, :cond_5

    .line 1266
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1268
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
