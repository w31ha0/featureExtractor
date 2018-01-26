.class final Lcom/biznessapps/layout/views/scanning/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/biznessapps/layout/views/scanning/DecodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/layout/views/scanning/DecodeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "activity"    # Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/layout/views/scanning/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 45
    iget-object v0, p0, Lcom/biznessapps/layout/views/scanning/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Hashtable;)V

    .line 46
    iput-object p1, p0, Lcom/biznessapps/layout/views/scanning/DecodeHandler;->activity:Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;

    .line 47
    return-void
.end method

.method private decode([BII)V
    .locals 16
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 72
    .local v10, "start":J
    const/4 v8, 0x0

    .line 73
    .local v8, "rawResult":Lcom/google/zxing/Result;
    invoke-static {}, Lcom/biznessapps/layout/views/scanning/CameraManager;->get()Lcom/biznessapps/layout/views/scanning/CameraManager;

    move-result-object v12

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2}, Lcom/biznessapps/layout/views/scanning/CameraManager;->buildLuminanceSource([BII)Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;

    move-result-object v9

    .line 75
    .local v9, "source":Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;
    new-instance v3, Lcom/google/zxing/BinaryBitmap;

    new-instance v12, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v12, v9}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v3, v12}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 77
    .local v3, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/biznessapps/layout/views/scanning/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v12, v3}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 81
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/biznessapps/layout/views/scanning/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v12}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 84
    :goto_0
    if-eqz v8, :cond_0

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 86
    .local v5, "end":J
    sget-object v12, Lcom/biznessapps/layout/views/scanning/DecodeHandler;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Found barcode ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sub-long v14, v5, v10

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ms):\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/biznessapps/layout/views/scanning/DecodeHandler;->activity:Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;

    invoke-virtual {v12}, Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v12

    sget v13, Lcom/biznessapps/layout/R$id;->decode_succeeded:I

    invoke-static {v12, v13, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 89
    .local v7, "message":Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v12, "barcode_bitmap"

    invoke-virtual {v9}, Lcom/biznessapps/layout/views/scanning/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    invoke-virtual {v7, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 100
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "end":J
    :goto_1
    return-void

    .line 78
    .end local v7    # "message":Landroid/os/Message;
    :catch_0
    move-exception v12

    .line 81
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/biznessapps/layout/views/scanning/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v12}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/biznessapps/layout/views/scanning/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v13}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v12

    .line 97
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/biznessapps/layout/views/scanning/DecodeHandler;->activity:Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;

    invoke-virtual {v12}, Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v12

    sget v13, Lcom/biznessapps/layout/R$id;->decode_failed:I

    invoke-static {v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 98
    .restart local v7    # "message":Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/biznessapps/layout/R$id;->decode:I

    if-ne v0, v1, :cond_1

    .line 55
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/biznessapps/layout/views/scanning/DecodeHandler;->decode([BII)V

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/biznessapps/layout/R$id;->quit:I

    if-ne v0, v1, :cond_0

    .line 57
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method
