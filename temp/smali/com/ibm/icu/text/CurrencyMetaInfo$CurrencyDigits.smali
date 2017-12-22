.class public final Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;
.super Ljava/lang/Object;
.source "CurrencyMetaInfo.java"


# instance fields
.field public final fractionDigits:I

.field public final roundingIncrement:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput p1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;->fractionDigits:I

    .line 392
    iput p2, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyDigits;->roundingIncrement:I

    .line 393
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    invoke-static {p0}, Lcom/ibm/icu/text/CurrencyMetaInfo;->access$000(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
