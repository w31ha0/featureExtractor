.class public abstract Lcom/ibm/icu/impl/CacheValue;
.super Ljava/lang/Object;
.source "CacheValue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final NULL_VALUE:Lcom/ibm/icu/impl/CacheValue;

.field private static volatile strength:Lcom/ibm/icu/impl/CacheValue$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/ibm/icu/impl/CacheValue$Strength;->SOFT:Lcom/ibm/icu/impl/CacheValue$Strength;

    sput-object v0, Lcom/ibm/icu/impl/CacheValue;->strength:Lcom/ibm/icu/impl/CacheValue$Strength;

    .line 54
    new-instance v0, Lcom/ibm/icu/impl/CacheValue$NullValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/CacheValue$NullValue;-><init>(Lcom/ibm/icu/impl/CacheValue$1;)V

    sput-object v0, Lcom/ibm/icu/impl/CacheValue;->NULL_VALUE:Lcom/ibm/icu/impl/CacheValue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static futureInstancesWillBeStrong()Z
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/ibm/icu/impl/CacheValue;->strength:Lcom/ibm/icu/impl/CacheValue$Strength;

    sget-object v1, Lcom/ibm/icu/impl/CacheValue$Strength;->STRONG:Lcom/ibm/icu/impl/CacheValue$Strength;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/ibm/icu/impl/CacheValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/ibm/icu/impl/CacheValue",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 73
    if-nez p0, :cond_0

    .line 74
    sget-object v0, Lcom/ibm/icu/impl/CacheValue;->NULL_VALUE:Lcom/ibm/icu/impl/CacheValue;

    .line 76
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ibm/icu/impl/CacheValue;->strength:Lcom/ibm/icu/impl/CacheValue$Strength;

    sget-object v1, Lcom/ibm/icu/impl/CacheValue$Strength;->STRONG:Lcom/ibm/icu/impl/CacheValue$Strength;

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/ibm/icu/impl/CacheValue$StrongValue;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/CacheValue$StrongValue;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/CacheValue$SoftValue;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/CacheValue$SoftValue;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public abstract resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation
.end method
