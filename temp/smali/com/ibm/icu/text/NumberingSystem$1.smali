.class final Lcom/ibm/icu/text/NumberingSystem$1;
.super Lcom/ibm/icu/impl/SoftCache;
.source "NumberingSystem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/ibm/icu/text/NumberingSystem;",
        "Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;)Lcom/ibm/icu/text/NumberingSystem;
    .locals 1

    .prologue
    .line 333
    invoke-static {p2}, Lcom/ibm/icu/text/NumberingSystem;->lookupInstanceByLocale(Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 330
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/NumberingSystem$1;->createInstance(Ljava/lang/String;Lcom/ibm/icu/text/NumberingSystem$LocaleLookupData;)Lcom/ibm/icu/text/NumberingSystem;

    move-result-object v0

    return-object v0
.end method
