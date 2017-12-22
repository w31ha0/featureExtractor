.class Lcom/netflix/android/tooltips/TooltipLayout$ScrimDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TooltipLayout.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/android/tooltips/TooltipLayout;


# direct methods
.method private constructor <init>(Lcom/netflix/android/tooltips/TooltipLayout;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/netflix/android/tooltips/TooltipLayout$ScrimDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netflix/android/tooltips/TooltipLayout;Lcom/netflix/android/tooltips/TooltipLayout$1;)V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/netflix/android/tooltips/TooltipLayout$ScrimDrawable;-><init>(Lcom/netflix/android/tooltips/TooltipLayout;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 402
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 403
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$ScrimDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$ScrimDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$ScrimDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->access$600(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 404
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$ScrimDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->access$700(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$ScrimDrawable;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$800(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 405
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 406
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 420
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 411
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 416
    return-void
.end method
