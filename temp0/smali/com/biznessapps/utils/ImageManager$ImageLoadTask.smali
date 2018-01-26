.class Lcom/biznessapps/utils/ImageManager$ImageLoadTask;
.super Landroid/os/AsyncTask;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private haslosedView:Z

.field private isLightWeightImage:Z

.field private loadCallback:Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;

.field final synthetic this$0:Lcom/biznessapps/utils/ImageManager;

.field private tint:Lcom/biznessapps/utils/ImageManager$TintContainer;

.field private url:Ljava/lang/String;

.field private viewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/biznessapps/utils/ImageManager;Landroid/view/View;Lcom/biznessapps/utils/ImageManager$TintContainer;Z)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "tint"    # Lcom/biznessapps/utils/ImageManager$TintContainer;
    .param p4, "isLightWeightImage"    # Z

    .prologue
    .line 422
    iput-object p1, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->this$0:Lcom/biznessapps/utils/ImageManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 423
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->viewReference:Ljava/lang/ref/WeakReference;

    .line 424
    iput-object p3, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->tint:Lcom/biznessapps/utils/ImageManager$TintContainer;

    .line 425
    iput-boolean p4, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->isLightWeightImage:Z

    .line 426
    return-void
.end method

.method public constructor <init>(Lcom/biznessapps/utils/ImageManager;Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;)V
    .locals 0
    .param p2, "loadCallback"    # Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->this$0:Lcom/biznessapps/utils/ImageManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 429
    iput-object p2, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->loadCallback:Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;

    .line 430
    return-void
.end method

.method public constructor <init>(Lcom/biznessapps/utils/ImageManager;Z)V
    .locals 0
    .param p2, "isLightWeightImage"    # Z

    .prologue
    .line 432
    iput-object p1, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->this$0:Lcom/biznessapps/utils/ImageManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 433
    iput-boolean p2, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->isLightWeightImage:Z

    .line 434
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 454
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->url:Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->this$0:Lcom/biznessapps/utils/ImageManager;

    iget-object v1, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/utils/ImageManager;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 409
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->viewReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->viewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 460
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->this$0:Lcom/biznessapps/utils/ImageManager;

    iget-object v2, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->url:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->isLightWeightImage:Z

    invoke-virtual {v1, p1, v2, v3}, Lcom/biznessapps/utils/ImageManager;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    .line 464
    iget-boolean v1, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->haslosedView:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->viewReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->viewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 466
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 467
    iget-object v1, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->tint:Lcom/biznessapps/utils/ImageManager$TintContainer;

    if-eqz v1, :cond_2

    .line 468
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->tint:Lcom/biznessapps/utils/ImageManager$TintContainer;

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ImageManager;->access$300(Landroid/graphics/drawable/Drawable;Lcom/biznessapps/utils/ImageManager$TintContainer;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 475
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->loadCallback:Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;

    if-eqz v1, :cond_1

    .line 476
    iget-object v1, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->loadCallback:Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;

    iget-object v2, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->url:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;->onPostImageLoading(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 478
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->this$0:Lcom/biznessapps/utils/ImageManager;

    iget-object v2, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->url:Ljava/lang/String;

    invoke-static {v1, p0, v2}, Lcom/biznessapps/utils/ImageManager;->access$400(Lcom/biznessapps/utils/ImageManager;Lcom/biznessapps/utils/ImageManager$ImageLoadTask;Ljava/lang/String;)V

    .line 479
    return-void

    .line 470
    .restart local v0    # "view":Landroid/view/View;
    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 409
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 446
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 447
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->loadCallback:Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->loadCallback:Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;

    invoke-interface {v0}, Lcom/biznessapps/utils/ImageManager$ImageLoadCallback;->onPreImageLoading()V

    .line 450
    :cond_0
    return-void
.end method

.method public setHasLosedView(Z)V
    .locals 0
    .param p1, "haslosedView"    # Z

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;->haslosedView:Z

    .line 438
    return-void
.end method
