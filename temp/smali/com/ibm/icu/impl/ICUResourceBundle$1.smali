.class final Lcom/ibm/icu/impl/ICUResourceBundle$1;
.super Lcom/ibm/icu/impl/SoftCache;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/ibm/icu/impl/ICUResourceBundle;",
        "Lcom/ibm/icu/impl/ICUResourceBundle$Loader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Lcom/ibm/icu/impl/ICUResourceBundle$Loader;)Lcom/ibm/icu/impl/ICUResourceBundle;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p2}, Lcom/ibm/icu/impl/ICUResourceBundle$Loader;->load()Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/ibm/icu/impl/ICUResourceBundle$Loader;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/ICUResourceBundle$1;->createInstance(Ljava/lang/String;Lcom/ibm/icu/impl/ICUResourceBundle$Loader;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    return-object v0
.end method
