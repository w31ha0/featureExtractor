.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$12;
.super Ljava/lang/Object;
.source "CastPlayerViewsAbs.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)V
    .locals 0

    .prologue
    .line 920
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$12;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 923
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$12;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$400(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    .line 934
    :goto_0
    return-void

    .line 928
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$12;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$400(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->getCachedThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 929
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    .line 930
    const-string/jumbo v1, "MdxMiniPlayerViews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Setting thumb offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$12;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$400(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;->setThumbOffset(I)V

    .line 933
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs$12;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;->access$400(Lcom/netflix/mediaclient/ui/mdx/CastPlayerViewsAbs;)Lcom/netflix/mediaclient/android/widget/SnappableSeekBar;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netflix/mediaclient/util/ViewUtils;->removeGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
