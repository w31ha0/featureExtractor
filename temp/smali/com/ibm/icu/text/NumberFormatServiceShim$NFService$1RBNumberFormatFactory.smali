.class Lcom/ibm/icu/text/NumberFormatServiceShim$NFService$1RBNumberFormatFactory;
.super Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;
.source "NumberFormatServiceShim.java"


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/ibm/icu/text/NumberFormatServiceShim$NFService$1RBNumberFormatFactory;->this$0:Lcom/ibm/icu/text/NumberFormatServiceShim$NFService;

    invoke-direct {p0}, Lcom/ibm/icu/impl/ICULocaleService$ICUResourceBundleFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleCreate(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    invoke-static {p1, p2}, Lcom/ibm/icu/text/NumberFormat;->createInstance(Lcom/ibm/icu/util/ULocale;I)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method
