.class public final enum Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;
.super Ljava/lang/Enum;
.source "PaddingFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

.field public static final enum AFTER_PREFIX:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

.field public static final enum AFTER_SUFFIX:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

.field public static final enum BEFORE_PREFIX:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

.field public static final enum BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    const-string/jumbo v1, "BEFORE_PREFIX"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    .line 13
    new-instance v0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    const-string/jumbo v1, "AFTER_PREFIX"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->AFTER_PREFIX:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    .line 14
    new-instance v0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    const-string/jumbo v1, "BEFORE_SUFFIX"

    invoke-direct {v0, v1, v4}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    .line 15
    new-instance v0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    const-string/jumbo v1, "AFTER_SUFFIX"

    invoke-direct {v0, v1, v5}, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    sget-object v1, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->BEFORE_PREFIX:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->AFTER_PREFIX:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->BEFORE_SUFFIX:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->AFTER_SUFFIX:Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->$VALUES:[Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->$VALUES:[Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/number/formatters/PaddingFormat$PadPosition;

    return-object v0
.end method
