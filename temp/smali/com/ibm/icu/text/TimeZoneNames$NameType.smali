.class public final enum Lcom/ibm/icu/text/TimeZoneNames$NameType;
.super Ljava/lang/Enum;
.source "TimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/text/TimeZoneNames$NameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field public static final enum EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field public static final enum LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field public static final enum LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field public static final enum LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field public static final enum SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field public static final enum SHORT_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

.field public static final enum SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    new-instance v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const-string/jumbo v1, "LONG_GENERIC"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 100
    new-instance v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const-string/jumbo v1, "LONG_STANDARD"

    invoke-direct {v0, v1, v4}, Lcom/ibm/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 106
    new-instance v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const-string/jumbo v1, "LONG_DAYLIGHT"

    invoke-direct {v0, v1, v5}, Lcom/ibm/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 112
    new-instance v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const-string/jumbo v1, "SHORT_GENERIC"

    invoke-direct {v0, v1, v6}, Lcom/ibm/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 118
    new-instance v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const-string/jumbo v1, "SHORT_STANDARD"

    invoke-direct {v0, v1, v7}, Lcom/ibm/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 124
    new-instance v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const-string/jumbo v1, "SHORT_DAYLIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 130
    new-instance v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    const-string/jumbo v1, "EXEMPLAR_LOCATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/TimeZoneNames$NameType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    .line 88
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/ibm/icu/text/TimeZoneNames$NameType;

    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ibm/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Lcom/ibm/icu/text/TimeZoneNames$NameType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->$VALUES:[Lcom/ibm/icu/text/TimeZoneNames$NameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneNames$NameType;
    .locals 1

    .prologue
    .line 88
    const-class v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/text/TimeZoneNames$NameType;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/ibm/icu/text/TimeZoneNames$NameType;->$VALUES:[Lcom/ibm/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/TimeZoneNames$NameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/TimeZoneNames$NameType;

    return-object v0
.end method
