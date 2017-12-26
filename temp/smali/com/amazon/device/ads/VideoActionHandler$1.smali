.class Lcom/amazon/device/ads/VideoActionHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdVideoPlayer$AdVideoPlayerListener;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/VideoActionHandler;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/VideoActionHandler;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazon/device/ads/VideoActionHandler$1;->this$0:Lcom/amazon/device/ads/VideoActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler$1;->this$0:Lcom/amazon/device/ads/VideoActionHandler;

    invoke-static {v0}, Lcom/amazon/device/ads/VideoActionHandler;->access$000(Lcom/amazon/device/ads/VideoActionHandler;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 80
    return-void
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler$1;->this$0:Lcom/amazon/device/ads/VideoActionHandler;

    invoke-static {v0}, Lcom/amazon/device/ads/VideoActionHandler;->access$000(Lcom/amazon/device/ads/VideoActionHandler;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 74
    return-void
.end method
