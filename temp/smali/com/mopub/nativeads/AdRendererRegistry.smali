.class public Lcom/mopub/nativeads/AdRendererRegistry;
.super Ljava/lang/Object;
.source "AdRendererRegistry.java"


# instance fields
.field private final mMoPubAdRenderers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/nativeads/MoPubAdRenderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/AdRendererRegistry;->mMoPubAdRenderers:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public getAdRendererCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mopub/nativeads/AdRendererRegistry;->mMoPubAdRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRendererForAd(Lcom/mopub/nativeads/BaseNativeAd;)Lcom/mopub/nativeads/MoPubAdRenderer;
    .locals 3
    .param p1, "nativeAd"    # Lcom/mopub/nativeads/BaseNativeAd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 67
    iget-object v1, p0, Lcom/mopub/nativeads/AdRendererRegistry;->mMoPubAdRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/nativeads/MoPubAdRenderer;

    .line 68
    .local v0, "moPubAdRenderer":Lcom/mopub/nativeads/MoPubAdRenderer;
    invoke-interface {v0, p1}, Lcom/mopub/nativeads/MoPubAdRenderer;->supports(Lcom/mopub/nativeads/BaseNativeAd;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    .end local v0    # "moPubAdRenderer":Lcom/mopub/nativeads/MoPubAdRenderer;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;
    .locals 3
    .param p1, "viewType"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/mopub/nativeads/AdRendererRegistry;->mMoPubAdRenderers:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativeads/MoPubAdRenderer;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRendererIterable()Ljava/lang/Iterable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/mopub/nativeads/MoPubAdRenderer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mopub/nativeads/AdRendererRegistry;->mMoPubAdRenderers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I
    .locals 3
    .param p1, "nativeAd"    # Lcom/mopub/nativeads/NativeAd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 50
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mopub/nativeads/AdRendererRegistry;->mMoPubAdRenderers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 51
    invoke-virtual {p1}, Lcom/mopub/nativeads/NativeAd;->getMoPubAdRenderer()Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativeads/AdRendererRegistry;->mMoPubAdRenderers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 52
    add-int/lit8 v1, v0, 0x1

    .line 55
    :goto_1
    return v1

    .line 50
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .locals 1
    .param p1, "moPubAdRenderer"    # Lcom/mopub/nativeads/MoPubAdRenderer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mopub/nativeads/AdRendererRegistry;->mMoPubAdRenderers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method
