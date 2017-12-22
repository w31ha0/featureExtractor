.class public Lcom/ibm/icu/impl/CurrencyData;
.super Ljava/lang/Object;
.source "CurrencyData.java"


# static fields
.field public static final provider:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    :try_start_0
    const-string/jumbo v0, "com.ibm.icu.impl.ICUCurrencyDisplayInfoProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    sput-object v0, Lcom/ibm/icu/impl/CurrencyData;->provider:Lcom/ibm/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    .line 119
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    new-instance v0, Lcom/ibm/icu/impl/CurrencyData$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/CurrencyData$1;-><init>()V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
