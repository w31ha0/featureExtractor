.class Lcom/biznessapps/utils/ImageDownloader$DownloadedDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadedDrawable"
.end annotation


# instance fields
.field private final bitmapDownloaderTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;)V
    .locals 1
    .param p1, "bitmapDownloaderTask"    # Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;

    .prologue
    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 284
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/biznessapps/utils/ImageDownloader$DownloadedDrawable;->bitmapDownloaderTaskReference:Ljava/lang/ref/WeakReference;

    .line 286
    return-void
.end method


# virtual methods
.method public getBitmapDownloaderTask()Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/biznessapps/utils/ImageDownloader$DownloadedDrawable;->bitmapDownloaderTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/utils/ImageDownloader$BitmapDownloaderTask;

    return-object v0
.end method
