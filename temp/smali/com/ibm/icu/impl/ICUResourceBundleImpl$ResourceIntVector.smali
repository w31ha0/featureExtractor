.class final Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;
.super Lcom/ibm/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleImpl;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    .line 131
    return-void
.end method


# virtual methods
.method public getIntVector()[I
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceIntVector;->resource:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getIntVector(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0xe

    return v0
.end method
