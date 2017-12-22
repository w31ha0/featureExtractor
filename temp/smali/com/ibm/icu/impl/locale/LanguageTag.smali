.class public Lcom/ibm/icu/impl/locale/LanguageTag;
.super Ljava/lang/Object;
.source "LanguageTag.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final GRANDFATHERED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static UNDETERMINED:Ljava/lang/String;


# instance fields
.field private _extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _extlangs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _language:Ljava/lang/String;

.field private _privateuse:Ljava/lang/String;

.field private _region:Ljava/lang/String;

.field private _script:Ljava/lang/String;

.field private _variants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 18
    const-class v0, Lcom/ibm/icu/impl/locale/LanguageTag;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/locale/LanguageTag;->$assertionsDisabled:Z

    .line 26
    const-string/jumbo v0, "und"

    sput-object v0, Lcom/ibm/icu/impl/locale/LanguageTag;->UNDETERMINED:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    .line 78
    const/16 v0, 0x1a

    new-array v3, v0, [[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v4, "art-lojban"

    aput-object v4, v0, v2

    const-string/jumbo v4, "jbo"

    aput-object v4, v0, v1

    aput-object v0, v3, v2

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v4, "cel-gaulish"

    aput-object v4, v0, v2

    const-string/jumbo v4, "xtg-x-cel-gaulish"

    aput-object v4, v0, v1

    aput-object v0, v3, v1

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v4, "en-GB-oed"

    aput-object v4, v0, v2

    const-string/jumbo v4, "en-GB-x-oed"

    aput-object v4, v0, v1

    aput-object v0, v3, v6

    const/4 v0, 0x3

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-ami"

    aput-object v5, v4, v2

    const-string/jumbo v5, "ami"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/4 v0, 0x4

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-bnn"

    aput-object v5, v4, v2

    const-string/jumbo v5, "bnn"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/4 v0, 0x5

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-default"

    aput-object v5, v4, v2

    const-string/jumbo v5, "en-x-i-default"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/4 v0, 0x6

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-enochian"

    aput-object v5, v4, v2

    const-string/jumbo v5, "und-x-i-enochian"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/4 v0, 0x7

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-hak"

    aput-object v5, v4, v2

    const-string/jumbo v5, "hak"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0x8

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-klingon"

    aput-object v5, v4, v2

    const-string/jumbo v5, "tlh"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0x9

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-lux"

    aput-object v5, v4, v2

    const-string/jumbo v5, "lb"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0xa

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-mingo"

    aput-object v5, v4, v2

    const-string/jumbo v5, "see-x-i-mingo"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0xb

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-navajo"

    aput-object v5, v4, v2

    const-string/jumbo v5, "nv"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0xc

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-pwn"

    aput-object v5, v4, v2

    const-string/jumbo v5, "pwn"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0xd

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-tao"

    aput-object v5, v4, v2

    const-string/jumbo v5, "tao"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0xe

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-tay"

    aput-object v5, v4, v2

    const-string/jumbo v5, "tay"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0xf

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "i-tsu"

    aput-object v5, v4, v2

    const-string/jumbo v5, "tsu"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0x10

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "no-bok"

    aput-object v5, v4, v2

    const-string/jumbo v5, "nb"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0x11

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "no-nyn"

    aput-object v5, v4, v2

    const-string/jumbo v5, "nn"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0x12

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "sgn-BE-FR"

    aput-object v5, v4, v2

    const-string/jumbo v5, "sfb"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0x13

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "sgn-BE-NL"

    aput-object v5, v4, v2

    const-string/jumbo v5, "vgt"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0x14

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "sgn-CH-DE"

    aput-object v5, v4, v2

    const-string/jumbo v5, "sgg"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0x15

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "zh-guoyu"

    aput-object v5, v4, v2

    const-string/jumbo v5, "cmn"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0x16

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "zh-hakka"

    aput-object v5, v4, v2

    const-string/jumbo v5, "hak"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0x17

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "zh-min"

    aput-object v5, v4, v2

    const-string/jumbo v5, "nan-x-zh-min"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0x18

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "zh-min-nan"

    aput-object v5, v4, v2

    const-string/jumbo v5, "nan"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    const/16 v0, 0x19

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "zh-xiang"

    aput-object v5, v4, v2

    const-string/jumbo v5, "hsn"

    aput-object v5, v4, v1

    aput-object v4, v3, v0

    .line 107
    array-length v1, v3

    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v4, v3, v0

    .line 108
    sget-object v5, Lcom/ibm/icu/impl/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    new-instance v6, Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    aget-object v7, v4, v2

    invoke-direct {v6, v7}, Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 18
    goto/16 :goto_0

    .line 110
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    .line 113
    return-void
.end method

.method public static canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizePrivateuse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 672
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isExtensionSingleton(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 622
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 623
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "x"

    .line 624
    invoke-static {v1, p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    :goto_0
    return v0

    .line 624
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExtensionSingletonChar(C)Z
    .locals 1

    .prologue
    .line 628
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExtensionSubtag(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 633
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExtlang(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 584
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLanguage(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 578
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrivateusePrefix(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 638
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_0

    const-string/jumbo v1, "x"

    .line 639
    invoke-static {v1, p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    :goto_0
    return v0

    .line 639
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPrivateusePrefixChar(C)Z
    .locals 2

    .prologue
    .line 643
    const-string/jumbo v0, "x"

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPrivateuseSubtag(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 648
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRegion(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 595
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 596
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 595
    :goto_0
    return v0

    .line 596
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScript(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 589
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVariant(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 602
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 603
    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    const/16 v3, 0x8

    if-gt v2, v3, :cond_1

    .line 604
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    .line 612
    :cond_0
    :goto_0
    return v0

    .line 606
    :cond_1
    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 607
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isNumeric(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 608
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 609
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 610
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 612
    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;Lcom/ibm/icu/impl/locale/ParseStatus;)Lcom/ibm/icu/impl/locale/LanguageTag;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 161
    if-nez p1, :cond_1

    .line 162
    new-instance p1, Lcom/ibm/icu/impl/locale/ParseStatus;

    invoke-direct {p1}, Lcom/ibm/icu/impl/locale/ParseStatus;-><init>()V

    .line 168
    :goto_0
    const/4 v2, 0x0

    .line 171
    sget-object v0, Lcom/ibm/icu/impl/locale/LanguageTag;->GRANDFATHERED:Ljava/util/Map;

    new-instance v3, Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;

    invoke-direct {v3, p0}, Lcom/ibm/icu/impl/locale/AsciiUtil$CaseInsensitiveKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 172
    if-eqz v0, :cond_2

    .line 174
    new-instance v2, Lcom/ibm/icu/impl/locale/StringTokenIterator;

    aget-object v0, v0, v1

    const-string/jumbo v3, "-"

    invoke-direct {v2, v0, v3}, Lcom/ibm/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    move-object v1, v2

    .line 180
    :goto_1
    new-instance v2, Lcom/ibm/icu/impl/locale/LanguageTag;

    invoke-direct {v2}, Lcom/ibm/icu/impl/locale/LanguageTag;-><init>()V

    .line 183
    invoke-direct {v2, v1, p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->parseLanguage(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    invoke-direct {v2, v1, p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->parseExtlangs(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z

    .line 185
    invoke-direct {v2, v1, p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->parseScript(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z

    .line 186
    invoke-direct {v2, v1, p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->parseRegion(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z

    .line 187
    invoke-direct {v2, v1, p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->parseVariants(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z

    .line 188
    invoke-direct {v2, v1, p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->parseExtensions(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z

    .line 190
    :cond_0
    invoke-direct {v2, v1, p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->parsePrivateuse(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z

    .line 192
    if-eqz v0, :cond_6

    .line 195
    sget-boolean v0, Lcom/ibm/icu/impl/locale/LanguageTag;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 164
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/ParseStatus;->reset()V

    goto :goto_0

    .line 177
    :cond_2
    new-instance v0, Lcom/ibm/icu/impl/locale/StringTokenIterator;

    const-string/jumbo v1, "-"

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    move v0, v2

    goto :goto_1

    .line 196
    :cond_3
    sget-boolean v0, Lcom/ibm/icu/impl/locale/LanguageTag;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 197
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p1, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 208
    :cond_5
    :goto_2
    return-object v2

    .line 198
    :cond_6
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result v0

    if-nez v0, :cond_5

    .line 199
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v1

    iput v1, p1, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorIndex:I

    .line 201
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    .line 202
    const-string/jumbo v0, "Empty subtag"

    iput-object v0, p1, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    goto :goto_2

    .line 204
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid subtag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    goto :goto_2
.end method

.method private parseExtensions(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 323
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    const/4 v0, 0x1

    .line 329
    :cond_3
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v2

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 337
    :goto_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v4

    if-nez v4, :cond_4

    .line 338
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v4

    .line 339
    invoke-static {v4}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 340
    const-string/jumbo v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v4

    iput v4, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 345
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_1

    .line 348
    :cond_4
    iget v4, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    if-gt v4, v2, :cond_1

    .line 349
    iput v2, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorIndex:I

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Incomplete extension \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseExtlangs(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 234
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtlang(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    const/4 v0, 0x1

    .line 246
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 247
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    .line 249
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v1

    iput v1, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 251
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    goto :goto_0
.end method

.method private parseLanguage(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 216
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 222
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 225
    iput-object v1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v1

    iput v1, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 227
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0
.end method

.method public static parseLocale(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/impl/locale/LanguageTag;
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 404
    new-instance v6, Lcom/ibm/icu/impl/locale/LanguageTag;

    invoke-direct {v6}, Lcom/ibm/icu/impl/locale/LanguageTag;-><init>()V

    .line 406
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v4

    .line 408
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v5

    .line 409
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v7

    .line 411
    const/4 v2, 0x0

    .line 415
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 418
    const-string/jumbo v8, "iw"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 419
    const-string/jumbo v0, "he"

    .line 425
    :cond_0
    :goto_0
    iput-object v0, v6, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    .line 428
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    invoke-static {v4}, Lcom/ibm/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 429
    invoke-static {v4}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/ibm/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    move v0, v1

    .line 433
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {v5}, Lcom/ibm/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 434
    invoke-static {v5}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/ibm/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    move v0, v1

    .line 446
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15

    .line 448
    new-instance v4, Lcom/ibm/icu/impl/locale/StringTokenIterator;

    const-string/jumbo v2, "_"

    invoke-direct {v4, v7, v2}, Lcom/ibm/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 449
    :goto_2
    invoke-virtual {v4}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_3

    .line 450
    invoke-virtual {v4}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 451
    invoke-static {v5}, Lcom/ibm/icu/impl/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 464
    :cond_3
    if-eqz v2, :cond_4

    .line 465
    iput-object v2, v6, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    move v0, v1

    .line 468
    :cond_4
    invoke-virtual {v4}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v2

    if-nez v2, :cond_15

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    :goto_3
    invoke-virtual {v4}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_5

    .line 472
    invoke-virtual {v4}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 473
    invoke-static {v5}, Lcom/ibm/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 486
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_15

    .line 487
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v4, v0

    .line 495
    :goto_4
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v0

    .line 496
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v3

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 497
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Lcom/ibm/icu/impl/locale/Extension;

    move-result-object v8

    .line 498
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v9

    invoke-static {v9}, Lcom/ibm/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 499
    invoke-virtual {v8}, Lcom/ibm/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v0

    move-object v3, v5

    :goto_6
    move-object v5, v3

    move-object v3, v0

    .line 506
    goto :goto_5

    .line 420
    :cond_6
    const-string/jumbo v8, "ji"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 421
    const-string/jumbo v0, "yi"

    goto/16 :goto_0

    .line 422
    :cond_7
    const-string/jumbo v8, "in"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 423
    const-string/jumbo v0, "id"

    goto/16 :goto_0

    .line 454
    :cond_8
    if-nez v2, :cond_9

    .line 455
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 460
    :cond_9
    invoke-static {v5}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {v4}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto/16 :goto_2

    .line 477
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_b

    .line 478
    const-string/jumbo v7, "-"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    :cond_b
    invoke-static {v5}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 483
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v4}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto/16 :goto_3

    .line 501
    :cond_c
    if-nez v5, :cond_d

    .line 502
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 504
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v9, "-"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/ibm/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    move-object v3, v5

    goto :goto_6

    .line 508
    :cond_e
    if-eqz v5, :cond_14

    .line 509
    iput-object v5, v6, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    .line 514
    :goto_7
    if-eqz v2, :cond_f

    .line 515
    if-nez v3, :cond_13

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "lvariant-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 522
    :cond_f
    :goto_8
    if-eqz v3, :cond_10

    .line 523
    iput-object v3, v6, Lcom/ibm/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    .line 526
    :cond_10
    iget-object v0, v6, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_12

    if-nez v1, :cond_11

    if-nez v3, :cond_12

    .line 530
    :cond_11
    sget-object v0, Lcom/ibm/icu/impl/locale/LanguageTag;->UNDETERMINED:Ljava/lang/String;

    iput-object v0, v6, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    .line 533
    :cond_12
    return-object v6

    .line 518
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "lvariant"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "_"

    const-string/jumbo v4, "-"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_14
    move v1, v4

    goto :goto_7

    :cond_15
    move-object v2, v3

    move v4, v0

    goto/16 :goto_4

    :cond_16
    move v0, v2

    goto/16 :goto_1
.end method

.method private parsePrivateuse(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 367
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    :cond_0
    :goto_0
    return v0

    .line 373
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-static {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v2

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 379
    :goto_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    .line 380
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-static {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 390
    :cond_2
    iget v1, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    if-gt v1, v2, :cond_4

    .line 392
    iput v2, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorIndex:I

    .line 393
    const-string/jumbo v1, "Incomplete privateuse"

    iput-object v1, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_errorMsg:Ljava/lang/String;

    goto :goto_0

    .line 384
    :cond_3
    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v1

    iput v1, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 387
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_1

    .line 395
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    .line 396
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private parseRegion(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 281
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-static {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    const/4 v0, 0x1

    .line 290
    iput-object v1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v1

    iput v1, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 292
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0
.end method

.method private parseScript(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 263
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v0

    .line 269
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    const/4 v0, 0x1

    .line 272
    iput-object v1, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    .line 273
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v1

    iput v1, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 274
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0
.end method

.method private parseVariants(Lcom/ibm/icu/impl/locale/StringTokenIterator;Lcom/ibm/icu/impl/locale/ParseStatus;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 299
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 319
    :cond_0
    :goto_0
    return v0

    .line 310
    :cond_1
    const/4 v0, 0x1

    .line 311
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    .line 314
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v1

    iput v1, p2, Lcom/ibm/icu/impl/locale/ParseStatus;->_parseLength:I

    .line 316
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 305
    :cond_3
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-static {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtlangs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateuse()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    return-object v0
.end method

.method public getVariants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 700
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_language:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extlangs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 703
    const-string/jumbo v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 707
    const-string/jumbo v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_script:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 711
    const-string/jumbo v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_region:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_variants:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 715
    const-string/jumbo v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 718
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_extensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 719
    const-string/jumbo v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 722
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 723
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 724
    const-string/jumbo v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LanguageTag;->_privateuse:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
