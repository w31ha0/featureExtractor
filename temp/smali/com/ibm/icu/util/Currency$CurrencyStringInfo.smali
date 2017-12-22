.class public final Lcom/ibm/icu/util/Currency$CurrencyStringInfo;
.super Ljava/lang/Object;
.source "Currency.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private currencyString:Ljava/lang/String;

.field private isoCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    iput-object p1, p0, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->isoCode:Ljava/lang/String;

    .line 772
    iput-object p2, p0, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->currencyString:Ljava/lang/String;

    .line 773
    return-void
.end method


# virtual methods
.method public getISOCode()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 781
    iget-object v0, p0, Lcom/ibm/icu/util/Currency$CurrencyStringInfo;->isoCode:Ljava/lang/String;

    return-object v0
.end method
