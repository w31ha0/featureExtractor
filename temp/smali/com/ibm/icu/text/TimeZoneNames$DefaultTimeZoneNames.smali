.class Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;
.super Lcom/ibm/icu/text/TimeZoneNames;
.source "TimeZoneNames.java"


# static fields
.field public static final INSTANCE:Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 540
    new-instance v0, Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;

    invoke-direct {v0}, Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;->INSTANCE:Lcom/ibm/icu/text/TimeZoneNames$DefaultTimeZoneNames;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneNames;-><init>()V

    return-void
.end method


# virtual methods
.method public find(Ljava/lang/CharSequence;ILjava/util/EnumSet;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/ibm/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableMetaZoneIDs(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getMetaZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetaZoneID(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReferenceZoneID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeZoneDisplayName(Ljava/lang/String;Lcom/ibm/icu/text/TimeZoneNames$NameType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    const/4 v0, 0x0

    return-object v0
.end method
