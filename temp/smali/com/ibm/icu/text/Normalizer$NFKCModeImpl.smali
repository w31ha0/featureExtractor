.class final Lcom/ibm/icu/text/Normalizer$NFKCModeImpl;
.super Ljava/lang/Object;
.source "Normalizer.java"


# static fields
.field private static final INSTANCE:Lcom/ibm/icu/text/Normalizer$ModeImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 166
    new-instance v0, Lcom/ibm/icu/text/Normalizer$ModeImpl;

    invoke-static {}, Lcom/ibm/icu/text/Normalizer2;->getNFKCInstance()Lcom/ibm/icu/text/Normalizer2;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/Normalizer$ModeImpl;-><init>(Lcom/ibm/icu/text/Normalizer2;Lcom/ibm/icu/text/Normalizer$1;)V

    sput-object v0, Lcom/ibm/icu/text/Normalizer$NFKCModeImpl;->INSTANCE:Lcom/ibm/icu/text/Normalizer$ModeImpl;

    return-void
.end method

.method static synthetic access$1000()Lcom/ibm/icu/text/Normalizer$ModeImpl;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/ibm/icu/text/Normalizer$NFKCModeImpl;->INSTANCE:Lcom/ibm/icu/text/Normalizer$ModeImpl;

    return-object v0
.end method
