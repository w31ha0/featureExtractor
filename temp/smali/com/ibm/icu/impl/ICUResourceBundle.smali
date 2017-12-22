.class public Lcom/ibm/icu/impl/ICUResourceBundle;
.super Lcom/ibm/icu/util/UResourceBundle;
.source "ICUResourceBundle.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static BUNDLE_CACHE:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/ICUResourceBundle;",
            "Lcom/ibm/icu/impl/ICUResourceBundle$Loader;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static GET_AVAILABLE_CACHE:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;


# instance fields
.field private container:Lcom/ibm/icu/impl/ICUResourceBundle;

.field protected key:Ljava/lang/String;

.field wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/ICUResourceBundle;->$assertionsDisabled:Z

    .line 44
    const-class v0, Lcom/ibm/icu/impl/ICUData;

    invoke-static {v0}, Lcom/ibm/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    .line 88
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundle$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ICUResourceBundle$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->BUNDLE_CACHE:Lcom/ibm/icu/impl/CacheBase;

    .line 544
    const-string/jumbo v0, "localedata"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/impl/ICUResourceBundle;->DEBUG:Z

    .line 783
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundle$3;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ICUResourceBundle$3;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->GET_AVAILABLE_CACHE:Lcom/ibm/icu/impl/CacheBase;

    return-void

    .line 35
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;)V
    .locals 0

    .prologue
    .line 1356
    invoke-direct {p0}, Lcom/ibm/icu/util/UResourceBundle;-><init>()V

    .line 1357
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    .line 1358
    return-void
.end method

.method protected constructor <init>(Lcom/ibm/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1360
    invoke-direct {p0}, Lcom/ibm/icu/util/UResourceBundle;-><init>()V

    .line 1361
    iput-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    .line 1362
    iget-object v0, p1, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    .line 1363
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->container:Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1364
    iget-object v0, p1, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 1365
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/ibm/icu/impl/ICUResourceBundle;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->createFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/ibm/icu/impl/ICUResourceBundle;)Z
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getNoFallback()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 1

    .prologue
    .line 35
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 35
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->localeIDStartsWithLangSubtag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static final addBundleBaseNamesFromClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 598
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundle$2;

    invoke-direct {v0, p1, p0, p2}, Lcom/ibm/icu/impl/ICUResourceBundle$2;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/Set;)V

    .line 599
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 633
    return-void
.end method

.method private static final addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 579
    :try_start_0
    const-string/jumbo v0, "res_index"

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/ibm/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 580
    const-string/jumbo v1, "InstalledLocales"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getIterator()Lcom/ibm/icu/util/UResourceBundleIterator;

    move-result-object v0

    .line 589
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundleIterator;->reset()V

    .line 590
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    invoke-virtual {v0}, Lcom/ibm/icu/util/UResourceBundleIterator;->next()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    sget-boolean v0, Lcom/ibm/icu/impl/ICUResourceBundle;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 583
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "couldn\'t find "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "res_index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".res"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 584
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 594
    :cond_0
    return-void
.end method

.method private static addLocaleIDsFromListFile(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 637
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "fullLocaleNames.lst"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 638
    if-eqz v0, :cond_1

    .line 639
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string/jumbo v3, "ASCII"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 643
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 644
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 649
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0

    .line 652
    :catch_0
    move-exception v0

    .line 655
    :cond_1
    :goto_1
    return-void

    .line 649
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private static countPathKeys(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 984
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    :goto_0
    return v0

    .line 987
    :cond_0
    const/4 v1, 0x1

    .line 988
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 989
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1

    .line 990
    add-int/lit8 v1, v1, 0x1

    .line 988
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 993
    goto :goto_0
.end method

.method public static createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 1

    .prologue
    .line 1282
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundleReader;

    move-result-object v0

    .line 1283
    if-nez v0, :cond_0

    .line 1285
    const/4 v0, 0x0

    .line 1287
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundle(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    goto :goto_0
.end method

.method private static createFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 658
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v1, p0

    .line 659
    :goto_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 660
    const-string/jumbo v0, "com.ibm.icu.impl.ICUResourceBundle.skipRuntimeLocaleResourceScan"

    const-string/jumbo v3, "false"

    invoke-static {v0, v3}, Lcom/ibm/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    const-string/jumbo v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 663
    invoke-static {v1, p1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->addBundleBaseNamesFromClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    .line 664
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v3, "com/ibm/icu/impl/data/icudt59b"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 667
    const-string/jumbo v0, ""

    .line 673
    :goto_1
    if-eqz v0, :cond_0

    .line 674
    const-string/jumbo v3, ".res"

    invoke-static {v0, v3, v2}, Lcom/ibm/icu/impl/ICUBinary;->addBaseNamesInFileFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 677
    :cond_0
    const-string/jumbo v0, "res_index"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 679
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 680
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 681
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 682
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_1

    :cond_2
    const/16 v4, 0x5f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 684
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 658
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 668
    :cond_4
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2f

    if-ne v0, v3, :cond_5

    .line 669
    const-string/jumbo v0, "com/ibm/icu/impl/data/icudt59b"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 671
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 689
    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 690
    sget-boolean v0, Lcom/ibm/icu/impl/ICUResourceBundle;->DEBUG:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to enumerate data files in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 691
    :cond_7
    invoke-static {v1, p1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->addLocaleIDsFromListFile(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    .line 693
    :cond_8
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 695
    invoke-static {p0, p1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    .line 698
    :cond_9
    const-string/jumbo v0, "root"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 699
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ROOT:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 700
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static final findResourceWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 3

    .prologue
    .line 802
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 803
    const/4 v0, 0x0

    .line 813
    :goto_0
    return-object v0

    .line 805
    :cond_0
    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 808
    invoke-direct {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v0

    .line 809
    invoke-static {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v1

    .line 810
    sget-boolean v2, Lcom/ibm/icu/impl/ICUResourceBundle;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-gtz v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 811
    :cond_1
    add-int v2, v0, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 812
    invoke-static {p0, v1, v2, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    .line 813
    invoke-static {v2, v0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    goto :goto_0
.end method

.method private static final findResourceWithFallback([Ljava/lang/String;ILcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 819
    if-nez p3, :cond_4

    move-object v1, p2

    .line 825
    :goto_0
    add-int/lit8 v2, p1, 0x1

    aget-object v0, p0, p1

    .line 826
    invoke-virtual {v1, v0, v3, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 827
    if-nez v0, :cond_1

    .line 828
    add-int/lit8 v4, v2, -0x1

    .line 838
    invoke-virtual {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getParent()Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 839
    if-nez v0, :cond_2

    move-object v0, v3

    .line 840
    :cond_0
    return-object v0

    .line 831
    :cond_1
    array-length v1, p0

    if-eq v2, v1, :cond_0

    move-object v1, v0

    move p1, v2

    .line 836
    goto :goto_0

    .line 846
    :cond_2
    invoke-direct {v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v5

    .line 847
    if-eq v4, v5, :cond_3

    .line 848
    array-length v2, p0

    sub-int/2addr v2, v4

    add-int/2addr v2, v5

    new-array v2, v2, [Ljava/lang/String;

    .line 849
    array-length v6, p0

    sub-int/2addr v6, v4

    invoke-static {p0, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v2

    .line 852
    :cond_3
    invoke-direct {v1, p0, v5}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    .line 854
    const/4 p1, 0x0

    move-object v1, v0

    .line 855
    goto :goto_0

    :cond_4
    move-object v1, p2

    move-object p2, p3

    goto :goto_0
.end method

.method private static final findStringWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    .line 864
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 953
    :cond_0
    :goto_0
    return-object v5

    .line 867
    :cond_1
    instance-of v0, p1, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;

    if-eqz v0, :cond_0

    .line 870
    if-nez p2, :cond_e

    move-object v6, p1

    .line 874
    :goto_1
    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 875
    iget-object v0, p1, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v9, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 880
    invoke-direct {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v2

    .line 882
    invoke-static {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v0

    .line 883
    sget-boolean v1, Lcom/ibm/icu/impl/ICUResourceBundle;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 884
    :cond_2
    add-int v1, v2, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 885
    invoke-static {p0, v0, v1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    move v3, v2

    move v7, v2

    move v4, v8

    move-object v0, p1

    .line 890
    :goto_2
    if-ne v4, v8, :cond_5

    .line 891
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result v2

    .line 892
    const/4 v10, 0x2

    if-eq v2, v10, :cond_3

    const/16 v10, 0x8

    if-ne v2, v10, :cond_4

    :cond_3
    move-object v2, v0

    .line 893
    check-cast v2, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;

    iget-object v2, v2, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;

    move-object v4, v2

    .line 908
    :goto_3
    add-int/lit8 v2, v3, 0x1

    aget-object v3, v1, v3

    .line 909
    invoke-virtual {v4, v9, v3}, Lcom/ibm/icu/impl/ICUResourceBundleReader$Container;->getResource(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/String;)I

    move-result v4

    .line 910
    if-ne v4, v8, :cond_8

    .line 911
    add-int/lit8 v2, v2, -0x1

    .line 951
    :cond_4
    :goto_4
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getParent()Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object p1

    .line 952
    if-eqz p1, :cond_0

    .line 956
    invoke-direct {v0, v1, v7}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    .line 958
    iget-object v0, p1, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v9, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 959
    const/4 v2, 0x0

    move v3, v2

    move v7, v2

    move-object v0, p1

    .line 960
    goto :goto_2

    .line 898
    :cond_5
    invoke-static {v4}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v2

    .line 899
    invoke-static {v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 900
    invoke-virtual {v9, v4}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getTable(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Table;

    move-result-object v2

    move-object v4, v2

    goto :goto_3

    .line 901
    :cond_6
    invoke-static {v2}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 902
    invoke-virtual {v9, v4}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getArray(I)Lcom/ibm/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v2

    move-object v4, v2

    goto :goto_3

    :cond_7
    move v4, v8

    .line 905
    goto :goto_4

    .line 915
    :cond_8
    invoke-static {v4}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_9

    .line 916
    invoke-direct {v0, v1, v7}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    .line 917
    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAliasedResource(Lcom/ibm/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v3

    .line 921
    :goto_5
    array-length v10, v1

    if-ne v2, v10, :cond_b

    .line 923
    if-eqz v3, :cond_a

    .line 924
    invoke-virtual {v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_9
    move-object v3, v5

    .line 919
    goto :goto_5

    .line 926
    :cond_a
    invoke-virtual {v9, v4}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 927
    if-nez v5, :cond_0

    .line 928
    new-instance v0, Lcom/ibm/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_b
    if-eqz v3, :cond_d

    .line 935
    iget-object v0, v3, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v7, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 941
    invoke-direct {v3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v4

    .line 942
    if-eq v2, v4, :cond_c

    .line 943
    array-length v0, v1

    sub-int/2addr v0, v2

    add-int/2addr v0, v4

    new-array v0, v0, [Ljava/lang/String;

    .line 944
    array-length v9, v1

    sub-int/2addr v9, v2

    invoke-static {v1, v2, v0, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    move v2, v4

    move v0, v8

    move-object v12, v7

    move-object v7, v3

    move-object v3, v12

    :goto_6
    move-object v9, v3

    move v3, v2

    move v12, v0

    move-object v0, v7

    move v7, v4

    move v4, v12

    .line 949
    goto/16 :goto_2

    :cond_c
    move v0, v8

    move-object v12, v7

    move-object v7, v3

    move-object v3, v12

    goto :goto_6

    :cond_d
    move-object v3, v9

    move v12, v4

    move v4, v7

    move-object v7, v0

    move v0, v12

    goto :goto_6

    :cond_e
    move-object v6, p2

    goto/16 :goto_1
.end method

.method protected static getAliasedResource(Lcom/ibm/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/ICUResourceBundle;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ibm/icu/util/UResourceBundle;",
            ")",
            "Lcom/ibm/icu/impl/ICUResourceBundle;"
        }
    .end annotation

    .prologue
    .line 1398
    iget-object v6, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    .line 1399
    iget-object v3, v6, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->loader:Ljava/lang/ClassLoader;

    .line 1401
    const/4 v0, 0x0

    .line 1403
    iget-object v1, v6, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v1, p4}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getAlias(I)Ljava/lang/String;

    move-result-object v4

    .line 1404
    if-nez p5, :cond_0

    .line 1405
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 1407
    :cond_0
    invoke-virtual {p5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Circular references in the resource bundles"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1411
    :cond_1
    const-string/jumbo v1, ""

    invoke-virtual {p5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    const/16 v1, 0x2f

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-nez v1, :cond_5

    .line 1413
    const/16 v1, 0x2f

    const/4 v2, 0x1

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1414
    const/16 v2, 0x2f

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1415
    const/4 v2, 0x1

    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1416
    if-gez v5, :cond_3

    .line 1417
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1423
    :goto_0
    const-string/jumbo v5, "ICUDATA"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1424
    const-string/jumbo v2, "com/ibm/icu/impl/data/icudt59b"

    .line 1425
    sget-object v3, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    .line 1445
    :cond_2
    :goto_1
    const/4 v5, 0x0

    .line 1446
    const-string/jumbo v7, "LOCALE"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1447
    iget-object v0, v6, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    .line 1448
    const-string/jumbo v0, "LOCALE"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1451
    check-cast p6, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1452
    :goto_2
    iget-object v1, p6, Lcom/ibm/icu/impl/ICUResourceBundle;->container:Lcom/ibm/icu/impl/ICUResourceBundle;

    if-eqz v1, :cond_7

    .line 1453
    iget-object p6, p6, Lcom/ibm/icu/impl/ICUResourceBundle;->container:Lcom/ibm/icu/impl/ICUResourceBundle;

    goto :goto_2

    .line 1419
    :cond_3
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1420
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1426
    :cond_4
    const-string/jumbo v5, "ICUDATA"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v7, -0x1

    if-le v5, v7, :cond_2

    .line 1427
    const/16 v5, 0x2d

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1428
    const/4 v7, -0x1

    if-le v5, v7, :cond_2

    .line 1429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "com/ibm/icu/impl/data/icudt59b/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1430
    sget-object v3, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    goto :goto_1

    .line 1435
    :cond_5
    const/16 v1, 0x2f

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1436
    const/4 v1, -0x1

    if-eq v2, v1, :cond_6

    .line 1437
    const/4 v0, 0x0

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1438
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1442
    :goto_3
    iget-object v2, v6, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    move-object v1, v4

    .line 1440
    goto :goto_3

    .line 1455
    :cond_7
    const/4 v1, 0x0

    invoke-static {v0, p6, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 1482
    :cond_8
    :goto_4
    if-nez v0, :cond_c

    .line 1483
    new-instance v0, Ljava/util/MissingResourceException;

    iget-object v1, v6, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    iget-object v2, v6, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1457
    :cond_9
    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 1460
    if-eqz v0, :cond_b

    .line 1461
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result p2

    .line 1462
    if-lez p2, :cond_a

    .line 1463
    new-array p1, p2, [Ljava/lang/String;

    .line 1464
    const/4 v2, 0x0

    invoke-static {v0, p2, p1, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    .line 1475
    :cond_a
    :goto_5
    if-lez p2, :cond_d

    .line 1477
    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    move v1, v8

    :goto_6
    if-eqz v0, :cond_8

    if-ge v1, p2, :cond_8

    .line 1478
    aget-object v2, p1, v1

    invoke-virtual {v0, v2, p5, p6}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 1477
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_6

    .line 1466
    :cond_b
    if-nez p1, :cond_a

    .line 1469
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v0

    .line 1470
    add-int/lit8 p2, v0, 0x1

    .line 1471
    new-array p1, p2, [Ljava/lang/String;

    .line 1472
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    .line 1473
    aput-object p3, p1, v0

    goto :goto_5

    .line 1490
    :cond_c
    return-object v0

    :cond_d
    move-object v0, v5

    goto :goto_4
.end method

.method private getAllItemsWithFallback(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;Lcom/ibm/icu/impl/UResource$Sink;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 407
    move-object v0, p0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl;

    .line 408
    iget-object v2, v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v2, v2, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    iput-object v2, p2, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 409
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundleImpl;->getResource()I

    move-result v0

    iput v0, p2, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    .line 410
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/UResource$Key;->setString(Ljava/lang/String;)Lcom/ibm/icu/impl/UResource$Key;

    .line 411
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, p1, p2, v0}, Lcom/ibm/icu/impl/UResource$Sink;->put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V

    .line 412
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 417
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v2

    .line 418
    if-nez v2, :cond_3

    .line 427
    :goto_2
    if-eqz v0, :cond_0

    .line 428
    invoke-direct {v0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 431
    :cond_0
    return-void

    .line 410
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_2
    move v0, v1

    .line 411
    goto :goto_1

    .line 423
    :cond_3
    new-array v3, v2, [Ljava/lang/String;

    .line 424
    invoke-direct {p0, v3, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    .line 425
    const/4 v2, 0x0

    invoke-static {v3, v1, v0, v2}, Lcom/ibm/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    goto :goto_2
.end method

.method private static getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;
    .locals 1

    .prologue
    .line 797
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->GET_AVAILABLE_CACHE:Lcom/ibm/icu/impl/CacheBase;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;

    return-object v0
.end method

.method private static getBundle(Lcom/ibm/icu/impl/ICUResourceBundleReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 3

    .prologue
    .line 1339
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getRootResource()I

    move-result v1

    .line 1340
    invoke-static {v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1341
    new-instance v2, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    invoke-direct {v2, p1, p2, p3, p0}, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundleReader;)V

    .line 1342
    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;-><init>(Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;I)V

    .line 1346
    const-string/jumbo v1, "%%ALIAS"

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleImpl$ResourceTable;->findString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1347
    if-eqz v1, :cond_0

    .line 1348
    invoke-static {p1, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1350
    :cond_0
    return-object v0

    .line 1344
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid format error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 4

    .prologue
    .line 1109
    if-nez p0, :cond_0

    .line 1110
    const-string/jumbo p0, "com/ibm/icu/impl/data/icudt59b"

    .line 1112
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1114
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    if-ne p3, v0, :cond_1

    .line 1115
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 1120
    :goto_0
    if-nez v0, :cond_2

    .line 1121
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not find the bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".res"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1118
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v1, v0, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    goto :goto_0

    .line 1124
    :cond_2
    return-object v0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 1

    .prologue
    .line 1094
    if-eqz p3, :cond_0

    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    goto :goto_0
.end method

.method public static getFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 458
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle$AvailEntry;->getFullLocaleNameSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private getNoFallback()Z
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getNoFallback()Z

    move-result v0

    return v0
.end method

.method private getResDepth()I
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->container:Lcom/ibm/icu/impl/ICUResourceBundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->container:Lcom/ibm/icu/impl/ICUResourceBundle;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/16 v3, 0x2f

    .line 1005
    if-nez p1, :cond_0

    .line 1026
    :goto_0
    return-void

    .line 1008
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1009
    aput-object p0, p2, p3

    goto :goto_0

    .line 1012
    :cond_1
    const/4 v0, 0x0

    .line 1014
    :goto_1
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1015
    sget-boolean v1, Lcom/ibm/icu/impl/ICUResourceBundle;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-ge v2, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1016
    :cond_2
    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    .line 1017
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 1018
    sget-boolean v0, Lcom/ibm/icu/impl/ICUResourceBundle;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1019
    :cond_3
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    goto :goto_0

    .line 1022
    :cond_4
    add-int/lit8 v0, v2, 0x1

    .line 1023
    add-int/lit8 p1, p1, -0x1

    move p3, v1

    .line 1025
    goto :goto_1
.end method

.method private getResPathKeys([Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 975
    .line 976
    :cond_0
    if-lez p2, :cond_3

    .line 977
    add-int/lit8 p2, p2, -0x1

    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    aput-object v0, p1, p2

    .line 978
    iget-object p0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->container:Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 979
    sget-boolean v0, Lcom/ibm/icu/impl/ICUResourceBundle;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->container:Lcom/ibm/icu/impl/ICUResourceBundle;

    if-nez v3, :cond_2

    move v3, v1

    :goto_1
    if-eq v0, v3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    .line 981
    :cond_3
    return-void
.end method

.method private static instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 9

    .prologue
    const/16 v1, 0x40

    const/16 v3, 0x23

    .line 1135
    sget-boolean v0, Lcom/ibm/icu/impl/ICUResourceBundle;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1136
    :cond_0
    sget-boolean v0, Lcom/ibm/icu/impl/ICUResourceBundle;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1137
    :cond_1
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1138
    invoke-virtual {p4}, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    .line 1139
    sget-object v2, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    if-eq p4, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 1142
    :goto_0
    sget-object v8, Lcom/ibm/icu/impl/ICUResourceBundle;->BUNDLE_CACHE:Lcom/ibm/icu/impl/CacheBase;

    new-instance v0, Lcom/ibm/icu/impl/ICUResourceBundle$4;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/ICUResourceBundle$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;Ljava/lang/String;)V

    invoke-virtual {v8, v7, v0}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    return-object v0

    .line 1139
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0
.end method

.method private static localeIDStartsWithLangSubtag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1128
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1128
    :goto_0
    return v0

    .line 1129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1030
    if-ne p0, p1, :cond_1

    .line 1040
    :cond_0
    :goto_0
    return v0

    .line 1033
    :cond_1
    instance-of v1, p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    if-eqz v1, :cond_2

    .line 1034
    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1035
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1036
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1040
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findTopLevel(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 1

    .prologue
    .line 332
    invoke-super {p0, p1}, Lcom/ibm/icu/util/UResourceBundle;->findTopLevel(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    return-object v0
.end method

.method public bridge synthetic findTopLevel(Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public findWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 1

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method get(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 4
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
            "Lcom/ibm/icu/impl/ICUResourceBundle;"
        }
    .end annotation

    .prologue
    .line 1215
    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 1216
    if-nez v0, :cond_1

    .line 1217
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getParent()Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 1218
    if-eqz v0, :cond_0

    .line 1220
    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;Ljava/util/HashMap;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 1222
    :cond_0
    if-nez v0, :cond_1

    .line 1223
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1224
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

    .line 1226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 1229
    :cond_1
    return-object v0
.end method

.method public getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V
    .locals 3

    .prologue
    .line 373
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v0

    .line 375
    if-nez v0, :cond_0

    .line 390
    :goto_0
    new-instance v0, Lcom/ibm/icu/impl/UResource$Key;

    invoke-direct {v0}, Lcom/ibm/icu/impl/UResource$Key;-><init>()V

    .line 391
    new-instance v1, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;

    invoke-direct {v1}, Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;-><init>()V

    .line 392
    invoke-direct {p0, v0, v1, p2}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/ICUResourceBundleReader$ReaderValue;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 393
    return-void

    .line 379
    :cond_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v1

    .line 380
    add-int v2, v1, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 381
    invoke-static {p1, v0, v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    .line 382
    const/4 v0, 0x0

    invoke-static {v2, v1, p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILcom/ibm/icu/impl/ICUResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 383
    if-nez v0, :cond_1

    .line 384
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t find resource for bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 386
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method protected getBaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method protected getLocaleID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/ibm/icu/util/UResourceBundle;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getParent()Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method public getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 351
    .line 352
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Ljava/lang/String;

    move-result-object v0

    .line 354
    if-nez v0, :cond_1

    .line 356
    const-string/jumbo v0, ""

    .line 366
    :cond_0
    return-object v0

    .line 363
    :cond_1
    const-string/jumbo v1, "\u2205\u2205\u2205"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    new-instance v0, Ljava/util/MissingResourceException;

    const-string/jumbo v1, "Encountered NO_INHERITANCE_MARKER"

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public final getTopLevelKeySet()Ljava/util/Set;
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
    .line 1499
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->topLevelKeys:Ljava/util/Set;

    return-object v0
.end method

.method public getULocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->ulocale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public getWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 3

    .prologue
    .line 294
    .line 297
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Lcom/ibm/icu/util/UResourceBundle;Lcom/ibm/icu/util/UResourceBundle;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    .line 299
    if-nez v0, :cond_0

    .line 300
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t find resource for bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getType()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2205\u2205\u2205"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    new-instance v0, Ljava/util/MissingResourceException;

    const-string/jumbo v1, "Encountered NO_INHERITANCE_MARKER"

    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_1
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1045
    sget-boolean v0, Lcom/ibm/icu/impl/ICUResourceBundle;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1046
    :cond_0
    const/16 v0, 0x2a

    return v0
.end method

.method protected isTopLevelResource()Z
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->container:Lcom/ibm/icu/impl/ICUResourceBundle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setParent(Ljava/util/ResourceBundle;)V
    .locals 0

    .prologue
    .line 1319
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    .line 1320
    return-void
.end method

.method public final setTopLevelKeySet(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle;->wholeBundle:Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;

    iput-object p1, v0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->topLevelKeys:Ljava/util/Set;

    .line 1509
    return-void
.end method
