.class final Lcom/ibm/icu/text/Normalizer$NONEMode;
.super Lcom/ibm/icu/text/Normalizer$Mode;
.source "Normalizer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer$Mode;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/Normalizer$1;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer$NONEMode;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/ibm/icu/impl/Norm2AllModes;->NOOP_NORMALIZER2:Lcom/ibm/icu/impl/Norm2AllModes$NoopNormalizer2;

    return-object v0
.end method
