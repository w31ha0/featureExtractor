.class Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;
.super Lcom/ibm/icu/impl/ICULocaleService;
.source "NumberFormatServiceShim.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "NumberFormat"

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/ICULocaleService;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/ibm/icu/text/NumberFormatServiceShim$NFService$1RBNumberFormatFactory;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/NumberFormatServiceShim$NFService$1RBNumberFormatFactory;-><init>(Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;)V

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;->registerFactory(Lcom/ibm/icu/impl/ICUService$Factory;)Lcom/ibm/icu/impl/ICUService$Factory;

    .line 117
    invoke-virtual {p0}, Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;->markDefault()V

    .line 118
    return-void
.end method
