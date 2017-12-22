.class public abstract Lcom/netflix/mediaclient/android/debug/ExternalDebugScreen;
.super Landroid/graphics/drawable/Drawable;
.source "ExternalDebugScreen.java"


# instance fields
.field private final mAttachedViews:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeasuredBounds:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/debug/ExternalDebugScreen;->mMeasuredBounds:Landroid/graphics/RectF;

    .line 40
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/android/debug/ExternalDebugScreen;->mAttachedViews:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method protected getBackgroundTint()I
    .locals 1

    .prologue
    .line 88
    const/high16 v0, -0x1000000

    return v0
.end method

.method final getMeasuredBounds()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/android/debug/ExternalDebugScreen;->mMeasuredBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, -0x3

    return v0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method public final invalidateSelf()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/android/debug/ExternalDebugScreen;->mAttachedViews:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method final onAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/android/debug/ExternalDebugScreen;->mAttachedViews:Ljava/util/WeakHashMap;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/debug/ExternalDebugScreen;->onAttachedToWindow()V

    .line 100
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method final onDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/android/debug/ExternalDebugScreen;->mAttachedViews:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/debug/ExternalDebugScreen;->onDetachedFromWindow()V

    .line 105
    return-void
.end method

.method protected abstract onMeasure(Landroid/view/View;)V
.end method

.method public final setAlpha(I)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method protected setMeasuredBounds(FF)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/android/debug/ExternalDebugScreen;->mMeasuredBounds:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/android/debug/ExternalDebugScreen;->mMeasuredBounds:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->bottom:F

    .line 69
    return-void
.end method
