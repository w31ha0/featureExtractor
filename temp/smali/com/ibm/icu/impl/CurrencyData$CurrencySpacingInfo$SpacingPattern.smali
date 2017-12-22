.class public final enum Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
.super Ljava/lang/Enum;
.source "CurrencyData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

.field public static final enum CURRENCY_MATCH:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

.field public static final enum INSERT_BETWEEN:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

.field public static final enum SURROUNDING_MATCH:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    const-class v0, Lcom/ibm/icu/impl/CurrencyData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->$assertionsDisabled:Z

    .line 52
    new-instance v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    const-string/jumbo v3, "CURRENCY_MATCH"

    invoke-direct {v0, v3, v2, v2}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->CURRENCY_MATCH:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    .line 53
    new-instance v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    const-string/jumbo v3, "SURROUNDING_MATCH"

    invoke-direct {v0, v3, v1, v1}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->SURROUNDING_MATCH:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    .line 54
    new-instance v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    const-string/jumbo v3, "INSERT_BETWEEN"

    invoke-direct {v0, v3, v4, v4}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->INSERT_BETWEEN:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    .line 55
    new-instance v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    const-string/jumbo v3, "COUNT"

    invoke-direct {v0, v3, v5}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    sget-object v3, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->CURRENCY_MATCH:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    aput-object v3, v0, v2

    sget-object v2, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->SURROUNDING_MATCH:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    aput-object v2, v0, v1

    sget-object v1, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->INSERT_BETWEEN:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->COUNT:Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->$VALUES:[Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sget-boolean v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->ordinal()I

    move-result v0

    if-eq p3, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->$VALUES:[Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    return-object v0
.end method
