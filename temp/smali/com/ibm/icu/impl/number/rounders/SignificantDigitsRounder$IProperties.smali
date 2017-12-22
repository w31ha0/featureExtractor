.class public interface abstract Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;
.super Ljava/lang/Object;
.source "SignificantDigitsRounder.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/Rounder$IBasicRoundingProperties;


# static fields
.field public static final DEFAULT_SIGNIFICANT_DIGITS_MODE:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/ibm/icu/impl/number/rounders/SignificantDigitsRounder$IProperties;->DEFAULT_SIGNIFICANT_DIGITS_MODE:Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;

    return-void
.end method


# virtual methods
.method public abstract getMaximumSignificantDigits()I
.end method

.method public abstract getMinimumSignificantDigits()I
.end method

.method public abstract getSignificantDigitsMode()Lcom/ibm/icu/text/DecimalFormat$SignificantDigitsMode;
.end method
