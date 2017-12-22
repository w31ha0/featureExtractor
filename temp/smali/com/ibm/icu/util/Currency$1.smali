.class final Lcom/ibm/icu/util/Currency$1;
.super Lcom/ibm/icu/impl/SoftCache;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ibm/icu/impl/SoftCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/ibm/icu/util/Currency;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/ibm/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Ljava/lang/Void;)Lcom/ibm/icu/util/Currency;
    .locals 1

    .prologue
    .line 239
    invoke-static {p1}, Lcom/ibm/icu/util/Currency;->access$100(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 236
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/Currency$1;->createInstance(Ljava/lang/String;Ljava/lang/Void;)Lcom/ibm/icu/util/Currency;

    move-result-object v0

    return-object v0
.end method
