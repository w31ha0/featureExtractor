.class final enum Lcom/ibm/icu/util/Calendar$CalType;
.super Ljava/lang/Enum;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/util/Calendar$CalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum BUDDHIST:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum CHINESE:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum COPTIC:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum DANGI:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ETHIOPIC:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ETHIOPIC_AMETE_ALEM:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum GREGORIAN:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum HEBREW:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum INDIAN:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_CIVIL:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_RGSA:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_TBLA:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ISLAMIC_UMALQURA:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ISO8601:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum JAPANESE:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum PERSIAN:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum ROC:Lcom/ibm/icu/util/Calendar$CalType;

.field public static final enum UNKNOWN:Lcom/ibm/icu/util/Calendar$CalType;


# instance fields
.field id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1779
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "GREGORIAN"

    const-string/jumbo v2, "gregorian"

    invoke-direct {v0, v1, v4, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->GREGORIAN:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1780
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ISO8601"

    const-string/jumbo v2, "iso8601"

    invoke-direct {v0, v1, v5, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ISO8601:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1782
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "BUDDHIST"

    const-string/jumbo v2, "buddhist"

    invoke-direct {v0, v1, v6, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->BUDDHIST:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1783
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "CHINESE"

    const-string/jumbo v2, "chinese"

    invoke-direct {v0, v1, v7, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->CHINESE:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1784
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "COPTIC"

    const-string/jumbo v2, "coptic"

    invoke-direct {v0, v1, v8, v2}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->COPTIC:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1785
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "DANGI"

    const/4 v2, 0x5

    const-string/jumbo v3, "dangi"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->DANGI:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1786
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ETHIOPIC"

    const/4 v2, 0x6

    const-string/jumbo v3, "ethiopic"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ETHIOPIC:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1787
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ETHIOPIC_AMETE_ALEM"

    const/4 v2, 0x7

    const-string/jumbo v3, "ethiopic-amete-alem"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ETHIOPIC_AMETE_ALEM:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1788
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "HEBREW"

    const/16 v2, 0x8

    const-string/jumbo v3, "hebrew"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->HEBREW:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1789
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "INDIAN"

    const/16 v2, 0x9

    const-string/jumbo v3, "indian"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->INDIAN:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1790
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ISLAMIC"

    const/16 v2, 0xa

    const-string/jumbo v3, "islamic"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1791
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ISLAMIC_CIVIL"

    const/16 v2, 0xb

    const-string/jumbo v3, "islamic-civil"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC_CIVIL:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1792
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ISLAMIC_RGSA"

    const/16 v2, 0xc

    const-string/jumbo v3, "islamic-rgsa"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC_RGSA:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1793
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ISLAMIC_TBLA"

    const/16 v2, 0xd

    const-string/jumbo v3, "islamic-tbla"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC_TBLA:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1794
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ISLAMIC_UMALQURA"

    const/16 v2, 0xe

    const-string/jumbo v3, "islamic-umalqura"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC_UMALQURA:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1795
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "JAPANESE"

    const/16 v2, 0xf

    const-string/jumbo v3, "japanese"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->JAPANESE:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1796
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "PERSIAN"

    const/16 v2, 0x10

    const-string/jumbo v3, "persian"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->PERSIAN:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1797
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "ROC"

    const/16 v2, 0x11

    const-string/jumbo v3, "roc"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->ROC:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1799
    new-instance v0, Lcom/ibm/icu/util/Calendar$CalType;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0x12

    const-string/jumbo v3, "unknown"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/Calendar$CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->UNKNOWN:Lcom/ibm/icu/util/Calendar$CalType;

    .line 1778
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/ibm/icu/util/Calendar$CalType;

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->GREGORIAN:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->ISO8601:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->BUDDHIST:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->CHINESE:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ibm/icu/util/Calendar$CalType;->COPTIC:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ibm/icu/util/Calendar$CalType;->DANGI:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ibm/icu/util/Calendar$CalType;->ETHIOPIC:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ibm/icu/util/Calendar$CalType;->ETHIOPIC_AMETE_ALEM:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ibm/icu/util/Calendar$CalType;->HEBREW:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ibm/icu/util/Calendar$CalType;->INDIAN:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC_CIVIL:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC_RGSA:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC_TBLA:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ibm/icu/util/Calendar$CalType;->ISLAMIC_UMALQURA:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ibm/icu/util/Calendar$CalType;->JAPANESE:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ibm/icu/util/Calendar$CalType;->PERSIAN:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ibm/icu/util/Calendar$CalType;->ROC:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/ibm/icu/util/Calendar$CalType;->UNKNOWN:Lcom/ibm/icu/util/Calendar$CalType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/util/Calendar$CalType;->$VALUES:[Lcom/ibm/icu/util/Calendar$CalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1803
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1804
    iput-object p3, p0, Lcom/ibm/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    .line 1805
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/util/Calendar$CalType;
    .locals 1

    .prologue
    .line 1778
    const-class v0, Lcom/ibm/icu/util/Calendar$CalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Calendar$CalType;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/util/Calendar$CalType;
    .locals 1

    .prologue
    .line 1778
    sget-object v0, Lcom/ibm/icu/util/Calendar$CalType;->$VALUES:[Lcom/ibm/icu/util/Calendar$CalType;

    invoke-virtual {v0}, [Lcom/ibm/icu/util/Calendar$CalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/util/Calendar$CalType;

    return-object v0
.end method
