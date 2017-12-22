.class public final enum Lcom/ibm/icu/text/UnicodeSet$SpanCondition;
.super Ljava/lang/Enum;
.source "UnicodeSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ibm/icu/text/UnicodeSet$SpanCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

.field public static final enum CONDITION_COUNT:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

.field public static final enum CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

.field public static final enum NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

.field public static final enum SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4821
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    const-string/jumbo v1, "NOT_CONTAINED"

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    .line 4837
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    const-string/jumbo v1, "CONTAINED"

    invoke-direct {v0, v1, v3}, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    .line 4857
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    const-string/jumbo v1, "SIMPLE"

    invoke-direct {v0, v1, v4}, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    .line 4864
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    const-string/jumbo v1, "CONDITION_COUNT"

    invoke-direct {v0, v1, v5}, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONDITION_COUNT:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    .line 4809
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONTAINED:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->SIMPLE:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->CONDITION_COUNT:Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->$VALUES:[Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

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
    .line 4809
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet$SpanCondition;
    .locals 1

    .prologue
    .line 4809
    const-class v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    return-object v0
.end method

.method public static values()[Lcom/ibm/icu/text/UnicodeSet$SpanCondition;
    .locals 1

    .prologue
    .line 4809
    sget-object v0, Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->$VALUES:[Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/UnicodeSet$SpanCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/UnicodeSet$SpanCondition;

    return-object v0
.end method
