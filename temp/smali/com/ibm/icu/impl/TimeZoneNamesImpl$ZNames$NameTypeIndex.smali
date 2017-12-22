.class final enum Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;
.super Ljava/lang/Enum;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

.field public static final enum EXEMPLAR_LOCATION:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

.field public static final enum LONG_DAYLIGHT:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

.field public static final enum LONG_GENERIC:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

.field public static final enum LONG_STANDARD:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

.field public static final enum SHORT_DAYLIGHT:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

.field public static final enum SHORT_GENERIC:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

.field public static final enum SHORT_STANDARD:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

.field static final values:[Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 699
    new-instance v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    const-string/jumbo v1, "EXEMPLAR_LOCATION"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->EXEMPLAR_LOCATION:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    new-instance v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    const-string/jumbo v1, "LONG_GENERIC"

    invoke-direct {v0, v1, v4}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_GENERIC:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    new-instance v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    const-string/jumbo v1, "LONG_STANDARD"

    invoke-direct {v0, v1, v5}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_STANDARD:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    new-instance v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    const-string/jumbo v1, "LONG_DAYLIGHT"

    invoke-direct {v0, v1, v6}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_DAYLIGHT:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    new-instance v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    const-string/jumbo v1, "SHORT_GENERIC"

    invoke-direct {v0, v1, v7}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_GENERIC:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    new-instance v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    const-string/jumbo v1, "SHORT_STANDARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_STANDARD:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    new-instance v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    const-string/jumbo v1, "SHORT_DAYLIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_DAYLIGHT:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    .line 698
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    sget-object v1, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->EXEMPLAR_LOCATION:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_GENERIC:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_STANDARD:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_DAYLIGHT:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_GENERIC:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_STANDARD:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_DAYLIGHT:Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->$VALUES:[Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    .line 700
    invoke-static {}, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->values()[Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->values:[Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

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
    .line 698
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;
    .locals 1

    .prologue
    .line 698
    const-class v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;
    .locals 1

    .prologue
    .line 698
    sget-object v0, Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->$VALUES:[Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    return-object v0
.end method
