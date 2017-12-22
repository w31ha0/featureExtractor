.class final Lcom/ibm/icu/text/Normalizer$NFCMode;
.super Lcom/ibm/icu/text/Normalizer$Mode;
.source "Normalizer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer$Mode;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/Normalizer$1;)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/ibm/icu/text/Normalizer$NFCMode;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNormalizer2(I)Lcom/ibm/icu/text/Normalizer2;
    .locals 1

    .prologue
    .line 269
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_0

    .line 270
    invoke-static {}, Lcom/ibm/icu/text/Normalizer$NFC32ModeImpl;->access$700()Lcom/ibm/icu/text/Normalizer$ModeImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/Normalizer$ModeImpl;->access$300(Lcom/ibm/icu/text/Normalizer$ModeImpl;)Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    .line 269
    :goto_0
    return-object v0

    .line 270
    :cond_0
    invoke-static {}, Lcom/ibm/icu/text/Normalizer$NFCModeImpl;->access$800()Lcom/ibm/icu/text/Normalizer$ModeImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/text/Normalizer$ModeImpl;->access$300(Lcom/ibm/icu/text/Normalizer$ModeImpl;)Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    goto :goto_0
.end method
