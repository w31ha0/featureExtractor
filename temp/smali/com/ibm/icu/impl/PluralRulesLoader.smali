.class public Lcom/ibm/icu/impl/PluralRulesLoader;
.super Lcom/ibm/icu/text/PluralRules$Factory;
.source "PluralRulesLoader.java"


# static fields
.field private static final UNKNOWN_RANGE:Lcom/ibm/icu/text/PluralRanges;

.field public static final loader:Lcom/ibm/icu/impl/PluralRulesLoader;

.field private static localeIdToPluralRanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/PluralRanges;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private localeIdToCardinalRulesId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localeIdToOrdinalRulesId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rulesIdToEquivalentULocale:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private final rulesIdToRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/PluralRules;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 252
    new-instance v1, Lcom/ibm/icu/impl/PluralRulesLoader;

    invoke-direct {v1}, Lcom/ibm/icu/impl/PluralRulesLoader;-><init>()V

    sput-object v1, Lcom/ibm/icu/impl/PluralRulesLoader;->loader:Lcom/ibm/icu/impl/PluralRulesLoader;

    .line 262
    new-instance v1, Lcom/ibm/icu/text/PluralRanges;

    invoke-direct {v1}, Lcom/ibm/icu/text/PluralRanges;-><init>()V

    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRanges;->freeze()Lcom/ibm/icu/text/PluralRanges;

    move-result-object v1

    sput-object v1, Lcom/ibm/icu/impl/PluralRulesLoader;->UNKNOWN_RANGE:Lcom/ibm/icu/text/PluralRanges;

    .line 285
    const/16 v1, 0xab

    new-array v5, v1, [[Ljava/lang/String;

    new-array v1, v12, [Ljava/lang/String;

    const-string/jumbo v3, "locales"

    aput-object v3, v1, v2

    const-string/jumbo v3, "id ja km ko lo ms my th vi zh"

    aput-object v3, v1, v11

    aput-object v1, v5, v2

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v3, "other"

    aput-object v3, v1, v2

    const-string/jumbo v3, "other"

    aput-object v3, v1, v11

    const-string/jumbo v3, "other"

    aput-object v3, v1, v12

    aput-object v1, v5, v11

    new-array v1, v12, [Ljava/lang/String;

    const-string/jumbo v3, "locales"

    aput-object v3, v1, v2

    const-string/jumbo v3, "am bn fr gu hi hy kn mr pa zu"

    aput-object v3, v1, v11

    aput-object v1, v5, v12

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v3, "one"

    aput-object v3, v1, v2

    const-string/jumbo v3, "one"

    aput-object v3, v1, v11

    const-string/jumbo v3, "one"

    aput-object v3, v1, v12

    aput-object v1, v5, v6

    const/4 v1, 0x4

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/4 v1, 0x5

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/4 v1, 0x6

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v4, "locales"

    aput-object v4, v3, v2

    const-string/jumbo v4, "fa"

    aput-object v4, v3, v11

    aput-object v3, v5, v1

    const/4 v1, 0x7

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x8

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x9

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0xa

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v4, "locales"

    aput-object v4, v3, v2

    const-string/jumbo v4, "ka"

    aput-object v4, v3, v11

    aput-object v3, v5, v1

    const/16 v1, 0xb

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0xc

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0xd

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0xe

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v4, "locales"

    aput-object v4, v3, v2

    const-string/jumbo v4, "az de el gl hu it kk ky ml mn ne nl pt sq sw ta te tr ug uz"

    aput-object v4, v3, v11

    aput-object v3, v5, v1

    const/16 v1, 0xf

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x10

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x11

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x12

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v4, "locales"

    aput-object v4, v3, v2

    const-string/jumbo v4, "af bg ca en es et eu fi nb sv ur"

    aput-object v4, v3, v11

    aput-object v3, v5, v1

    const/16 v1, 0x13

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x14

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x15

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x16

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v4, "locales"

    aput-object v4, v3, v2

    const-string/jumbo v4, "da fil is"

    aput-object v4, v3, v11

    aput-object v3, v5, v1

    const/16 v1, 0x17

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x18

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x19

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x1a

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x1b

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v4, "locales"

    aput-object v4, v3, v2

    const-string/jumbo v4, "si"

    aput-object v4, v3, v11

    aput-object v3, v5, v1

    const/16 v1, 0x1c

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x1d

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x1e

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x1f

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x20

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v4, "locales"

    aput-object v4, v3, v2

    const-string/jumbo v4, "mk"

    aput-object v4, v3, v11

    aput-object v3, v5, v1

    const/16 v1, 0x21

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x22

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x23

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x24

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x25

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v4, "locales"

    aput-object v4, v3, v2

    const-string/jumbo v4, "lv"

    aput-object v4, v3, v11

    aput-object v3, v5, v1

    const/16 v1, 0x26

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v2

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x27

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x28

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x29

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x2a

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x2b

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x2c

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x2d

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x2e

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x2f

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v4, "locales"

    aput-object v4, v3, v2

    const-string/jumbo v4, "ro"

    aput-object v4, v3, v11

    aput-object v3, v5, v1

    const/16 v1, 0x30

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x31

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x32

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x33

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x34

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x35

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x36

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x37

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v4, "locales"

    aput-object v4, v3, v2

    const-string/jumbo v4, "hr sr bs"

    aput-object v4, v3, v11

    aput-object v3, v5, v1

    const/16 v1, 0x38

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x39

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x3a

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x3b

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x3c

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x3d

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x3e

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x3f

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x40

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x41

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v4, "locales"

    aput-object v4, v3, v2

    const-string/jumbo v4, "sl"

    aput-object v4, v3, v11

    aput-object v3, v5, v1

    const/16 v1, 0x42

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x43

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "two"

    aput-object v4, v3, v11

    const-string/jumbo v4, "two"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x44

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x45

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x46

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "two"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x47

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "two"

    aput-object v4, v3, v2

    const-string/jumbo v4, "two"

    aput-object v4, v3, v11

    const-string/jumbo v4, "two"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x48

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "two"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x49

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "two"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x4a

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x4b

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "two"

    aput-object v4, v3, v11

    const-string/jumbo v4, "two"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x4c

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x4d

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x4e

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x4f

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "two"

    aput-object v4, v3, v11

    const-string/jumbo v4, "two"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x50

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x51

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x52

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v4, "locales"

    aput-object v4, v3, v2

    const-string/jumbo v4, "he"

    aput-object v4, v3, v11

    aput-object v3, v5, v1

    const/16 v1, 0x53

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "two"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x54

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x55

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x56

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "two"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x57

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "two"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x58

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "many"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x59

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "many"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x5a

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x5b

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "two"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x5c

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x5d

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x5e

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v4, "locales"

    aput-object v4, v3, v2

    const-string/jumbo v4, "cs pl sk"

    aput-object v4, v3, v11

    aput-object v3, v5, v1

    const/16 v1, 0x5f

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x60

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x61

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x62

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x63

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x64

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x65

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "many"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x66

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "many"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x67

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "many"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x68

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "many"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x69

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x6a

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x6b

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x6c

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x6d

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v4, "locales"

    aput-object v4, v3, v2

    const-string/jumbo v4, "lt ru uk"

    aput-object v4, v3, v11

    aput-object v3, v5, v1

    const/16 v1, 0x6e

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x6f

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x70

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x71

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x72

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x73

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x74

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x75

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x76

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "many"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x77

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "many"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x78

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "many"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x79

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "many"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x7a

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x7b

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x7c

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x7d

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x7e

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v4, "locales"

    aput-object v4, v3, v2

    const-string/jumbo v4, "cy"

    aput-object v4, v3, v11

    aput-object v3, v5, v1

    const/16 v1, 0x7f

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x80

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v2

    const-string/jumbo v4, "two"

    aput-object v4, v3, v11

    const-string/jumbo v4, "two"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x81

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x82

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x83

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x84

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "two"

    aput-object v4, v3, v11

    const-string/jumbo v4, "two"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x85

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x86

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x87

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x88

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "two"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x89

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "two"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x8a

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "two"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x8b

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x8c

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x8d

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "many"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x8e

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "one"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x8f

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "two"

    aput-object v4, v3, v11

    const-string/jumbo v4, "two"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x90

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x91

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x92

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x93

    new-array v3, v12, [Ljava/lang/String;

    const-string/jumbo v4, "locales"

    aput-object v4, v3, v2

    const-string/jumbo v4, "ar"

    aput-object v4, v3, v11

    aput-object v3, v5, v1

    const/16 v1, 0x94

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x95

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v2

    const-string/jumbo v4, "two"

    aput-object v4, v3, v11

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x96

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x97

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x98

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "zero"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x99

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "two"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x9a

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x9b

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x9c

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "one"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x9d

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "two"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x9e

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "two"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0x9f

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "two"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0xa0

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0xa1

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0xa2

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "few"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0xa3

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "many"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0xa4

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "many"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0xa5

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "many"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0xa6

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "one"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0xa7

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "two"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0xa8

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "few"

    aput-object v4, v3, v11

    const-string/jumbo v4, "few"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0xa9

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "many"

    aput-object v4, v3, v11

    const-string/jumbo v4, "many"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    const/16 v1, 0xaa

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "other"

    aput-object v4, v3, v2

    const-string/jumbo v4, "other"

    aput-object v4, v3, v11

    const-string/jumbo v4, "other"

    aput-object v4, v3, v12

    aput-object v3, v5, v1

    .line 477
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 478
    array-length v7, v5

    move v4, v2

    move-object v1, v0

    :goto_0
    if-ge v4, v7, :cond_2

    aget-object v8, v5, v4

    .line 479
    aget-object v3, v8, v2

    const-string/jumbo v9, "locales"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 480
    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {v1}, Lcom/ibm/icu/text/PluralRanges;->freeze()Lcom/ibm/icu/text/PluralRanges;

    .line 482
    array-length v9, v0

    move v3, v2

    :goto_1
    if-ge v3, v9, :cond_0

    aget-object v10, v0, v3

    .line 483
    invoke-virtual {v6, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 486
    :cond_0
    aget-object v0, v8, v11

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 487
    new-instance v1, Lcom/ibm/icu/text/PluralRanges;

    invoke-direct {v1}, Lcom/ibm/icu/text/PluralRanges;-><init>()V

    .line 478
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 489
    :cond_1
    aget-object v3, v8, v2

    .line 490
    invoke-static {v3}, Lcom/ibm/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v3

    aget-object v9, v8, v11

    .line 491
    invoke-static {v9}, Lcom/ibm/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v9

    aget-object v8, v8, v12

    .line 492
    invoke-static {v8}, Lcom/ibm/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v8

    .line 489
    invoke-virtual {v1, v3, v9, v8}, Lcom/ibm/icu/text/PluralRanges;->add(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)V

    goto :goto_2

    .line 496
    :cond_2
    array-length v3, v0

    :goto_3
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 497
    invoke-virtual {v6, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 500
    :cond_3
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToPluralRanges:Ljava/util/Map;

    .line 501
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/ibm/icu/text/PluralRules$Factory;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    .line 43
    return-void
.end method

.method private checkBuildRulesIdMaps()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 107
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    if-nez v0, :cond_5

    .line 113
    :try_start_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->getPluralBundle()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    .line 115
    const-string/jumbo v0, "locales"

    invoke-virtual {v4, v0}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v5

    .line 118
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move v1, v3

    .line 122
    :goto_1
    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 123
    invoke-virtual {v5, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v6

    .line 124
    invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 125
    invoke-virtual {v6}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 126
    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 129
    new-instance v8, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v8, v7}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 122
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 134
    :cond_2
    :try_start_3
    const-string/jumbo v1, "locales_ordinals"

    invoke-virtual {v4, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    .line 135
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 136
    :goto_2
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 137
    invoke-virtual {v4, v3}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v5

    .line 138
    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 139
    invoke-virtual {v5}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_0

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 142
    :catch_0
    move-exception v0

    .line 144
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 149
    :cond_3
    monitor-enter p0

    .line 150
    :try_start_4
    iget-object v3, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    if-nez v3, :cond_4

    .line 151
    iput-object v2, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    .line 152
    iput-object v1, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToOrdinalRulesId:Ljava/util/Map;

    .line 153
    iput-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToEquivalentULocale:Ljava/util/Map;

    .line 155
    :cond_4
    monitor-exit p0

    .line 157
    :cond_5
    return-void

    .line 155
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private getLocaleIdToRulesIdMap(Lcom/ibm/icu/text/PluralRules$PluralType;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/PluralRules$PluralType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->checkBuildRulesIdMaps()V

    .line 87
    sget-object v0, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->localeIdToOrdinalRulesId:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/PluralRulesLoader;->getRulesIdForLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Ljava/lang/String;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 240
    :cond_0
    sget-object v0, Lcom/ibm/icu/text/PluralRules;->DEFAULT:Lcom/ibm/icu/text/PluralRules;

    .line 246
    :cond_1
    :goto_0
    return-object v0

    .line 242
    :cond_2
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/PluralRulesLoader;->getRulesForRulesId(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;

    move-result-object v0

    .line 243
    if-nez v0, :cond_1

    .line 244
    sget-object v0, Lcom/ibm/icu/text/PluralRules;->DEFAULT:Lcom/ibm/icu/text/PluralRules;

    goto :goto_0
.end method

.method public getPluralBundle()Lcom/ibm/icu/util/UResourceBundle;
    .locals 4

    .prologue
    .line 228
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b"

    const-string/jumbo v1, "plurals"

    sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public getRulesForRulesId(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;
    .locals 6

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 186
    iget-object v1, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    monitor-enter v1

    .line 187
    :try_start_0
    iget-object v2, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 188
    if-eqz v2, :cond_0

    .line 189
    iget-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/PluralRules;

    .line 191
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    if-nez v2, :cond_3

    .line 194
    :try_start_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/PluralRulesLoader;->getPluralBundle()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 195
    const-string/jumbo v2, "rules"

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 196
    invoke-virtual {v1, p1}, Lcom/ibm/icu/util/UResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v2

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 200
    invoke-virtual {v2, v1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v4

    .line 201
    if-lez v1, :cond_1

    .line 202
    const-string/jumbo v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_1
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string/jumbo v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v4}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 208
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/text/PluralRules;->parseDescription(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 212
    :goto_1
    iget-object v1, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    monitor-enter v1

    .line 213
    :try_start_4
    iget-object v2, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 214
    iget-object v0, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/PluralRules;

    .line 218
    :goto_2
    monitor-exit v1

    .line 220
    :cond_3
    return-object v0

    .line 216
    :cond_4
    iget-object v2, p0, Lcom/ibm/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 218
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 210
    :catch_0
    move-exception v1

    goto :goto_1

    .line 209
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public getRulesIdForLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 165
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap(Lcom/ibm/icu/text/PluralRules$PluralType;)Ljava/util/Map;

    move-result-object v2

    .line 166
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 168
    :goto_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 169
    const-string/jumbo v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 170
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 175
    :cond_0
    return-object v0

    .line 173
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 174
    goto :goto_0
.end method
