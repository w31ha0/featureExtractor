.class final Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceInt;
.super Lcom/ibm/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleImpl;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    .line 95
    return-void
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceInt;->resource:I

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_INT(I)I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x7

    return v0
.end method
