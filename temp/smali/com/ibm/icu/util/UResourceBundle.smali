.class public abstract Lcom/ibm/icu/util/UResourceBundle;
.super Ljava/util/ResourceBundle;
.source "UResourceBundle.java"


# static fields
.field private static ROOT_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/util/UResourceBundle$RootType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/util/ResourceBundle;-><init>()V

    .line 159
    return-void
.end method

.method public static getBundleInstance(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 3

    .prologue
    .line 186
    if-nez p0, :cond_0

    .line 187
    const-string/jumbo p0, "com/ibm/icu/impl/data/icudt59b"

    .line 189
    :cond_0
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 3

    .prologue
    .line 226
    if-nez p0, :cond_0

    .line 227
    const-string/jumbo p0, "com/ibm/icu/impl/data/icudt59b"

    .line 229
    :cond_0
    if-nez p1, :cond_1

    .line 230
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    .line 232
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 2

    .prologue
    .line 272
    if-nez p0, :cond_0

    .line 273
    const-string/jumbo p0, "com/ibm/icu/impl/data/icudt59b"

    .line 275
    :cond_0
    if-nez p1, :cond_1

    .line 276
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    .line 278
    :cond_1
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method protected static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
    .locals 1

    .prologue
    .line 149
    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method private static getRootType(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle$RootType;
    .locals 2

    .prologue
    .line 329
    sget-object v0, Lcom/ibm/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/UResourceBundle$RootType;

    .line 331
    if-nez v0, :cond_0

    .line 332
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "root"

    .line 334
    :goto_0
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v0, p1, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 335
    sget-object v0, Lcom/ibm/icu/util/UResourceBundle$RootType;->ICU:Lcom/ibm/icu/util/UResourceBundle$RootType;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_1
    sget-object v1, Lcom/ibm/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_0
    return-object v0

    .line 332
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 336
    :catch_0
    move-exception v1

    .line 338
    const/4 v1, 0x1

    :try_start_1
    invoke-static {p0, v0, p1, v1}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ResourceBundleWrapper;

    .line 339
    sget-object v0, Lcom/ibm/icu/util/UResourceBundle$RootType;->JAVA:Lcom/ibm/icu/util/UResourceBundle$RootType;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 340
    :catch_1
    move-exception v0

    .line 342
    sget-object v0, Lcom/ibm/icu/util/UResourceBundle$RootType;->MISSING:Lcom/ibm/icu/util/UResourceBundle$RootType;

    goto :goto_1
.end method

.method private handleGetObjectImpl(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 866
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/UResourceBundle;->resolveObject(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;)Ljava/lang/Object;

    move-result-object v0

    .line 867
    if-nez v0, :cond_1

    .line 868
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getParent()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    .line 869
    if-eqz v1, :cond_0

    .line 870
    invoke-direct {v1, p1, p2}, Lcom/ibm/icu/util/UResourceBundle;->handleGetObjectImpl(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;)Ljava/lang/Object;

    move-result-object v0

    .line 872
    :cond_0
    if-nez v0, :cond_1

    .line 873
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t find resource for bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 875
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 876
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_1
    return-object v0
.end method

.method protected static instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;
    .locals 2

    .prologue
    .line 371
    invoke-static {p0, p2}, Lcom/ibm/icu/util/UResourceBundle;->getRootType(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/util/UResourceBundle$RootType;

    move-result-object v0

    .line 373
    sget-object v1, Lcom/ibm/icu/util/UResourceBundle$1;->$SwitchMap$com$ibm$icu$util$UResourceBundle$RootType:[I

    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle$RootType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 385
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 387
    sget-object v1, Lcom/ibm/icu/util/UResourceBundle$RootType;->ICU:Lcom/ibm/icu/util/UResourceBundle$RootType;

    invoke-static {p0, v1}, Lcom/ibm/icu/util/UResourceBundle;->setRootType(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle$RootType;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-object v0

    .line 375
    :pswitch_0
    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    goto :goto_0

    .line 378
    :pswitch_1
    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ResourceBundleWrapper;

    move-result-object v0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ResourceBundleWrapper;

    move-result-object v0

    .line 391
    sget-object v1, Lcom/ibm/icu/util/UResourceBundle$RootType;->JAVA:Lcom/ibm/icu/util/UResourceBundle$RootType;

    invoke-static {p0, v1}, Lcom/ibm/icu/util/UResourceBundle;->setRootType(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle$RootType;)V

    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resolveObject(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 885
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    .line 900
    :cond_0
    :goto_0
    return-object v0

    .line 887
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/util/UResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 888
    if-eqz v0, :cond_0

    .line 889
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getType()I

    move-result v1

    if-nez v1, :cond_2

    .line 890
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 893
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 894
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->handleGetStringArray()[Ljava/lang/String;
    :try_end_0
    .catch Lcom/ibm/icu/util/UResourceTypeMismatchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 896
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static setRootType(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle$RootType;)V
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/ibm/icu/util/UResourceBundle;->ROOT_CACHE:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    return-void
.end method


# virtual methods
.method protected findTopLevel(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 534
    move-object v2, p0

    :goto_0
    if-eqz v2, :cond_1

    .line 535
    invoke-virtual {v2, p1, v1, p0}, Lcom/ibm/icu/util/UResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 536
    if-eqz v0, :cond_0

    .line 540
    :goto_1
    return-object v0

    .line 534
    :cond_0
    invoke-virtual {v2}, Lcom/ibm/icu/util/UResourceBundle;->getParent()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 540
    goto :goto_1
.end method

.method public get(I)Lcom/ibm/icu/util/UResourceBundle;
    .locals 4

    .prologue
    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p0}, Lcom/ibm/icu/util/UResourceBundle;->handleGet(ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 571
    if-nez v0, :cond_1

    .line 572
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getParent()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 576
    :cond_0
    if-nez v0, :cond_1

    .line 577
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t find resource for bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 579
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 580
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_1
    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 4

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/UResourceBundle;->findTopLevel(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    .line 510
    if-nez v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t find resource for bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", key "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 514
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 516
    :cond_0
    return-object v0
.end method

.method protected abstract getBaseName()Ljava/lang/String;
.end method

.method public getBinary([B)[B
    .locals 2

    .prologue
    .line 454
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInt()I
    .locals 2

    .prologue
    .line 482
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIntVector()[I
    .locals 2

    .prologue
    .line 468
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;
    .locals 1

    .prologue
    .line 731
    new-instance v0, Lcom/ibm/icu/util/UResourceBundleIterator;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/UResourceBundleIterator;-><init>(Lcom/ibm/icu/util/UResourceBundle;)V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getLocaleID()Ljava/lang/String;
.end method

.method protected abstract getParent()Lcom/ibm/icu/util/UResourceBundle;
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x1

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/UResourceBundle;->get(I)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 554
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 555
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 557
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStringArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 438
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 711
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getULocale()Lcom/ibm/icu/util/ULocale;
.end method

.method protected handleGet(ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 1
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
    .line 820
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 1
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
    .line 804
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 853
    invoke-direct {p0, p1, p0}, Lcom/ibm/icu/util/UResourceBundle;->handleGetObjectImpl(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleGetStringArray()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 830
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 685
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected isTopLevelResource()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 911
    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 638
    .line 640
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->isTopLevelResource()Z

    move-result v1

    if-eqz v1, :cond_5

    instance-of v1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;

    if-eqz v1, :cond_5

    move-object v0, p0

    .line 643
    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 644
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getTopLevelKeySet()Ljava/util/Set;

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    .line 646
    :goto_0
    if-nez v0, :cond_1

    .line 647
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->isTopLevelResource()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 649
    iget-object v0, p0, Lcom/ibm/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-nez v0, :cond_2

    .line 650
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 662
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 663
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 664
    if-eqz v2, :cond_1

    .line 665
    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->setTopLevelKeySet(Ljava/util/Set;)V

    .line 671
    :cond_1
    :goto_2
    return-object v0

    .line 651
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    instance-of v0, v0, Lcom/ibm/icu/util/UResourceBundle;

    if-eqz v0, :cond_3

    .line 652
    new-instance v1, Ljava/util/TreeSet;

    iget-object v0, p0, Lcom/ibm/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    check-cast v0, Lcom/ibm/icu/util/UResourceBundle;

    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_1

    .line 656
    :cond_3
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 657
    iget-object v1, p0, Lcom/ibm/icu/util/UResourceBundle;->parent:Ljava/util/ResourceBundle;

    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v1

    .line 658
    :goto_3
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 659
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 668
    :cond_4
    invoke-virtual {p0}, Lcom/ibm/icu/util/UResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v2, v0

    goto :goto_0
.end method
