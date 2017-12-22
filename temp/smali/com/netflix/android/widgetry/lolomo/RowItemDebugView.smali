.class Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;
.super Landroid/widget/FrameLayout;
.source "RowItemDebugView.java"


# static fields
.field private static final DISPLAY_STATE_COUNT:I = 0x5

.field private static final LINE_HEIGHT:I = 0x28

.field private static final sContextUsed:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lastCalls:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugPaint:Landroid/text/TextPaint;

.field private operation:I

.field private final sViewHolderNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->sContextUsed:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->lastCalls:Ljava/util/LinkedList;

    .line 35
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->mDebugPaint:Landroid/text/TextPaint;

    .line 36
    iput v3, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->operation:I

    .line 40
    sget-object v0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->sContextUsed:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 41
    if-nez v0, :cond_0

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 44
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->sViewHolderNumber:I

    .line 45
    sget-object v1, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->sContextUsed:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->mDebugPaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 47
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->mDebugPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->mDebugPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 49
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->mDebugPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 50
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->mDebugPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x40800000    # 4.0f

    iget-object v2, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->mDebugPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 51
    invoke-virtual {p0, v3}, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->setWillNotDraw(Z)V

    .line 52
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->lastCalls:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->operation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 53
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->operation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->operation:I

    .line 54
    return-void
.end method

.method private invalidateStack()V
    .locals 2

    .prologue
    .line 87
    :goto_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->lastCalls:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->lastCalls:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->invalidate()V

    .line 91
    iget v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->operation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->operation:I

    .line 92
    return-void
.end method


# virtual methods
.method public onBindViewHolder()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->lastCalls:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->operation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". onBindViewHolder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 73
    invoke-direct {p0}, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->invalidateStack()V

    .line 74
    return-void
.end method

.method public onDrawForeground(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    .line 96
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDrawForeground(Landroid/graphics/Canvas;)V

    .line 97
    const/16 v0, 0x28

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ViewHolder #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->sViewHolderNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->mDebugPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v5, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    const/16 v0, 0x50

    .line 100
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->lastCalls:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    int-to-float v3, v1

    iget-object v4, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->mDebugPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v5, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 102
    add-int/lit8 v0, v1, 0x28

    move v1, v0

    .line 103
    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method public onFailedToRecycleView()V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->lastCalls:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->operation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". onFailedToRecycleView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 78
    invoke-direct {p0}, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->invalidateStack()V

    .line 79
    return-void
.end method

.method public onLayoutCoverView()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->lastCalls:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->operation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". onLayoutCoverView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 83
    invoke-direct {p0}, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->invalidateStack()V

    .line 84
    return-void
.end method

.method public onViewAttachedToWindow()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->lastCalls:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->operation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". onViewAttachedToWindow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 58
    invoke-direct {p0}, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->invalidateStack()V

    .line 59
    return-void
.end method

.method public onViewDetachedFromWindow()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->lastCalls:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->operation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". onViewDetachedFromWindow"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0}, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->invalidateStack()V

    .line 64
    return-void
.end method

.method public onViewRecycled()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->lastCalls:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->operation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". onViewRecycled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0}, Lcom/netflix/android/widgetry/lolomo/RowItemDebugView;->invalidateStack()V

    .line 69
    return-void
.end method
