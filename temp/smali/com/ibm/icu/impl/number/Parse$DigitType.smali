.class final enum Lcom/ibm/icu/impl/number/Parse$DigitType;
.super Ljava/lang/Enum;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/impl/number/Parse$DigitType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/number/Parse$DigitType;

.field public static final enum EXPONENT:Lcom/ibm/icu/impl/number/Parse$DigitType;

.field public static final enum FRACTION:Lcom/ibm/icu/impl/number/Parse$DigitType;

.field public static final enum INTEGER:Lcom/ibm/icu/impl/number/Parse$DigitType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 321
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$DigitType;

    const-string/jumbo v1, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/number/Parse$DigitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$DigitType;->INTEGER:Lcom/ibm/icu/impl/number/Parse$DigitType;

    .line 322
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$DigitType;

    const-string/jumbo v1, "FRACTION"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/impl/number/Parse$DigitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$DigitType;->FRACTION:Lcom/ibm/icu/impl/number/Parse$DigitType;

    .line 323
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$DigitType;

    const-string/jumbo v1, "EXPONENT"

    invoke-direct {v0, v1, v4}, Lcom/ibm/icu/impl/number/Parse$DigitType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$DigitType;->EXPONENT:Lcom/ibm/icu/impl/number/Parse$DigitType;

    .line 320
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ibm/icu/impl/number/Parse$DigitType;

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$DigitType;->INTEGER:Lcom/ibm/icu/impl/number/Parse$DigitType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$DigitType;->FRACTION:Lcom/ibm/icu/impl/number/Parse$DigitType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$DigitType;->EXPONENT:Lcom/ibm/icu/impl/number/Parse$DigitType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$DigitType;->$VALUES:[Lcom/ibm/icu/impl/number/Parse$DigitType;

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
    .line 320
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Parse$DigitType;
    .locals 1

    .prologue
    .line 320
    const-class v0, Lcom/ibm/icu/impl/number/Parse$DigitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Parse$DigitType;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/impl/number/Parse$DigitType;
    .locals 1

    .prologue
    .line 320
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$DigitType;->$VALUES:[Lcom/ibm/icu/impl/number/Parse$DigitType;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/number/Parse$DigitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/number/Parse$DigitType;

    return-object v0
.end method
