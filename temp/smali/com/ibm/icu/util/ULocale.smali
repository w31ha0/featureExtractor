.class public final Lcom/ibm/icu/util/ULocale;
.super Ljava/lang/Object;
.source "ULocale.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/ibm/icu/util/ULocale;",
        ">;"
    }
.end annotation


# static fields
.field public static ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

.field private static final CACHE:Lcom/ibm/icu/impl/SoftCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/SoftCache",
            "<",
            "Ljava/util/Locale;",
            "Lcom/ibm/icu/util/ULocale;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static final CANADA:Lcom/ibm/icu/util/ULocale;

.field public static final CANADA_FRENCH:Lcom/ibm/icu/util/ULocale;

.field private static CANONICALIZE_MAP:[[Ljava/lang/String;

.field public static final CHINA:Lcom/ibm/icu/util/ULocale;

.field public static final CHINESE:Lcom/ibm/icu/util/ULocale;

.field private static final EMPTY_LOCALE:Ljava/util/Locale;

.field public static final ENGLISH:Lcom/ibm/icu/util/ULocale;

.field public static final FRANCE:Lcom/ibm/icu/util/ULocale;

.field public static final FRENCH:Lcom/ibm/icu/util/ULocale;

.field public static final GERMAN:Lcom/ibm/icu/util/ULocale;

.field public static final GERMANY:Lcom/ibm/icu/util/ULocale;

.field public static final ITALIAN:Lcom/ibm/icu/util/ULocale;

.field public static final ITALY:Lcom/ibm/icu/util/ULocale;

.field public static final JAPAN:Lcom/ibm/icu/util/ULocale;

.field public static final JAPANESE:Lcom/ibm/icu/util/ULocale;

.field public static final KOREA:Lcom/ibm/icu/util/ULocale;

.field public static final KOREAN:Lcom/ibm/icu/util/ULocale;

.field public static final PRC:Lcom/ibm/icu/util/ULocale;

.field public static final ROOT:Lcom/ibm/icu/util/ULocale;

.field public static final SIMPLIFIED_CHINESE:Lcom/ibm/icu/util/ULocale;

.field public static final TAIWAN:Lcom/ibm/icu/util/ULocale;

.field public static final TRADITIONAL_CHINESE:Lcom/ibm/icu/util/ULocale;

.field public static final UK:Lcom/ibm/icu/util/ULocale;

.field public static final US:Lcom/ibm/icu/util/ULocale;

.field public static VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

.field private static defaultCategoryLocales:[Ljava/util/Locale;

.field private static defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

.field private static defaultLocale:Ljava/util/Locale;

.field private static defaultULocale:Lcom/ibm/icu/util/ULocale;

.field private static nameCache:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static variantsToKeywords:[[Ljava/lang/String;


# instance fields
.field private volatile transient baseLocale:Lcom/ibm/icu/impl/locale/BaseLocale;

.field private volatile transient extensions:Lcom/ibm/icu/impl/locale/LocaleExtensions;

.field private volatile transient locale:Ljava/util/Locale;

.field private localeID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 120
    new-instance v1, Lcom/ibm/icu/util/ULocale$1;

    invoke-direct {v1}, Lcom/ibm/icu/util/ULocale$1;-><init>()V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->nameCache:Lcom/ibm/icu/impl/CacheBase;

    .line 131
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "en"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->ENGLISH:Lcom/ibm/icu/util/ULocale;

    .line 137
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "fr"

    sget-object v3, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->FRENCH:Lcom/ibm/icu/util/ULocale;

    .line 143
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "de"

    sget-object v3, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->GERMAN:Lcom/ibm/icu/util/ULocale;

    .line 149
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "it"

    sget-object v3, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->ITALIAN:Lcom/ibm/icu/util/ULocale;

    .line 155
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "ja"

    sget-object v3, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->JAPANESE:Lcom/ibm/icu/util/ULocale;

    .line 161
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "ko"

    sget-object v3, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->KOREAN:Lcom/ibm/icu/util/ULocale;

    .line 167
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "zh"

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->CHINESE:Lcom/ibm/icu/util/ULocale;

    .line 196
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "zh_Hans"

    invoke-direct {v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->SIMPLIFIED_CHINESE:Lcom/ibm/icu/util/ULocale;

    .line 203
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "zh_Hant"

    invoke-direct {v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->TRADITIONAL_CHINESE:Lcom/ibm/icu/util/ULocale;

    .line 209
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "fr_FR"

    sget-object v3, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->FRANCE:Lcom/ibm/icu/util/ULocale;

    .line 215
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "de_DE"

    sget-object v3, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->GERMANY:Lcom/ibm/icu/util/ULocale;

    .line 221
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "it_IT"

    sget-object v3, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->ITALY:Lcom/ibm/icu/util/ULocale;

    .line 227
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "ja_JP"

    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->JAPAN:Lcom/ibm/icu/util/ULocale;

    .line 233
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "ko_KR"

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->KOREA:Lcom/ibm/icu/util/ULocale;

    .line 239
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "zh_Hans_CN"

    invoke-direct {v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->CHINA:Lcom/ibm/icu/util/ULocale;

    .line 245
    sget-object v1, Lcom/ibm/icu/util/ULocale;->CHINA:Lcom/ibm/icu/util/ULocale;

    sput-object v1, Lcom/ibm/icu/util/ULocale;->PRC:Lcom/ibm/icu/util/ULocale;

    .line 251
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "zh_Hant_TW"

    invoke-direct {v1, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->TAIWAN:Lcom/ibm/icu/util/ULocale;

    .line 257
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "en_GB"

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->UK:Lcom/ibm/icu/util/ULocale;

    .line 263
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "en_US"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->US:Lcom/ibm/icu/util/ULocale;

    .line 269
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "en_CA"

    sget-object v3, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->CANADA:Lcom/ibm/icu/util/ULocale;

    .line 275
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, "fr_CA"

    sget-object v3, Ljava/util/Locale;->CANADA_FRENCH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->CANADA_FRENCH:Lcom/ibm/icu/util/ULocale;

    .line 286
    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->EMPTY_LOCALE:Ljava/util/Locale;

    .line 295
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    const-string/jumbo v2, ""

    sget-object v3, Lcom/ibm/icu/util/ULocale;->EMPTY_LOCALE:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    .line 315
    new-instance v1, Lcom/ibm/icu/util/ULocale$2;

    invoke-direct {v1}, Lcom/ibm/icu/util/ULocale$2;-><init>()V

    sput-object v1, Lcom/ibm/icu/util/ULocale;->CACHE:Lcom/ibm/icu/impl/SoftCache;

    .line 344
    const/16 v1, 0x32

    new-array v1, v1, [[Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "C"

    aput-object v3, v2, v0

    const-string/jumbo v3, "en_US_POSIX"

    aput-object v3, v2, v5

    aput-object v8, v2, v6

    aput-object v8, v2, v7

    aput-object v2, v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "art_LOJBAN"

    aput-object v3, v2, v0

    const-string/jumbo v3, "jbo"

    aput-object v3, v2, v5

    aput-object v8, v2, v6

    aput-object v8, v2, v7

    aput-object v2, v1, v5

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "az_AZ_CYRL"

    aput-object v3, v2, v0

    const-string/jumbo v3, "az_Cyrl_AZ"

    aput-object v3, v2, v5

    aput-object v8, v2, v6

    aput-object v8, v2, v7

    aput-object v2, v1, v6

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "az_AZ_LATN"

    aput-object v3, v2, v0

    const-string/jumbo v3, "az_Latn_AZ"

    aput-object v3, v2, v5

    aput-object v8, v2, v6

    aput-object v8, v2, v7

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ca_ES_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "ca_ES"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "ESP"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "cel_GAULISH"

    aput-object v4, v3, v0

    const-string/jumbo v4, "cel__GAULISH"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "de_1901"

    aput-object v4, v3, v0

    const-string/jumbo v4, "de__1901"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "de_1906"

    aput-object v4, v3, v0

    const-string/jumbo v4, "de__1906"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "de__PHONEBOOK"

    aput-object v4, v3, v0

    const-string/jumbo v4, "de"

    aput-object v4, v3, v5

    const-string/jumbo v4, "collation"

    aput-object v4, v3, v6

    const-string/jumbo v4, "phonebook"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "de_AT_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "de_AT"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "ATS"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "de_DE_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "de_DE"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "DEM"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "de_LU_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "de_LU"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "EUR"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "el_GR_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "el_GR"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "GRD"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "en_BOONT"

    aput-object v4, v3, v0

    const-string/jumbo v4, "en__BOONT"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "en_SCOUSE"

    aput-object v4, v3, v0

    const-string/jumbo v4, "en__SCOUSE"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "en_BE_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "en_BE"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "BEF"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "en_IE_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "en_IE"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "IEP"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "es__TRADITIONAL"

    aput-object v4, v3, v0

    const-string/jumbo v4, "es"

    aput-object v4, v3, v5

    const-string/jumbo v4, "collation"

    aput-object v4, v3, v6

    const-string/jumbo v4, "traditional"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "es_ES_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "es_ES"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "ESP"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "eu_ES_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "eu_ES"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "ESP"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "fi_FI_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "fi_FI"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "FIM"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "fr_BE_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "fr_BE"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "BEF"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "fr_FR_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "fr_FR"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "FRF"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "fr_LU_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "fr_LU"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "LUF"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ga_IE_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "ga_IE"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "IEP"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "gl_ES_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "gl_ES"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "ESP"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "hi__DIRECT"

    aput-object v4, v3, v0

    const-string/jumbo v4, "hi"

    aput-object v4, v3, v5

    const-string/jumbo v4, "collation"

    aput-object v4, v3, v6

    const-string/jumbo v4, "direct"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "it_IT_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "it_IT"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "ITL"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "ja_JP_TRADITIONAL"

    aput-object v4, v3, v0

    const-string/jumbo v4, "ja_JP"

    aput-object v4, v3, v5

    const-string/jumbo v4, "calendar"

    aput-object v4, v3, v6

    const-string/jumbo v4, "japanese"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "nl_BE_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "nl_BE"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "BEF"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "nl_NL_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "nl_NL"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "NLG"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "pt_PT_PREEURO"

    aput-object v4, v3, v0

    const-string/jumbo v4, "pt_PT"

    aput-object v4, v3, v5

    const-string/jumbo v4, "currency"

    aput-object v4, v3, v6

    const-string/jumbo v4, "PTE"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "sl_ROZAJ"

    aput-object v4, v3, v0

    const-string/jumbo v4, "sl__ROZAJ"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "sr_SP_CYRL"

    aput-object v4, v3, v0

    const-string/jumbo v4, "sr_Cyrl_RS"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "sr_SP_LATN"

    aput-object v4, v3, v0

    const-string/jumbo v4, "sr_Latn_RS"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "sr_YU_CYRILLIC"

    aput-object v4, v3, v0

    const-string/jumbo v4, "sr_Cyrl_RS"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "th_TH_TRADITIONAL"

    aput-object v4, v3, v0

    const-string/jumbo v4, "th_TH"

    aput-object v4, v3, v5

    const-string/jumbo v4, "calendar"

    aput-object v4, v3, v6

    const-string/jumbo v4, "buddhist"

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "uz_UZ_CYRILLIC"

    aput-object v4, v3, v0

    const-string/jumbo v4, "uz_Cyrl_UZ"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "uz_UZ_CYRL"

    aput-object v4, v3, v0

    const-string/jumbo v4, "uz_Cyrl_UZ"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "uz_UZ_LATN"

    aput-object v4, v3, v0

    const-string/jumbo v4, "uz_Latn_UZ"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "zh_CHS"

    aput-object v4, v3, v0

    const-string/jumbo v4, "zh_Hans"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "zh_CHT"

    aput-object v4, v3, v0

    const-string/jumbo v4, "zh_Hant"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "zh_GAN"

    aput-object v4, v3, v0

    const-string/jumbo v4, "zh__GAN"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "zh_GUOYU"

    aput-object v4, v3, v0

    const-string/jumbo v4, "zh"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "zh_HAKKA"

    aput-object v4, v3, v0

    const-string/jumbo v4, "zh__HAKKA"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "zh_MIN"

    aput-object v4, v3, v0

    const-string/jumbo v4, "zh__MIN"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "zh_MIN_NAN"

    aput-object v4, v3, v0

    const-string/jumbo v4, "zh__MINNAN"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "zh_WUU"

    aput-object v4, v3, v0

    const-string/jumbo v4, "zh__WUU"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "zh_XIANG"

    aput-object v4, v3, v0

    const-string/jumbo v4, "zh__XIANG"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "zh_YUE"

    aput-object v4, v3, v0

    const-string/jumbo v4, "zh__YUE"

    aput-object v4, v3, v5

    aput-object v8, v3, v6

    aput-object v8, v3, v7

    aput-object v3, v1, v2

    sput-object v1, Lcom/ibm/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    .line 402
    new-array v1, v7, [[Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "EURO"

    aput-object v3, v2, v0

    const-string/jumbo v3, "currency"

    aput-object v3, v2, v5

    const-string/jumbo v3, "EUR"

    aput-object v3, v2, v6

    aput-object v2, v1, v0

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "PINYIN"

    aput-object v3, v2, v0

    const-string/jumbo v3, "collation"

    aput-object v3, v2, v5

    const-string/jumbo v3, "pinyin"

    aput-object v3, v2, v6

    aput-object v2, v1, v5

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "STROKE"

    aput-object v3, v2, v0

    const-string/jumbo v3, "collation"

    aput-object v3, v2, v5

    const-string/jumbo v3, "stroke"

    aput-object v3, v2, v6

    aput-object v2, v1, v6

    sput-object v1, Lcom/ibm/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;

    .line 547
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    .line 550
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Ljava/util/Locale;

    sput-object v1, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    .line 551
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/ibm/icu/util/ULocale;

    sput-object v1, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    .line 554
    sget-object v1, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    .line 564
    invoke-static {}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 566
    invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v4

    .line 567
    sget-object v5, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    invoke-static {v3}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v5, v4

    .line 568
    sget-object v3, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    sget-object v5, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v5

    aput-object v5, v3, v4

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 575
    :cond_0
    sget-object v1, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->isOriginalDefaultLocale(Ljava/util/Locale;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    const-string/jumbo v1, "user.script"

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 578
    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v2}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v2

    .line 582
    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 583
    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 582
    invoke-static {v3, v1, v4, v2}, Lcom/ibm/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v1

    .line 584
    sget-object v2, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v2}, Lcom/ibm/icu/util/ULocale;->extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ibm/icu/util/ULocale;->getInstance(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    .line 590
    :cond_1
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 591
    invoke-virtual {v3}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v3

    .line 592
    sget-object v4, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    sget-object v5, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    aput-object v5, v4, v3

    .line 593
    sget-object v4, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    sget-object v5, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    aput-object v5, v4, v3

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1980
    :cond_2
    new-instance v0, Lcom/ibm/icu/util/ULocale$Type;

    invoke-direct {v0, v8}, Lcom/ibm/icu/util/ULocale$Type;-><init>(Lcom/ibm/icu/util/ULocale$1;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    .line 1996
    new-instance v0, Lcom/ibm/icu/util/ULocale$Type;

    invoke-direct {v0, v8}, Lcom/ibm/icu/util/ULocale$Type;-><init>(Lcom/ibm/icu/util/ULocale$1;)V

    sput-object v0, Lcom/ibm/icu/util/ULocale;->VALID_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    .line 461
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p1, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    .line 414
    iput-object p2, p0, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;

    .line 415
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Locale;Lcom/ibm/icu/util/ULocale$1;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public static addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;
    .locals 5

    .prologue
    .line 2439
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    .line 2440
    const/4 v0, 0x0

    .line 2442
    iget-object v2, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/ibm/icu/util/ULocale;->parseTagString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 2446
    iget-object v3, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2447
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2450
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x2

    aget-object v1, v1, v4

    .line 2451
    invoke-static {v2, v3, v1, v0}, Lcom/ibm/icu/util/ULocale;->createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2457
    if-nez v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {p0, v0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 2711
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2712
    const/16 v0, 0x5f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2715
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2716
    return-void
.end method

.method private base()Lcom/ibm/icu/impl/locale/BaseLocale;
    .locals 4

    .prologue
    .line 3983
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->baseLocale:Lcom/ibm/icu/impl/locale/BaseLocale;

    if-nez v0, :cond_0

    .line 3985
    const-string/jumbo v0, ""

    .line 3986
    sget-object v1, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3987
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    iget-object v1, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 3988
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 3989
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 3990
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 3991
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object v0

    .line 3993
    :goto_0
    invoke-static {v3, v2, v1, v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/ULocale;->baseLocale:Lcom/ibm/icu/impl/locale/BaseLocale;

    .line 3995
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->baseLocale:Lcom/ibm/icu/impl/locale/BaseLocale;

    return-object v0

    :cond_1
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    goto :goto_0
.end method

.method public static canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1222
    new-instance v5, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v5, p0, v2}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;Z)V

    .line 1223
    invoke-virtual {v5}, Lcom/ibm/icu/impl/LocaleIDParser;->getBaseName()Ljava/lang/String;

    move-result-object v3

    .line 1230
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1231
    const-string/jumbo v0, ""

    .line 1275
    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    .line 1238
    :goto_1
    sget-object v4, Lcom/ibm/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_7

    .line 1239
    sget-object v4, Lcom/ibm/icu/util/ULocale;->variantsToKeywords:[[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 1240
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 1241
    const/4 v7, -0x1

    if-le v6, v7, :cond_4

    .line 1244
    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1245
    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1246
    add-int/lit8 v3, v6, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1248
    :cond_1
    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    .line 1249
    aget-object v3, v4, v2

    aget-object v4, v4, v8

    invoke-virtual {v5, v3, v4}, Lcom/ibm/icu/impl/LocaleIDParser;->defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    move v0, v2

    :goto_2
    move v4, v1

    .line 1255
    :goto_3
    sget-object v6, Lcom/ibm/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_6

    .line 1256
    sget-object v6, Lcom/ibm/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    aget-object v6, v6, v4

    aget-object v6, v6, v1

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1259
    sget-object v0, Lcom/ibm/icu/util/ULocale;->CANONICALIZE_MAP:[[Ljava/lang/String;

    aget-object v0, v0, v4

    .line 1260
    aget-object v1, v0, v2

    invoke-virtual {v5, v1}, Lcom/ibm/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    .line 1261
    aget-object v1, v0, v8

    if-eqz v1, :cond_2

    .line 1262
    aget-object v1, v0, v8

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-virtual {v5, v1, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->defaultKeywordValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    :cond_2
    :goto_4
    if-nez v2, :cond_3

    .line 1270
    invoke-virtual {v5}, Lcom/ibm/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Lcom/ibm/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1271
    const-string/jumbo v0, "nn"

    invoke-virtual {v5}, Lcom/ibm/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/ibm/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/ibm/icu/impl/LocaleIDParser;->setBaseName(Ljava/lang/String;)V

    .line 1275
    :cond_3
    invoke-virtual {v5}, Lcom/ibm/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1238
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1255
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move v2, v0

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public static createCanonical(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;
    .locals 3

    .prologue
    .line 504
    new-instance v1, Lcom/ibm/icu/util/ULocale;

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    invoke-direct {v1, v2, v0}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v1
.end method

.method private static createLikelySubtagsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2960
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2963
    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2969
    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2985
    if-eqz v1, :cond_1

    .line 2989
    invoke-static {v0, v0, v0, p3, v1}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3077
    :cond_0
    :goto_0
    return-object v0

    .line 3001
    :cond_1
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3004
    invoke-static {p0, p1, v0, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3010
    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3011
    if-eqz v1, :cond_2

    .line 3015
    invoke-static {v0, v0, p2, p3, v1}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3027
    :cond_2
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3030
    invoke-static {p0, v0, p2, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3036
    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3038
    if-eqz v1, :cond_3

    .line 3042
    invoke-static {v0, p1, v0, p3, v1}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3056
    :cond_3
    invoke-static {p0, v0, v0, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3062
    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3064
    if-eqz v1, :cond_0

    .line 3068
    invoke-static {v0, p1, p2, p3, v1}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2874
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/ibm/icu/util/ULocale;->createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createTagString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x2

    const/16 v7, 0x5f

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2737
    const/4 v0, 0x0

    .line 2740
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2742
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2743
    invoke-static {p0, v5}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2770
    :goto_0
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2771
    invoke-static {p1, v5}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2792
    :cond_0
    :goto_1
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 2793
    invoke-static {p2, v5}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    move v1, v4

    .line 2818
    :goto_2
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_1

    .line 2826
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_9

    .line 2827
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_d

    move v0, v2

    .line 2835
    :goto_3
    if-eqz v1, :cond_b

    .line 2840
    if-ne v0, v2, :cond_a

    .line 2841
    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2859
    :cond_1
    :goto_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2747
    :cond_2
    invoke-static {p4}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2752
    const-string/jumbo v1, "und"

    invoke-static {v1, v5}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 2757
    :cond_3
    new-instance v1, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v1, p4}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 2759
    invoke-virtual {v1}, Lcom/ibm/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2766
    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2765
    :goto_5
    invoke-static {v0, v5}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    move-object v0, v1

    goto :goto_0

    .line 2766
    :cond_4
    const-string/jumbo v0, "und"

    goto :goto_5

    .line 2775
    :cond_5
    invoke-static {p4}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2779
    if-nez v0, :cond_6

    .line 2780
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p4}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 2783
    :cond_6
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 2785
    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2786
    invoke-static {v1, v5}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 2799
    :cond_7
    invoke-static {p4}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2803
    if-nez v0, :cond_8

    .line 2804
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p4}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 2807
    :cond_8
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2809
    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 2810
    invoke-static {v0, v5}, Lcom/ibm/icu/util/ULocale;->appendTag(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    move v1, v4

    .line 2814
    goto :goto_2

    :cond_9
    move v0, v4

    .line 2832
    goto :goto_3

    .line 2844
    :cond_a
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 2852
    :cond_b
    if-ne v0, v4, :cond_c

    .line 2853
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2855
    :cond_c
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_d
    move v0, v3

    goto :goto_3

    :cond_e
    move v1, v3

    goto/16 :goto_2
.end method

.method private extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3999
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->extensions:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    if-nez v0, :cond_0

    .line 4000
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v2

    .line 4001
    if-nez v2, :cond_1

    .line 4002
    sget-object v0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    iput-object v0, p0, Lcom/ibm/icu/util/ULocale;->extensions:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    .line 4039
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->extensions:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    return-object v0

    .line 4004
    :cond_1
    new-instance v3, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v3}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    .line 4005
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4006
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4007
    const-string/jumbo v4, "attribute"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4009
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "[-_]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4010
    array-length v5, v4

    move v0, v1

    :goto_2
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0

    .line 4012
    :try_start_0
    invoke-virtual {v3, v6}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4010
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4017
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_4

    .line 4018
    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->toUnicodeLocaleKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4019
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/ibm/icu/util/ULocale;->toUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4020
    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 4022
    :try_start_1
    invoke-virtual {v3, v4, v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_1
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4023
    :catch_0
    move-exception v0

    goto :goto_1

    .line 4027
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x75

    if-eq v4, v5, :cond_2

    .line 4029
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "_"

    const-string/jumbo v6, "-"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_2
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 4031
    :catch_1
    move-exception v0

    goto :goto_1

    .line 4036
    :cond_5
    invoke-virtual {v3}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/ULocale;->extensions:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    goto :goto_0

    .line 4013
    :catch_2
    move-exception v6

    goto :goto_3
.end method

.method public static forLanguageTag(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;
    .locals 2

    .prologue
    .line 3416
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->parse(Ljava/lang/String;Lcom/ibm/icu/impl/locale/ParseStatus;)Lcom/ibm/icu/impl/locale/LanguageTag;

    move-result-object v0

    .line 3417
    new-instance v1, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    .line 3418
    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setLanguageTag(Lcom/ibm/icu/impl/locale/LanguageTag;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    .line 3419
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->getBaseLocale()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->getInstance(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 433
    if-nez p0, :cond_0

    .line 436
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/ibm/icu/util/ULocale;->CACHE:Lcom/ibm/icu/impl/SoftCache;

    invoke-virtual {v1, p0, v0}, Lcom/ibm/icu/impl/SoftCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/ULocale;

    goto :goto_0
.end method

.method public static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1095
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1098
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getBaseName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getDefault()Lcom/ibm/icu/util/ULocale;
    .locals 8

    .prologue
    .line 623
    const-class v1, Lcom/ibm/icu/util/ULocale;

    monitor-enter v1

    .line 624
    :try_start_0
    sget-object v0, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    if-nez v0, :cond_0

    .line 633
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    monitor-exit v1

    .line 652
    :goto_0
    return-object v0

    .line 636
    :cond_0
    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v0, "en_US"

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 637
    sget-object v0, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 638
    sput-object v2, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    .line 639
    invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    .line 641
    invoke-static {}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v0

    if-nez v0, :cond_1

    .line 645
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 646
    invoke-virtual {v5}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v5

    .line 647
    sget-object v6, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object v2, v6, v5

    .line 648
    sget-object v6, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    invoke-static {v2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v7

    aput-object v7, v6, v5

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 652
    :cond_1
    sget-object v0, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    monitor-exit v1

    goto :goto_0

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;
    .locals 9

    .prologue
    .line 691
    const-class v1, Lcom/ibm/icu/util/ULocale;

    monitor-enter v1

    .line 692
    :try_start_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v2

    .line 693
    sget-object v0, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    .line 697
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    monitor-exit v1

    .line 733
    :goto_0
    return-object v0

    .line 699
    :cond_0
    invoke-static {}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->hasLocaleCategories()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 700
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 701
    sget-object v3, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 702
    sget-object v3, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object v0, v3, v2

    .line 703
    sget-object v3, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    aput-object v0, v3, v2

    .line 733
    :cond_1
    sget-object v0, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    aget-object v0, v0, v2

    monitor-exit v1

    goto :goto_0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 718
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 719
    sget-object v0, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 720
    sput-object v3, Lcom/ibm/icu/util/ULocale;->defaultLocale:Ljava/util/Locale;

    .line 721
    invoke-static {v3}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/ULocale;->defaultULocale:Lcom/ibm/icu/util/ULocale;

    .line 723
    invoke-static {}, Lcom/ibm/icu/util/ULocale$Category;->values()[Lcom/ibm/icu/util/ULocale$Category;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_1

    aget-object v6, v4, v0

    .line 724
    invoke-virtual {v6}, Lcom/ibm/icu/util/ULocale$Category;->ordinal()I

    move-result v6

    .line 725
    sget-object v7, Lcom/ibm/icu/util/ULocale;->defaultCategoryLocales:[Ljava/util/Locale;

    aput-object v3, v7, v6

    .line 726
    sget-object v7, Lcom/ibm/icu/util/ULocale;->defaultCategoryULocales:[Lcom/ibm/icu/util/ULocale;

    invoke-static {v3}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v8

    aput-object v8, v7, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static getDisplayNameInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1888
    invoke-static {p1}, Lcom/ibm/icu/text/LocaleDisplayNames;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/LocaleDisplayNames;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/LocaleDisplayNames;->localeDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1037
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getFallbackString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFallbackString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x5f

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 1056
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1057
    if-ne v0, v3, :cond_0

    .line 1058
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1060
    :cond_0
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 1061
    if-ne v1, v3, :cond_3

    move v1, v2

    .line 1072
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1069
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 1065
    :cond_3
    if-lez v1, :cond_1

    .line 1066
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_2

    goto :goto_0
.end method

.method private static getInstance(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/util/ULocale;
    .locals 9

    .prologue
    .line 3916
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 3917
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 3916
    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/util/ULocale;->lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3919
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object v1

    .line 3920
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3925
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 3926
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 3927
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Lcom/ibm/icu/impl/locale/Extension;

    move-result-object v1

    .line 3928
    instance-of v3, v1, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;

    if-eqz v3, :cond_6

    move-object v0, v1

    .line 3929
    check-cast v0, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;

    .line 3930
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v1

    .line 3931
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3932
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3934
    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3935
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v3, "yes"

    :cond_0
    invoke-static {v1, v3}, Lcom/ibm/icu/util/ULocale;->toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3937
    const-string/jumbo v3, "va"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "posix"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 3938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_POSIX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3940
    :cond_1
    invoke-virtual {v4, v7, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3944
    :cond_2
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v0

    .line 3945
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 3946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3947
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3948
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 3949
    const/16 v6, 0x2d

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3951
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3953
    :cond_4
    const-string/jumbo v0, "attribute"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v0, v2

    :goto_3
    move-object v2, v0

    .line 3958
    goto/16 :goto_0

    .line 3956
    :cond_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto :goto_3

    .line 3960
    :cond_7
    invoke-virtual {v4}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3961
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3962
    const-string/jumbo v0, "@"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3963
    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 3964
    const/4 v0, 0x0

    .line 3965
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3966
    if-eqz v1, :cond_8

    .line 3967
    const-string/jumbo v2, ";"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 3971
    :goto_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3972
    const-string/jumbo v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3973
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 3974
    goto :goto_4

    .line 3969
    :cond_8
    const/4 v2, 0x1

    goto :goto_5

    .line 3976
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3979
    :cond_a
    :goto_6
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_b
    move-object v2, v0

    goto :goto_6
.end method

.method public static getKeywordValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1211
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/LocaleIDParser;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKeywords(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1189
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getKeywords()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1151
    if-eqz p0, :cond_0

    const-string/jumbo v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->getShortestSubtagLength(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1152
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1153
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1159
    :cond_0
    :goto_0
    sget-object v0, Lcom/ibm/icu/util/ULocale;->nameCache:Lcom/ibm/icu/impl/CacheBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static getRegionForSupplementalData(Lcom/ibm/icu/util/ULocale;Z)Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 996
    const-string/jumbo v0, "rg"

    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 997
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 998
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toUpperString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 999
    const-string/jumbo v1, "ZZZZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1000
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1008
    :cond_0
    :goto_0
    return-object v0

    .line 1003
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1004
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1005
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->addLikelySubtags(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 1006
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getShortestSubtagLength(Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v1

    move v0, v1

    move v2, v4

    move v3, v6

    .line 1123
    :goto_0
    if-ge v5, v6, :cond_2

    .line 1124
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5f

    if-eq v7, v8, :cond_1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_1

    .line 1125
    if-eqz v2, :cond_0

    move v0, v1

    move v2, v1

    .line 1129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1123
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1131
    :cond_1
    if-eqz v0, :cond_3

    if-ge v0, v3, :cond_3

    move v2, v0

    :goto_2
    move v3, v2

    move v2, v4

    .line 1134
    goto :goto_1

    .line 1138
    :cond_2
    return v3

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method private static isEmptyString(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 2700
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lookupLikelySubtags(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2943
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b"

    const-string/jumbo v1, "likelySubtags"

    .line 2944
    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 2947
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2950
    :goto_0
    return-object v0

    .line 2949
    :catch_0
    move-exception v0

    .line 2950
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static lscvToID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x5f

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 511
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 514
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 518
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :cond_2
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 522
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 523
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 525
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseTagString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2887
    new-instance v0, Lcom/ibm/icu/impl/LocaleIDParser;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    .line 2889
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2890
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 2891
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 2893
    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2894
    const-string/jumbo v1, "und"

    aput-object v1, p1, v5

    .line 2900
    :goto_0
    const-string/jumbo v1, "Zzzz"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2901
    const-string/jumbo v1, ""

    aput-object v1, p1, v6

    .line 2907
    :goto_1
    const-string/jumbo v1, "ZZ"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2908
    const-string/jumbo v1, ""

    aput-object v1, p1, v7

    .line 2926
    :goto_2
    invoke-virtual {v0}, Lcom/ibm/icu/impl/LocaleIDParser;->getVariant()Ljava/lang/String;

    move-result-object v0

    .line 2928
    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->isEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2929
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2932
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 2938
    :cond_0
    :goto_3
    return v0

    .line 2897
    :cond_1
    aput-object v1, p1, v5

    goto :goto_0

    .line 2904
    :cond_2
    aput-object v2, p1, v6

    goto :goto_1

    .line 2911
    :cond_3
    aput-object v3, p1, v7

    goto :goto_2

    .line 2936
    :cond_4
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 2938
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_3
.end method

.method public static toLegacyKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3500
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/KeyTypeData;->toLegacyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3501
    if-nez v0, :cond_0

    .line 3510
    const-string/jumbo v1, "[0-9a-zA-Z]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3511
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3514
    :cond_0
    return-object v0
.end method

.method public static toLegacyType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3544
    invoke-static {p0, p1, v0, v0}, Lcom/ibm/icu/impl/locale/KeyTypeData;->toLegacyType(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    .line 3545
    if-nez v0, :cond_0

    .line 3555
    const-string/jumbo v1, "[0-9a-zA-Z]+([_/\\-][0-9a-zA-Z]+)*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3556
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3559
    :cond_0
    return-object v0
.end method

.method public static toUnicodeLocaleKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3443
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/KeyTypeData;->toBcpKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3444
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3446
    invoke-static {p0}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3448
    :cond_0
    return-object v0
.end method

.method public static toUnicodeLocaleType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3479
    invoke-static {p0, p1, v0, v0}, Lcom/ibm/icu/impl/locale/KeyTypeData;->toBcpType(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/util/Output;)Ljava/lang/String;

    move-result-object v0

    .line 3480
    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->isType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3482
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3484
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 765
    return-object p0
.end method

.method public compareTo(Lcom/ibm/icu/util/ULocale;)I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 810
    if-ne p0, p1, :cond_0

    .line 873
    :goto_0
    return v2

    .line 817
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 818
    if-nez v0, :cond_1

    .line 820
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 821
    if-nez v0, :cond_1

    .line 823
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 824
    if-nez v0, :cond_1

    .line 826
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 827
    if-nez v0, :cond_1

    .line 829
    invoke-virtual {p0}, Lcom/ibm/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v6

    .line 830
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v7

    .line 832
    if-nez v6, :cond_3

    .line 833
    if-nez v7, :cond_2

    move v0, v2

    .line 873
    :cond_1
    :goto_1
    if-gez v0, :cond_a

    :goto_2
    move v2, v3

    goto :goto_0

    :cond_2
    move v0, v3

    .line 833
    goto :goto_1

    .line 834
    :cond_3
    if-nez v7, :cond_5

    move v0, v4

    .line 835
    goto :goto_1

    .line 844
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 845
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 846
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    .line 847
    if-nez v5, :cond_c

    .line 849
    invoke-virtual {p0, v0}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 850
    invoke-virtual {p1, v1}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 851
    if-nez v0, :cond_8

    .line 852
    if-nez v1, :cond_7

    move v0, v2

    .line 838
    :cond_5
    :goto_3
    if-nez v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 839
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v4

    .line 860
    :cond_6
    if-nez v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    .line 861
    goto :goto_1

    :cond_7
    move v0, v3

    .line 852
    goto :goto_3

    .line 853
    :cond_8
    if-nez v1, :cond_9

    move v0, v4

    .line 854
    goto :goto_3

    .line 856
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    .line 873
    :cond_a
    if-lez v0, :cond_b

    move v3, v4

    goto :goto_2

    :cond_b
    move v3, v2

    goto :goto_2

    :cond_c
    move v0, v5

    goto :goto_3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 115
    check-cast p1, Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/ULocale;->compareTo(Lcom/ibm/icu/util/ULocale;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 788
    if-ne p0, p1, :cond_0

    .line 789
    const/4 v0, 0x1

    .line 794
    :goto_0
    return v0

    .line 791
    :cond_0
    instance-of v0, p1, Lcom/ibm/icu/util/ULocale;

    if-eqz v0, :cond_1

    .line 792
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    check-cast p1, Lcom/ibm/icu/util/ULocale;

    iget-object v1, p1, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 794
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 958
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1850
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->DISPLAY:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/util/ULocale;->getDisplayNameInternal(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeywordValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeywords()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getKeywords(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 914
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-object v0
.end method

.method public getScript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 936
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1018
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toLanguageTag()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3243
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->base()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v1

    .line 3244
    invoke-direct {p0}, Lcom/ibm/icu/util/ULocale;->extensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v0

    .line 3246
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "POSIX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3248
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v1, v4}, Lcom/ibm/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v1

    .line 3249
    const-string/jumbo v2, "va"

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 3251
    new-instance v2, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    .line 3253
    :try_start_0
    sget-object v3, Lcom/ibm/icu/impl/locale/BaseLocale;->ROOT:Lcom/ibm/icu/impl/locale/BaseLocale;

    invoke-virtual {v2, v3, v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setLocale(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    .line 3254
    const-string/jumbo v0, "va"

    const-string/jumbo v3, "posix"

    invoke-virtual {v2, v0, v3}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    .line 3255
    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;
    :try_end_0
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3263
    :cond_0
    invoke-static {v1, v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->parseLocale(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/impl/locale/LanguageTag;

    move-result-object v1

    .line 3265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3266
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 3267
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 3268
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3271
    :cond_1
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 3272
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 3273
    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3274
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3277
    :cond_2
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 3278
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 3279
    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3280
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3283
    :cond_3
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v0

    .line 3284
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3285
    const-string/jumbo v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3286
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3256
    :catch_0
    move-exception v0

    .line 3258
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 3289
    :cond_4
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v0

    .line 3290
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3291
    const-string/jumbo v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3292
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3295
    :cond_5
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object v0

    .line 3296
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 3297
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 3298
    const-string/jumbo v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3300
    :cond_6
    const-string/jumbo v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3301
    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->canonicalizePrivateuse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3304
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 539
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale$JDKLocaleHelper;->toLocale(Lcom/ibm/icu/util/ULocale;)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;

    .line 541
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale;->localeID:Ljava/lang/String;

    return-object v0
.end method
