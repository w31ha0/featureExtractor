.class Lcom/biznessapps/activities/HomeScreenActivity$2;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"

# interfaces
.implements Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/activities/HomeScreenActivity;->setRootBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/activities/HomeScreenActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/activities/HomeScreenActivity;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/biznessapps/activities/HomeScreenActivity$2;->this$0:Lcom/biznessapps/activities/HomeScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostImageLoading(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 237
    iget-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity$2;->this$0:Lcom/biznessapps/activities/HomeScreenActivity;

    invoke-static {v1}, Lcom/biznessapps/activities/HomeScreenActivity;->access$100(Lcom/biznessapps/activities/HomeScreenActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity$2;->this$0:Lcom/biznessapps/activities/HomeScreenActivity;

    invoke-virtual {v1}, Lcom/biznessapps/activities/HomeScreenActivity;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 240
    :cond_0
    if-eqz p2, :cond_1

    .line 241
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 242
    .local v0, "bitmapDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity$2;->this$0:Lcom/biznessapps/activities/HomeScreenActivity;

    invoke-static {v1}, Lcom/biznessapps/activities/HomeScreenActivity;->access$200(Lcom/biznessapps/activities/HomeScreenActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity$2;->this$0:Lcom/biznessapps/activities/HomeScreenActivity;

    invoke-static {v1}, Lcom/biznessapps/activities/HomeScreenActivity;->access$200(Lcom/biznessapps/activities/HomeScreenActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    .end local v0    # "bitmapDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public onPreImageLoading()V
    .locals 2

    .prologue
    .line 229
    iget-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity$2;->this$0:Lcom/biznessapps/activities/HomeScreenActivity;

    invoke-static {v1}, Lcom/biznessapps/activities/HomeScreenActivity;->access$100(Lcom/biznessapps/activities/HomeScreenActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity$2;->this$0:Lcom/biznessapps/activities/HomeScreenActivity;

    invoke-virtual {v1}, Lcom/biznessapps/activities/HomeScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getProgressBar(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 231
    .local v0, "progressBar":Landroid/view/View;
    iget-object v1, p0, Lcom/biznessapps/activities/HomeScreenActivity$2;->this$0:Lcom/biznessapps/activities/HomeScreenActivity;

    invoke-virtual {v1}, Lcom/biznessapps/activities/HomeScreenActivity;->getProgressBarContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 233
    .end local v0    # "progressBar":Landroid/view/View;
    :cond_0
    return-void
.end method
