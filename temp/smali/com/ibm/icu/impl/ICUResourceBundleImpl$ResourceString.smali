.class final Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;
.super Lcom/ibm/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleImpl;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    .line 112
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, p3}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    .line 115
    invoke-static {}, Lcom/ibm/icu/impl/CacheValue;->futureInstancesWillBeStrong()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;->value:Ljava/lang/String;

    .line 118
    :cond_1
    return-void
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;->value:Ljava/lang/String;

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iget v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceString;->resource:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method
