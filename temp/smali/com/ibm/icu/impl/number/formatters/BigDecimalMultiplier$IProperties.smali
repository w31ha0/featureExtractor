.class public interface abstract Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;
.super Ljava/lang/Object;
.source "BigDecimalMultiplier.java"


# static fields
.field public static final DEFAULT_MULTIPLIER:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/ibm/icu/impl/number/formatters/BigDecimalMultiplier$IProperties;->DEFAULT_MULTIPLIER:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public abstract getMultiplier()Ljava/math/BigDecimal;
.end method
