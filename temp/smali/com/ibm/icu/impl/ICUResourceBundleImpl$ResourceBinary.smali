.class final Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;
.super Lcom/ibm/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleImpl;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    .line 78
    return-void
.end method


# virtual methods
.method public getBinary([B)[B
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceBinary;->resource:I

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getBinary(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method
