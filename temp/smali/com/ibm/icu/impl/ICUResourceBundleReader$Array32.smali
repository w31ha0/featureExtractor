.class final Lcom/ibm/icu/impl/ICUResourceBundleReader$Array32;
.super Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;
.source "ICUResourceBundleReader.java"


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)V
    .locals 2

    .prologue
    .line 993
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;-><init>()V

    .line 994
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$1000(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    .line 995
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->access$900(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v1

    iput v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array32;->size:I

    .line 996
    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array32;->itemsOffset:I

    .line 997
    return-void
.end method


# virtual methods
.method getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    .prologue
    .line 991
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array32;->getContainer32Resource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method
