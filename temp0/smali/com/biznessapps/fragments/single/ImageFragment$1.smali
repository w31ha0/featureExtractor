.class Lcom/biznessapps/fragments/single/ImageFragment$1;
.super Ljava/lang/Object;
.source "ImageFragment.java"

# interfaces
.implements Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/ImageFragment;->setImageBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/ImageFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/ImageFragment;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/biznessapps/fragments/single/ImageFragment$1;->this$0:Lcom/biznessapps/fragments/single/ImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostImageLoading(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 60
    iget-object v1, p0, Lcom/biznessapps/fragments/single/ImageFragment$1;->this$0:Lcom/biznessapps/fragments/single/ImageFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/single/ImageFragment;->access$000(Lcom/biznessapps/fragments/single/ImageFragment;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 61
    if-eqz p2, :cond_0

    .line 62
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 63
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/biznessapps/fragments/single/ImageFragment$1;->this$0:Lcom/biznessapps/fragments/single/ImageFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/single/ImageFragment;->access$100(Lcom/biznessapps/fragments/single/ImageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/biznessapps/fragments/single/ImageFragment$1;->this$0:Lcom/biznessapps/fragments/single/ImageFragment;

    invoke-static {v1}, Lcom/biznessapps/fragments/single/ImageFragment;->access$100(Lcom/biznessapps/fragments/single/ImageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    .end local v0    # "bitmapDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public onPreImageLoading()V
    .locals 3

    .prologue
    .line 51
    iget-object v2, p0, Lcom/biznessapps/fragments/single/ImageFragment$1;->this$0:Lcom/biznessapps/fragments/single/ImageFragment;

    invoke-virtual {v2}, Lcom/biznessapps/fragments/single/ImageFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v0

    .line 52
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->getImageProgressBar(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 54
    .local v1, "progressBar":Landroid/view/View;
    iget-object v2, p0, Lcom/biznessapps/fragments/single/ImageFragment$1;->this$0:Lcom/biznessapps/fragments/single/ImageFragment;

    invoke-static {v2}, Lcom/biznessapps/fragments/single/ImageFragment;->access$000(Lcom/biznessapps/fragments/single/ImageFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    .end local v1    # "progressBar":Landroid/view/View;
    :cond_0
    return-void
.end method
