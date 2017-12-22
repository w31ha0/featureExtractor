.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$17;
.super Ljava/lang/Object;
.source "FalkorAgent.java"

# interfaces
.implements Lcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

.field final synthetic val$videoImagesRequest:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$17;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$17;->val$videoImagesRequest:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private countDownRequests()V
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$17;->val$videoImagesRequest:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1378
    return-void
.end method


# virtual methods
.method public onErrorResponse(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1368
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$17;->countDownRequests()V

    .line 1369
    return-void
.end method

.method public onResponse(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1373
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$17;->countDownRequests()V

    .line 1374
    return-void
.end method
