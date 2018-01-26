.class Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;
.super Landroid/os/AsyncTask;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BitmapDownloaderTask"
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
.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/biznessapps/utils/ImageDownloader;

.field private url:Ljava/lang/String;

.field private useImageReflection:Z


# direct methods
.method public constructor <init>(Lcom/biznessapps/utils/ImageDownloader;Landroid/widget/ImageView;Z)V
    .locals 1
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "useImageReflection"    # Z

    .prologue
    .line 225
    iput-object p1, p0, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->this$0:Lcom/biznessapps/utils/ImageDownloader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 226
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    .line 227
    iput-boolean p3, p0, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->useImageReflection:Z

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 235
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    .line 236
    iget-object v2, p0, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->this$0:Lcom/biznessapps/utils/ImageDownloader;

    iget-object v3, p0, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/biznessapps/utils/ImageDownloader;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-boolean v2, p0, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->useImageReflection:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 239
    iget-object v2, p0, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->this$0:Lcom/biznessapps/utils/ImageDownloader;

    invoke-static {v2, v0}, Lcom/biznessapps/utils/ImageDownloader;->access$100(Lcom/biznessapps/utils/ImageDownloader;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 243
    .local v1, "resultBitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 241
    .end local v1    # "resultBitmap":Landroid/graphics/Bitmap;
    :cond_0
    move-object v1, v0

    .restart local v1    # "resultBitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 219
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    const/4 p1, 0x0

    .line 255
    :cond_0
    if-eqz p1, :cond_1

    .line 256
    iget-object v2, p0, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->this$0:Lcom/biznessapps/utils/ImageDownloader;

    iget-object v3, p0, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->url:Ljava/lang/String;

    invoke-static {v2, v3, p1}, Lcom/biznessapps/utils/ImageDownloader;->access$200(Lcom/biznessapps/utils/ImageDownloader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 258
    iget-object v2, p0, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 260
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/biznessapps/utils/ImageDownloader;->access$300(Landroid/widget/ImageView;)Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;

    move-result-object v0

    .line 263
    .local v0, "bitmapDownloaderTask":Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;
    if-ne p0, v0, :cond_1

    .line 264
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 268
    .end local v0    # "bitmapDownloaderTask":Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 219
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
