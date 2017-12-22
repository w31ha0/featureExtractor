.class public interface abstract Lcom/ibm/icu/impl/number/Parse$IProperties;
.super Ljava/lang/Object;
.source "Parse.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;
.implements Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;
.implements Lcom/ibm/icu/impl/number/formatters/MagnitudeMultiplier$IProperties;
.implements Lcom/ibm/icu/impl/number/formatters/PaddingFormat$IProperties;
.implements Lcom/ibm/icu/impl/number/formatters/PositiveDecimalFormat$IProperties;
.implements Lcom/ibm/icu/impl/number/formatters/PositiveNegativeAffixFormat$IProperties;
.implements Lcom/ibm/icu/impl/number/formatters/ScientificFormat$IProperties;


# static fields
.field public static final DEFAULT_PARSE_GROUPING_MODE:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

.field public static final DEFAULT_PARSE_MODE:Lcom/ibm/icu/impl/number/Parse$ParseMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 153
    sput-object v0, Lcom/ibm/icu/impl/number/Parse$IProperties;->DEFAULT_PARSE_MODE:Lcom/ibm/icu/impl/number/Parse$ParseMode;

    .line 201
    sput-object v0, Lcom/ibm/icu/impl/number/Parse$IProperties;->DEFAULT_PARSE_GROUPING_MODE:Lcom/ibm/icu/impl/number/Parse$GroupingMode;

    return-void
.end method


# virtual methods
.method public abstract getDecimalPatternMatchRequired()Z
.end method

.method public abstract getParseCaseSensitive()Z
.end method

.method public abstract getParseGroupingMode()Lcom/ibm/icu/impl/number/Parse$GroupingMode;
.end method

.method public abstract getParseIntegerOnly()Z
.end method

.method public abstract getParseMode()Lcom/ibm/icu/impl/number/Parse$ParseMode;
.end method

.method public abstract getParseNoExponent()Z
.end method

.method public abstract getParseToBigDecimal()Z
.end method
