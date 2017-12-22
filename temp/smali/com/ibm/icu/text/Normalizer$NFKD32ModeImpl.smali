.class final Lcom/ibm/icu/text/Normalizer$NFKD32ModeImpl;
.super Ljava/lang/Object;
.source "Normalizer.java"


# static fields
.field private static final INSTANCE:Lcom/ibm/icu/text/Normalizer$ModeImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 181
    new-instance v0, Lcom/ibm/icu/text/Normalizer$ModeImpl;

    new-instance v1, Lcom/ibm/icu/text/FilteredNormalizer2;

    .line 182
    invoke-static {}, Lcom/ibm/icu/text/Normalizer2;->getNFKDInstance()Lcom/ibm/icu/text/Normalizer2;

    move-result-object v2

    .line 183
    invoke-static {}, Lcom/ibm/icu/text/Normalizer$Unicode32;->access$100()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ibm/icu/text/FilteredNormalizer2;-><init>(Lcom/ibm/icu/text/Normalizer2;Lcom/ibm/icu/text/UnicodeSet;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/Normalizer$ModeImpl;-><init>(Lcom/ibm/icu/text/Normalizer2;Lcom/ibm/icu/text/Normalizer$1;)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer$NFKD32ModeImpl;->INSTANCE:Lcom/ibm/icu/text/Normalizer$ModeImpl;

    .line 181
    return-void
.end method

.method static synthetic access$500()Lcom/ibm/icu/text/Normalizer$ModeImpl;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/ibm/icu/text/Normalizer$NFKD32ModeImpl;->INSTANCE:Lcom/ibm/icu/text/Normalizer$ModeImpl;

    return-object v0
.end method
