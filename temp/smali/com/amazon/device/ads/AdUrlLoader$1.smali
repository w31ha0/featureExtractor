.class Lcom/amazon/device/ads/AdUrlLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdUrlLoader;

.field final synthetic val$callback:Lcom/amazon/device/ads/PreloadCallback;

.field final synthetic val$shouldPreload:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdUrlLoader;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/amazon/device/ads/AdUrlLoader$1;->this$0:Lcom/amazon/device/ads/AdUrlLoader;

    iput-object p2, p0, Lcom/amazon/device/ads/AdUrlLoader$1;->val$url:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/amazon/device/ads/AdUrlLoader$1;->val$shouldPreload:Z

    iput-object p4, p0, Lcom/amazon/device/ads/AdUrlLoader$1;->val$callback:Lcom/amazon/device/ads/PreloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/amazon/device/ads/AdUrlLoader$1;->this$0:Lcom/amazon/device/ads/AdUrlLoader;

    iget-object v1, p0, Lcom/amazon/device/ads/AdUrlLoader$1;->val$url:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/amazon/device/ads/AdUrlLoader$1;->val$shouldPreload:Z

    iget-object v3, p0, Lcom/amazon/device/ads/AdUrlLoader$1;->val$callback:Lcom/amazon/device/ads/PreloadCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/device/ads/AdUrlLoader;->access$000(Lcom/amazon/device/ads/AdUrlLoader;Ljava/lang/String;ZLcom/amazon/device/ads/PreloadCallback;)V

    .line 78
    return-void
.end method
