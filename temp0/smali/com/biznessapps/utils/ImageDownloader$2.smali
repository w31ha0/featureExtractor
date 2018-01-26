.class Lcom/biznessapps/utils/ImageDownloader$2;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/utils/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/utils/ImageDownloader;


# direct methods
.method constructor <init>(Lcom/biznessapps/utils/ImageDownloader;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/biznessapps/utils/ImageDownloader$2;->this$0:Lcom/biznessapps/utils/ImageDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/biznessapps/utils/ImageDownloader$2;->this$0:Lcom/biznessapps/utils/ImageDownloader;

    invoke-virtual {v0}, Lcom/biznessapps/utils/ImageDownloader;->clearCache()V

    .line 329
    return-void
.end method
