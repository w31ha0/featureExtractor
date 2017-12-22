.class public final Lcom/ibm/icu/impl/Norm2AllModes;
.super Ljava/lang/Object;
.source "Norm2AllModes.java"


# static fields
.field public static final NOOP_NORMALIZER2:Lcom/ibm/icu/impl/Norm2AllModes$NoopNormalizer2;

.field private static cache:Lcom/ibm/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/impl/CacheBase",
            "<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/Norm2AllModes;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final comp:Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;

.field public final decomp:Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;

.field public final fcc:Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;

.field public final fcd:Lcom/ibm/icu/impl/Norm2AllModes$FCDNormalizer2;

.field public final impl:Lcom/ibm/icu/impl/Normalizer2Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 343
    new-instance v0, Lcom/ibm/icu/impl/Norm2AllModes$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/Norm2AllModes$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/Norm2AllModes;->cache:Lcom/ibm/icu/impl/CacheBase;

    .line 357
    new-instance v0, Lcom/ibm/icu/impl/Norm2AllModes$NoopNormalizer2;

    invoke-direct {v0}, Lcom/ibm/icu/impl/Norm2AllModes$NoopNormalizer2;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/Norm2AllModes;->NOOP_NORMALIZER2:Lcom/ibm/icu/impl/Norm2AllModes$NoopNormalizer2;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/impl/Normalizer2Impl;)V
    .locals 2

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p1, p0, Lcom/ibm/icu/impl/Norm2AllModes;->impl:Lcom/ibm/icu/impl/Normalizer2Impl;

    .line 285
    new-instance v0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl;Z)V

    iput-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes;->comp:Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;

    .line 286
    new-instance v0, Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes;->decomp:Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    .line 287
    new-instance v0, Lcom/ibm/icu/impl/Norm2AllModes$FCDNormalizer2;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/Norm2AllModes$FCDNormalizer2;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes;->fcd:Lcom/ibm/icu/impl/Norm2AllModes$FCDNormalizer2;

    .line 288
    new-instance v0, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl;Z)V

    iput-object v0, p0, Lcom/ibm/icu/impl/Norm2AllModes;->fcc:Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;

    .line 289
    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/Normalizer2Impl;Lcom/ibm/icu/impl/Norm2AllModes$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/Norm2AllModes;-><init>(Lcom/ibm/icu/impl/Normalizer2Impl;)V

    return-void
.end method

.method public static getFCDNormalizer2()Lcom/ibm/icu/text/Normalizer2;
    .locals 1

    .prologue
    .line 363
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Lcom/ibm/icu/impl/Norm2AllModes;->fcd:Lcom/ibm/icu/impl/Norm2AllModes$FCDNormalizer2;

    return-object v0
.end method

.method private static getInstanceFromSingleton(Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Lcom/ibm/icu/impl/Norm2AllModes;
    .locals 1

    .prologue
    .line 298
    invoke-static {p0}, Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->access$000(Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Ljava/lang/RuntimeException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    invoke-static {p0}, Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->access$000(Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 301
    :cond_0
    invoke-static {p0}, Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;->access$100(Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v0

    return-object v0
.end method

.method public static getN2WithImpl(I)Lcom/ibm/icu/impl/Norm2AllModes$Normalizer2WithImpl;
    .locals 1

    .prologue
    .line 314
    packed-switch p0, :pswitch_data_0

    .line 319
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 315
    :pswitch_0
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Lcom/ibm/icu/impl/Norm2AllModes;->decomp:Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    goto :goto_0

    .line 316
    :pswitch_1
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFKCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Lcom/ibm/icu/impl/Norm2AllModes;->decomp:Lcom/ibm/icu/impl/Norm2AllModes$DecomposeNormalizer2;

    goto :goto_0

    .line 317
    :pswitch_2
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Lcom/ibm/icu/impl/Norm2AllModes;->comp:Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;

    goto :goto_0

    .line 318
    :pswitch_3
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes;->getNFKCInstance()Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v0

    iget-object v0, v0, Lcom/ibm/icu/impl/Norm2AllModes;->comp:Lcom/ibm/icu/impl/Norm2AllModes$ComposeNormalizer2;

    goto :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getNFCInstance()Lcom/ibm/icu/impl/Norm2AllModes;
    .locals 1

    .prologue
    .line 304
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes$NFCSingleton;->access$200()Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/Norm2AllModes;->getInstanceFromSingleton(Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v0

    return-object v0
.end method

.method public static getNFKCInstance()Lcom/ibm/icu/impl/Norm2AllModes;
    .locals 1

    .prologue
    .line 307
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes$NFKCSingleton;->access$300()Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/Norm2AllModes;->getInstanceFromSingleton(Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v0

    return-object v0
.end method

.method public static getNFKC_CFInstance()Lcom/ibm/icu/impl/Norm2AllModes;
    .locals 1

    .prologue
    .line 310
    invoke-static {}, Lcom/ibm/icu/impl/Norm2AllModes$NFKC_CFSingleton;->access$400()Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/Norm2AllModes;->getInstanceFromSingleton(Lcom/ibm/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)Lcom/ibm/icu/impl/Norm2AllModes;

    move-result-object v0

    return-object v0
.end method
