.class public abstract Lcom/ibm/icu/impl/number/Format;
.super Ljava/lang/Object;
.source "Format.java"


# static fields
.field protected static final threadLocalModifierHolder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/ibm/icu/impl/number/ModifierHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected static final threadLocalStringBuilder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/ibm/icu/impl/number/NumberStringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/ibm/icu/impl/number/Format$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Format$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/Format;->threadLocalStringBuilder:Ljava/lang/ThreadLocal;

    .line 24
    new-instance v0, Lcom/ibm/icu/impl/number/Format$2;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/Format$2;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/Format;->threadLocalModifierHolder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
