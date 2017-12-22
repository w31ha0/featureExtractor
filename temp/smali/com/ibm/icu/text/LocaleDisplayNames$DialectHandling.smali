.class public final enum Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;
.super Ljava/lang/Enum;
.source "LocaleDisplayNames.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

.field public static final enum DIALECT_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

.field public static final enum STANDARD_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    const-string/jumbo v1, "STANDARD_NAMES"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    .line 48
    new-instance v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    const-string/jumbo v1, "DIALECT_NAMES"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    sget-object v1, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->$VALUES:[Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->$VALUES:[Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    return-object v0
.end method
