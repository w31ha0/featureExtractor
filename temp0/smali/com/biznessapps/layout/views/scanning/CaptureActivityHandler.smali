.class public final Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;

.field private final decodeThread:Lcom/biznessapps/layout/views/scanning/DecodeThread;

.field private state:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;
    .param p3, "characterSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->activity:Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;

    .line 58
    new-instance v0, Lcom/biznessapps/layout/views/scanning/DecodeThread;

    new-instance v1, Lcom/biznessapps/layout/views/scanning/ViewfinderResultPointCallback;

    invoke-virtual {p1}, Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;->getViewfinderView()Lcom/biznessapps/layout/views/scanning/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/biznessapps/layout/views/scanning/ViewfinderResultPointCallback;-><init>(Lcom/biznessapps/layout/views/scanning/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/biznessapps/layout/views/scanning/DecodeThread;-><init>(Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->decodeThread:Lcom/biznessapps/layout/views/scanning/DecodeThread;

    .line 60
    iget-object v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->decodeThread:Lcom/biznessapps/layout/views/scanning/DecodeThread;

    invoke-virtual {v0}, Lcom/biznessapps/layout/views/scanning/DecodeThread;->start()V

    .line 61
    sget-object v0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;->SUCCESS:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->state:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;

    .line 64
    invoke-static {}, Lcom/biznessapps/layout/views/scanning/CameraManager;->get()Lcom/biznessapps/layout/views/scanning/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/layout/views/scanning/CameraManager;->startPreview()V

    .line 65
    invoke-direct {p0}, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 66
    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->state:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;

    sget-object v1, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;->SUCCESS:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 131
    sget-object v0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;->PREVIEW:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->state:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;

    .line 132
    invoke-static {}, Lcom/biznessapps/layout/views/scanning/CameraManager;->get()Lcom/biznessapps/layout/views/scanning/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->decodeThread:Lcom/biznessapps/layout/views/scanning/DecodeThread;

    invoke-virtual {v1}, Lcom/biznessapps/layout/views/scanning/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$id;->decode:I

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/layout/views/scanning/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 133
    invoke-static {}, Lcom/biznessapps/layout/views/scanning/CameraManager;->get()Lcom/biznessapps/layout/views/scanning/CameraManager;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$id;->auto_focus:I

    invoke-virtual {v0, p0, v1}, Lcom/biznessapps/layout/views/scanning/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 134
    iget-object v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->activity:Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;

    invoke-virtual {v0}, Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;->drawViewfinder()V

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 73
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/biznessapps/layout/R$id;->auto_focus:I

    if-ne v4, v5, :cond_1

    .line 77
    iget-object v4, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->state:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;

    sget-object v5, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;->PREVIEW:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;

    if-ne v4, v5, :cond_0

    .line 78
    invoke-static {}, Lcom/biznessapps/layout/views/scanning/CameraManager;->get()Lcom/biznessapps/layout/views/scanning/CameraManager;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$id;->auto_focus:I

    invoke-virtual {v4, p0, v5}, Lcom/biznessapps/layout/views/scanning/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/biznessapps/layout/R$id;->restart_preview:I

    if-ne v4, v5, :cond_2

    .line 81
    sget-object v4, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got restart preview message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-direct {p0}, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 83
    :cond_2
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/biznessapps/layout/R$id;->decode_succeeded:I

    if-ne v4, v5, :cond_4

    .line 84
    sget-object v4, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got decode succeeded message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v4, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;->SUCCESS:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;

    iput-object v4, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->state:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;

    .line 86
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 87
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 89
    .local v0, "barcode":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v5, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->activity:Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/zxing/Result;

    invoke-virtual {v5, v4, v0}, Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 87
    .end local v0    # "barcode":Landroid/graphics/Bitmap;
    :cond_3
    const-string v4, "barcode_bitmap"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v0, v4

    goto :goto_1

    .line 90
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_4
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/biznessapps/layout/R$id;->decode_failed:I

    if-ne v4, v5, :cond_5

    .line 92
    sget-object v4, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;->PREVIEW:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;

    iput-object v4, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->state:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;

    .line 93
    invoke-static {}, Lcom/biznessapps/layout/views/scanning/CameraManager;->get()Lcom/biznessapps/layout/views/scanning/CameraManager;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->decodeThread:Lcom/biznessapps/layout/views/scanning/DecodeThread;

    invoke-virtual {v5}, Lcom/biznessapps/layout/views/scanning/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$id;->decode:I

    invoke-virtual {v4, v5, v6}, Lcom/biznessapps/layout/views/scanning/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    .line 94
    :cond_5
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/biznessapps/layout/R$id;->return_scan_result:I

    if-ne v4, v5, :cond_6

    .line 95
    sget-object v4, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got return scan result message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v5, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->activity:Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;

    const/4 v6, -0x1

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v5, v6, v4}, Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 97
    iget-object v4, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->activity:Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;

    invoke-virtual {v4}, Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;->finish()V

    goto :goto_0

    .line 98
    :cond_6
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/biznessapps/layout/R$id;->launch_product_query:I

    if-ne v4, v5, :cond_0

    .line 99
    sget-object v4, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got product query message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 101
    .local v3, "url":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x80000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    iget-object v4, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->activity:Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;

    invoke-virtual {v4, v2}, Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public quitSynchronously()V
    .locals 3

    .prologue
    .line 111
    sget-object v1, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;->DONE:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;

    iput-object v1, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->state:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler$State;

    .line 112
    invoke-static {}, Lcom/biznessapps/layout/views/scanning/CameraManager;->get()Lcom/biznessapps/layout/views/scanning/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/layout/views/scanning/CameraManager;->stopPreview()V

    .line 113
    iget-object v1, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->decodeThread:Lcom/biznessapps/layout/views/scanning/DecodeThread;

    invoke-virtual {v1}, Lcom/biznessapps/layout/views/scanning/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$id;->quit:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 114
    .local v0, "quit":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->decodeThread:Lcom/biznessapps/layout/views/scanning/DecodeThread;

    invoke-virtual {v1}, Lcom/biznessapps/layout/views/scanning/DecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    sget v1, Lcom/biznessapps/layout/R$id;->decode_succeeded:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->removeMessages(I)V

    .line 123
    sget v1, Lcom/biznessapps/layout/R$id;->decode_failed:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->removeMessages(I)V

    .line 124
    return-void

    .line 117
    :catch_0
    move-exception v1

    goto :goto_0
.end method
