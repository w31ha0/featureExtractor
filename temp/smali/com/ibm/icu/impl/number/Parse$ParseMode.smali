.class public final enum Lcom/ibm/icu/impl/number/Parse$ParseMode;
.super Ljava/lang/Enum;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/impl/number/Parse$ParseMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/number/Parse$ParseMode;

.field public static final enum FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

.field public static final enum LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

.field public static final enum STRICT:Lcom/ibm/icu/impl/number/Parse$ParseMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;

    const-string/jumbo v1, "LENIENT"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/number/Parse$ParseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    .line 77
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;

    const-string/jumbo v1, "STRICT"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/impl/number/Parse$ParseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    .line 95
    new-instance v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;

    const-string/jumbo v1, "FAST"

    invoke-direct {v0, v1, v4}, Lcom/ibm/icu/impl/number/Parse$ParseMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ibm/icu/impl/number/Parse$ParseMode;

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/impl/number/Parse$ParseMode;->FAST:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;->$VALUES:[Lcom/ibm/icu/impl/number/Parse$ParseMode;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/number/Parse$ParseMode;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/impl/number/Parse$ParseMode;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/ibm/icu/impl/number/Parse$ParseMode;->$VALUES:[Lcom/ibm/icu/impl/number/Parse$ParseMode;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/number/Parse$ParseMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/number/Parse$ParseMode;

    return-object v0
.end method
