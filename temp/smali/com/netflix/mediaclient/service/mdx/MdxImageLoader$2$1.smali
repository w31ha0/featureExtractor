.class Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2$1;
.super Ljava/lang/Object;
.source "MdxImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;

.field final synthetic val$localFileUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2$1;->this$1:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2$1;->val$localFileUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 105
    const-string/jumbo v0, "file://"

    .line 106
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2$1;->val$localFileUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 112
    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2$1;->this$1:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->access$002(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 113
    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 116
    :cond_0
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2$1;->this$1:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->access$000(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2$1;->this$1:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->access$100(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;)Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$MdxImageLoaderInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2$1;->this$1:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$2;->this$0:Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;

    invoke-static {v1}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;->access$000(Lcom/netflix/mediaclient/service/mdx/MdxImageLoader;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/service/mdx/MdxImageLoader$MdxImageLoaderInterface;->onBitmapReady(Landroid/graphics/Bitmap;)V

    .line 128
    :cond_2
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    const-string/jumbo v1, "decode bitmap failed"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
