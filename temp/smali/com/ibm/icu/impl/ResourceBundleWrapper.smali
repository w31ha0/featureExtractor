.class public final Lcom/ibm/icu/impl/ResourceBundleWrapper;
.super Lcom/ibm/icu/util/UResourceBundle;
.source "ResourceBundleWrapper.java"


# static fields
.field private static BUNDLE_CACHE:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/ResourceBundleWrapper;",
            "Lcom/ibm/icu/impl/ResourceBundleWrapper$Loader;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z


# instance fields
.field private baseName:Ljava/lang/String;

.field private bundle:Ljava/util/ResourceBundle;

.field private keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localeID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/ibm/icu/impl/ResourceBundleWrapper$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ResourceBundleWrapper$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->BUNDLE_CACHE:Lcom/ibm/icu/impl/CacheBase;

    .line 114
    const-string/jumbo v0, "resourceBundleWrapper"

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Ljava/util/ResourceBundle;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/ibm/icu/util/UResourceBundle;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    .line 31
    iput-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ResourceBundle;Lcom/ibm/icu/impl/ResourceBundleWrapper$1;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/ResourceBundleWrapper;-><init>(Ljava/util/ResourceBundle;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ResourceBundleWrapper;
    .locals 1

    .prologue
    .line 29
    invoke-static {p0, p1, p2, p3, p4}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ResourceBundleWrapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/ibm/icu/impl/ResourceBundleWrapper;Ljava/util/ResourceBundle;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->setParent(Ljava/util/ResourceBundle;)V

    return-void
.end method

.method static synthetic access$402(Lcom/ibm/icu/impl/ResourceBundleWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/ibm/icu/impl/ResourceBundleWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/ibm/icu/impl/ResourceBundleWrapper;Ljava/util/ResourceBundle;)V
    .locals 0

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->setParent(Ljava/util/ResourceBundle;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->localeIDStartsWithLangSubtag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/ibm/icu/impl/ResourceBundleWrapper;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->initKeysVector()V

    return-void
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ResourceBundleWrapper;
    .locals 4

    .prologue
    .line 120
    if-nez p2, :cond_0

    .line 121
    invoke-static {}, Lcom/ibm/icu/impl/ClassLoaderUtil;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 124
    :cond_0
    if-eqz p3, :cond_2

    .line 125
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ResourceBundleWrapper;

    move-result-object v0

    .line 130
    :goto_0
    if-nez v0, :cond_3

    .line 131
    const-string/jumbo v0, "_"

    .line 132
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 133
    const-string/jumbo v0, "/"

    .line 135
    :cond_1
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not find the bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-direct {v1, v0, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 127
    :cond_2
    invoke-static {}, Lcom/ibm/icu/util/ULocale;->getDefault()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ResourceBundleWrapper;

    move-result-object v0

    goto :goto_0

    .line 137
    :cond_3
    return-object v0
.end method

.method private initKeysVector()V
    .locals 4

    .prologue
    .line 80
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    move-object v1, p0

    .line 82
    :goto_0
    if-eqz v1, :cond_2

    .line 83
    iget-object v0, v1, Lcom/ibm/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    .line 84
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    iget-object v3, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {v1}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->getParent()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;

    move-object v1, v0

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    return-void
.end method

.method private static instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Lcom/ibm/icu/impl/ResourceBundleWrapper;
    .locals 9

    .prologue
    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v6, p0

    .line 150
    :goto_0
    if-eqz p4, :cond_1

    move-object v7, v6

    .line 151
    :goto_1
    sget-object v8, Lcom/ibm/icu/impl/ResourceBundleWrapper;->BUNDLE_CACHE:Lcom/ibm/icu/impl/CacheBase;

    new-instance v0, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/impl/ResourceBundleWrapper$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/lang/String;)V

    invoke-virtual {v8, v7, v0}, Lcom/ibm/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;

    return-object v0

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_1
.end method

.method private static localeIDStartsWithLangSubtag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
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

    .line 141
    :goto_0
    return v0

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getBaseName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

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
    .line 76
    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->keys:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected getLocaleID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/ibm/icu/util/UResourceBundle;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->parent:Ljava/util/ResourceBundle;

    check-cast v0, Lcom/ibm/icu/util/UResourceBundle;

    return-object v0
.end method

.method public getULocale()Lcom/ibm/icu/util/ULocale;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    iget-object v1, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->localeID:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 54
    .line 55
    const/4 v1, 0x0

    move-object v0, p0

    .line 56
    :goto_0
    if-eqz v0, :cond_1

    .line 58
    :try_start_0
    iget-object v2, v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v2, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_1
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t find resource for bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ibm/icu/impl/ResourceBundleWrapper;->baseName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 60
    :catch_0
    move-exception v2

    .line 61
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ResourceBundleWrapper;->getParent()Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ResourceBundleWrapper;

    goto :goto_0

    .line 71
    :cond_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
