.class final Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;
.super Ljava/lang/Object;
.source "MeasureFormat.java"


# static fields
.field static final PATTERN_COUNT:I

.field static final PER_UNIT_INDEX:I


# instance fields
.field final styleToPerPattern:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/ibm/icu/text/MeasureFormat$FormatWidth;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final unitToStyleToDnam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/ibm/icu/util/MeasureUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/ibm/icu/text/MeasureFormat$FormatWidth;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final unitToStyleToPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/ibm/icu/util/MeasureUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/ibm/icu/text/MeasureFormat$FormatWidth;",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final widthFallback:[Lcom/ibm/icu/text/MeasureFormat$FormatWidth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1109
    sget v0, Lcom/ibm/icu/impl/StandardPlural;->COUNT:I

    sput v0, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->PER_UNIT_INDEX:I

    .line 1110
    sget v0, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->PER_UNIT_INDEX:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->PATTERN_COUNT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1121
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    .line 1123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPatterns:Ljava/util/Map;

    .line 1125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToDnam:Ljava/util/Map;

    .line 1127
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/ibm/icu/text/MeasureFormat$FormatWidth;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/MeasureFormat$1;)V
    .locals 0

    .prologue
    .line 1108
    invoke-direct {p0}, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;-><init>()V

    return-void
.end method


# virtual methods
.method hasPerFormatter(Lcom/ibm/icu/text/MeasureFormat$FormatWidth;)Z
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
