.class public final Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"


# instance fields
.field baseName:Ljava/lang/String;

.field loader:Ljava/lang/ClassLoader;

.field localeID:Ljava/lang/String;

.field reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

.field topLevelKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ulocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundleReader;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p2}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 61
    iput-object p3, p0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->loader:Ljava/lang/ClassLoader;

    .line 62
    iput-object p4, p0, Lcom/ibm/icu/impl/ICUResourceBundle$WholeBundle;->reader:Lcom/ibm/icu/impl/ICUResourceBundleReader;

    .line 63
    return-void
.end method
