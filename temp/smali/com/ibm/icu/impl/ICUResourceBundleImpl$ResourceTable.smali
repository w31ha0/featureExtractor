.class Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;
.super Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;
.source "ICUResourceBundleImpl.java"


# direct methods
.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;I)V
    .locals 1

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;-><init>(Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;)V

    .line 306
    iget-object v0, p1, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getTable(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    .line 307
    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 298
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;-><init>(Lcom/ibm/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V

    .line 299
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, p3}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getTable(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    .line 300
    return-void
.end method


# virtual methods
.method findString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 291
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result v0

    .line 292
    if-gez v0, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {v2, v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x2

    return v0
.end method

.method protected handleGet(ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    .line 243
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->getKey(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object v0

    .line 244
    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 247
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->getContainerResource(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method protected handleGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 234
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result v0

    .line 235
    if-gez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->getContainerResource(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    goto :goto_0
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 255
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v2, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 256
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    invoke-virtual {v0, v2, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result v0

    .line 257
    if-ltz v0, :cond_2

    .line 258
    iget-object v1, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {v1, v2, v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v1

    .line 260
    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-object v0

    .line 265
    :cond_1
    invoke-virtual {v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getArray(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v3

    .line 266
    if-eqz v3, :cond_2

    .line 267
    invoke-virtual {v3}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->getSize()I

    move-result v4

    .line 268
    new-array v0, v4, [Ljava/lang/String;

    .line 269
    const/4 v1, 0x0

    .line 270
    :goto_1
    if-eq v1, v4, :cond_0

    .line 273
    invoke-virtual {v3, v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 274
    if-nez v5, :cond_3

    .line 284
    :cond_2
    invoke-super {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_3
    aput-object v5, v0, v1

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected handleKeySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v2, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 224
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 225
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    .line 226
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 227
    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;->getKey(Lcom/ibm/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_0
    return-object v3
.end method
