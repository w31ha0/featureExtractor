.class Lcom/mobfox/sdk/nativeads/NativeAd$2;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Lcom/mobfox/sdk/networking/AsyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/nativeads/NativeAd;->fireTrackers(Landroid/content/Context;Lcom/mobfox/sdk/nativeads/NativeAd$FireTrackersCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/nativeads/NativeAd;

.field final synthetic val$cb:Lcom/mobfox/sdk/nativeads/NativeAd$FireTrackersCallback;

.field final synthetic val$t:Lcom/mobfox/sdk/nativeads/Tracker;

.field final synthetic val$trackersLeft:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/nativeads/NativeAd;Lcom/mobfox/sdk/nativeads/Tracker;Ljava/util/concurrent/CountDownLatch;Lcom/mobfox/sdk/nativeads/NativeAd$FireTrackersCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/nativeads/NativeAd;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/NativeAd$2;->this$0:Lcom/mobfox/sdk/nativeads/NativeAd;

    iput-object p2, p0, Lcom/mobfox/sdk/nativeads/NativeAd$2;->val$t:Lcom/mobfox/sdk/nativeads/Tracker;

    iput-object p3, p0, Lcom/mobfox/sdk/nativeads/NativeAd$2;->val$trackersLeft:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lcom/mobfox/sdk/nativeads/NativeAd$2;->val$cb:Lcom/mobfox/sdk/nativeads/NativeAd$FireTrackersCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/Object;Ljava/util/Map;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "response"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v0, "MobFoxNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fired tracker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mobfox/sdk/nativeads/NativeAd$2;->val$t:Lcom/mobfox/sdk/nativeads/Tracker;

    invoke-virtual {v2}, Lcom/mobfox/sdk/nativeads/Tracker;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd$2;->val$trackersLeft:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 102
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd$2;->val$cb:Lcom/mobfox/sdk/nativeads/NativeAd$FireTrackersCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd$2;->val$trackersLeft:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd$2;->val$cb:Lcom/mobfox/sdk/nativeads/NativeAd$FireTrackersCallback;

    invoke-interface {v0}, Lcom/mobfox/sdk/nativeads/NativeAd$FireTrackersCallback;->onComplete()V

    .line 105
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd$2;->val$trackersLeft:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 110
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd$2;->val$cb:Lcom/mobfox/sdk/nativeads/NativeAd$FireTrackersCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd$2;->val$trackersLeft:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeAd$2;->val$cb:Lcom/mobfox/sdk/nativeads/NativeAd$FireTrackersCallback;

    invoke-interface {v0}, Lcom/mobfox/sdk/nativeads/NativeAd$FireTrackersCallback;->onComplete()V

    .line 114
    :cond_0
    return-void
.end method
