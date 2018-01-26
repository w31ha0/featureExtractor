.class Lcom/biznessapps/utils/ImageManager$4;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/utils/ImageManager;->downloadImageToCache(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/utils/ImageManager;

.field final synthetic val$isLightWeight:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/utils/ImageManager;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/biznessapps/utils/ImageManager$4;->this$0:Lcom/biznessapps/utils/ImageManager;

    iput-boolean p2, p0, Lcom/biznessapps/utils/ImageManager$4;->val$isLightWeight:Z

    iput-object p3, p0, Lcom/biznessapps/utils/ImageManager$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lcom/biznessapps/utils/ImageManager$4;->this$0:Lcom/biznessapps/utils/ImageManager;

    new-instance v1, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;

    iget-object v2, p0, Lcom/biznessapps/utils/ImageManager$4;->this$0:Lcom/biznessapps/utils/ImageManager;

    iget-boolean v3, p0, Lcom/biznessapps/utils/ImageManager$4;->val$isLightWeight:Z

    invoke-direct {v1, v2, v3}, Lcom/biznessapps/utils/ImageManager$ImageLoadTask;-><init>(Lcom/biznessapps/utils/ImageManager;Z)V

    iget-object v2, p0, Lcom/biznessapps/utils/ImageManager$4;->val$url:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ImageManager;->access$200(Lcom/biznessapps/utils/ImageManager;Lcom/biznessapps/utils/ImageManager$ImageLoadTask;Ljava/lang/String;)V

    .line 171
    return-void
.end method
