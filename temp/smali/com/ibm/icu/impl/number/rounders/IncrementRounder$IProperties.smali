.class public interface abstract Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;
.super Ljava/lang/Object;
.source "IncrementRounder.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;


# static fields
.field public static final DEFAULT_ROUNDING_INCREMENT:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/ibm/icu/impl/number/rounders/IncrementRounder$IProperties;->DEFAULT_ROUNDING_INCREMENT:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public abstract getRoundingIncrement()Ljava/math/BigDecimal;
.end method
