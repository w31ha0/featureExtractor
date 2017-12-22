.class final Lcom/ibm/icu/impl/number/Format$2;
.super Ljava/lang/ThreadLocal;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/ibm/icu/impl/number/ModifierHolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lcom/ibm/icu/impl/number/ModifierHolder;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/ibm/icu/impl/number/ModifierHolder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/ModifierHolder;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/Format$2;->initialValue()Lcom/ibm/icu/impl/number/ModifierHolder;

    move-result-object v0

    return-object v0
.end method
