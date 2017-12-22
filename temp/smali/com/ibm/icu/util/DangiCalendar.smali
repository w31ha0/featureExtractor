.class public Lcom/ibm/icu/util/DangiCalendar;
.super Lcom/ibm/icu/util/ChineseCalendar;
.source "DangiCalendar.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final KOREA_ZONE:Lcom/ibm/icu/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const v8, 0x1b77400

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v13, Lcom/ibm/icu/util/InitialTimeZoneRule;

    const-string/jumbo v0, "GMT+8"

    invoke-direct {v13, v0, v8, v3}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    .line 65
    new-array v4, v5, [J

    const-wide v0, -0x21801858c00L

    aput-wide v0, v4, v3

    .line 66
    new-array v10, v5, [J

    const-wide v0, -0x210a9d46000L

    aput-wide v0, v10, v3

    .line 67
    new-array v12, v5, [J

    const-wide v0, -0x1a9de23f800L

    aput-wide v0, v12, v3

    .line 68
    new-instance v0, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    const-string/jumbo v1, "Korean 1897"

    const v2, 0x1808580

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    .line 70
    new-instance v6, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    const-string/jumbo v7, "Korean 1898-1911"

    move v9, v3

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    .line 72
    new-instance v7, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    const-string/jumbo v8, "Korean 1912-"

    const v9, 0x1ee6280

    move v10, v3

    move-object v11, v12

    move v12, v5

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    .line 75
    new-instance v1, Lcom/ibm/icu/util/RuleBasedTimeZone;

    const-string/jumbo v2, "KOREA_ZONE"

    invoke-direct {v1, v2, v13}, Lcom/ibm/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/InitialTimeZoneRule;)V

    .line 76
    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/RuleBasedTimeZone;->addTransitionRule(Lcom/ibm/icu/util/TimeZoneRule;)V

    .line 77
    invoke-virtual {v1, v6}, Lcom/ibm/icu/util/RuleBasedTimeZone;->addTransitionRule(Lcom/ibm/icu/util/TimeZoneRule;)V

    .line 78
    invoke-virtual {v1, v7}, Lcom/ibm/icu/util/RuleBasedTimeZone;->addTransitionRule(Lcom/ibm/icu/util/TimeZoneRule;)V

    .line 79
    invoke-virtual {v1}, Lcom/ibm/icu/util/RuleBasedTimeZone;->freeze()Lcom/ibm/icu/util/TimeZone;

    .line 80
    sput-object v1, Lcom/ibm/icu/util/DangiCalendar;->KOREA_ZONE:Lcom/ibm/icu/util/TimeZone;

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/DangiCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    const/16 v0, -0x91c

    sget-object v1, Lcom/ibm/icu/util/DangiCalendar;->KOREA_ZONE:Lcom/ibm/icu/util/TimeZone;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ibm/icu/util/ChineseCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/util/TimeZone;)V

    .line 120
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    const-string/jumbo v0, "dangi"

    return-object v0
.end method
