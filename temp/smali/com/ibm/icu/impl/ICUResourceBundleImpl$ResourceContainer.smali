.class abstract Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;
.super Lcom/ibm/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# instance fields
.field protected value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;)V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl;-><init>(Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;)V

    .line 172
    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleImpl;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    .line 169
    return-void
.end method


# virtual methods
.method protected createBundleObject(ILjava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ibm/icu/util/UResourceBundle;",
            ")",
            "Lcom/ibm/icu/util/UResourceBundle;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;->getContainerResource(I)I

    move-result v0

    .line 161
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 164
    :cond_0
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;->createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method protected getContainerResource(I)I
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->getSize()I

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    .line 146
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_1

    .line 153
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
