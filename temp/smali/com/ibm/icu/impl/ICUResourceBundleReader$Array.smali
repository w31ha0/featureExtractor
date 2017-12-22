.class Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;
.super Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;
.source "ICUResourceBundleReader.java"

# interfaces
.implements Lcom/ibm/icu/impl/UResource$Array;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 977
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue(ILcom/ibm/icu/impl/UResource$Value;)Z
    .locals 1

    .prologue
    .line 980
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;->size:I

    if-ge p1, v0, :cond_0

    .line 981
    check-cast p2, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;

    .line 982
    iget-object v0, p2, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;->getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    iput v0, p2, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    .line 983
    const/4 v0, 0x1

    .line 985
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
