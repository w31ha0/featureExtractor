.class public interface abstract Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;
.super Ljava/lang/Object;
.source "CurrencyFormat.java"


# static fields
.field public static final DEFAULT_CURRENCY:Lcom/ibm/icu/util/Currency;

.field public static final DEFAULT_CURRENCY_PLURAL_INFO:Lcom/ibm/icu/text/CurrencyPluralInfo;

.field public static final DEFAULT_CURRENCY_STYLE:Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$CurrencyStyle;

.field public static final DEFAULT_CURRENCY_USAGE:Lcom/ibm/icu/util/Currency$CurrencyUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;->DEFAULT_CURRENCY:Lcom/ibm/icu/util/Currency;

    .line 43
    sput-object v0, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;->DEFAULT_CURRENCY_STYLE:Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$CurrencyStyle;

    .line 64
    sput-object v0, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;->DEFAULT_CURRENCY_USAGE:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    .line 81
    sput-object v0, Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$ICurrencyProperties;->DEFAULT_CURRENCY_PLURAL_INFO:Lcom/ibm/icu/text/CurrencyPluralInfo;

    return-void
.end method


# virtual methods
.method public abstract getCurrency()Lcom/ibm/icu/util/Currency;
.end method

.method public abstract getCurrencyPluralInfo()Lcom/ibm/icu/text/CurrencyPluralInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCurrencyStyle()Lcom/ibm/icu/impl/number/formatters/CurrencyFormat$CurrencyStyle;
.end method

.method public abstract getCurrencyUsage()Lcom/ibm/icu/util/Currency$CurrencyUsage;
.end method
