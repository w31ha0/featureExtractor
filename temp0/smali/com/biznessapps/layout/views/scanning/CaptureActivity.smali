.class public Lcom/biznessapps/layout/views/scanning/CaptureActivity;
.super Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;
    }
.end annotation


# static fields
.field private static final INTENT_RESULT_DURATION:J = 0x5dcL

.field public static final RESULT_CAMERA_INIT_ERROR:I = 0x64

.field public static final SCAN_RESULT:Ljava/lang/String; = "SCAN_RESULT"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Lcom/biznessapps/layout/views/scanning/InactivityTimer;

.field private lastResult:Lcom/google/zxing/Result;

.field private source:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

.field private viewfinderView:Lcom/biznessapps/layout/views/scanning/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;-><init>()V

    .line 45
    return-void
.end method

.method private static drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "a"    # Lcom/google/zxing/ResultPoint;
    .param p3, "b"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 283
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 284
    return-void
.end method

.method private drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 13
    .param p1, "barcode"    # Landroid/graphics/Bitmap;
    .param p2, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 254
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v7

    .line 255
    .local v7, "points":[Lcom/google/zxing/ResultPoint;
    if-eqz v7, :cond_0

    array-length v8, v7

    if-lez v8, :cond_0

    .line 256
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 257
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 258
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$color;->result_image_border:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    const/high16 v8, 0x40400000    # 3.0f

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 260
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 261
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-direct {v1, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 262
    .local v1, "border":Landroid/graphics/Rect;
    invoke-virtual {v2, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 264
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$color;->result_points:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    array-length v8, v7

    if-ne v8, v10, :cond_1

    .line 266
    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 267
    aget-object v8, v7, v11

    aget-object v9, v7, v12

    invoke-static {v2, v5, v8, v9}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 280
    .end local v1    # "border":Landroid/graphics/Rect;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_0
    :goto_0
    return-void

    .line 268
    .restart local v1    # "border":Landroid/graphics/Rect;
    .restart local v2    # "canvas":Landroid/graphics/Canvas;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    :cond_1
    array-length v8, v7

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v8

    sget-object v9, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v8

    sget-object v9, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 271
    :cond_3
    aget-object v8, v7, v11

    aget-object v9, v7, v12

    invoke-static {v2, v5, v8, v9}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 272
    aget-object v8, v7, v10

    const/4 v9, 0x3

    aget-object v9, v7, v9

    invoke-static {v2, v5, v8, v9}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    goto :goto_0

    .line 274
    :cond_4
    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 275
    move-object v0, v7

    .local v0, "arr$":[Lcom/google/zxing/ResultPoint;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 276
    .local v6, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    invoke-virtual {v2, v8, v9, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private handleCameraInitializationError()V
    .locals 1

    .prologue
    .line 243
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->setResult(I)V

    .line 244
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->finish()V

    .line 245
    return-void
.end method

.method private handleDecodeExternally(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 229
    iget-object v2, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->viewfinderView:Lcom/biznessapps/layout/views/scanning/ViewfinderView;

    invoke-virtual {v2, p2}, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->drawResultBitmap(Landroid/graphics/Bitmap;)V

    .line 230
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    const-string v2, "SCAN_RESULT"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v2, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->handler:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;

    sget v3, Lcom/biznessapps/layout/R$id;->return_scan_result:I

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 235
    .local v1, "message":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 236
    iget-object v2, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->handler:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v1, v3, v4}, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 237
    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 172
    :try_start_0
    invoke-static {}, Lcom/biznessapps/layout/views/scanning/CameraManager;->get()Lcom/biznessapps/layout/views/scanning/CameraManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/biznessapps/layout/views/scanning/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 184
    iget-object v2, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->handler:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;

    if-nez v2, :cond_0

    .line 185
    new-instance v2, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;

    iget-object v3, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->decodeFormats:Ljava/util/Vector;

    iget-object v4, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->characterSet:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;-><init>(Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->handler:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "ioe":Ljava/io/IOException;
    sget-object v2, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    invoke-direct {p0}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->handleCameraInitializationError()V

    goto :goto_0

    .line 177
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected error initializating camera"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    invoke-direct {p0}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->handleCameraInitializationError()V

    goto :goto_0
.end method

.method private resetStatusView()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->viewfinderView:Lcom/biznessapps/layout/views/scanning/ViewfinderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->setVisibility(I)V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 304
    return-void
.end method


# virtual methods
.method drawViewfinder()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->viewfinderView:Lcom/biznessapps/layout/views/scanning/ViewfinderView;

    invoke-virtual {v0}, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->drawViewfinder()V

    .line 289
    return-void
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->handler:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;

    return-object v0
.end method

.method getViewfinderView()Lcom/biznessapps/layout/views/scanning/ViewfinderView;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->viewfinderView:Lcom/biznessapps/layout/views/scanning/ViewfinderView;

    return-object v0
.end method

.method handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "rawResult"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->inactivityTimer:Lcom/biznessapps/layout/views/scanning/InactivityTimer;

    invoke-virtual {v0}, Lcom/biznessapps/layout/views/scanning/InactivityTimer;->onActivity()V

    .line 212
    iput-object p1, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 213
    if-nez p2, :cond_0

    .line 219
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->handleDecodeExternally(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 161
    invoke-super {p0, p1}, Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 162
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 75
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 76
    sget v1, Lcom/biznessapps/layout/R$layout;->capture_layout:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/layout/views/scanning/CameraManager;->init(Landroid/content/Context;)V

    .line 79
    sget v1, Lcom/biznessapps/layout/R$id;->viewfinder_view:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/layout/views/scanning/ViewfinderView;

    iput-object v1, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->viewfinderView:Lcom/biznessapps/layout/views/scanning/ViewfinderView;

    .line 80
    iput-object v2, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->handler:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;

    .line 81
    iput-object v2, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->hasSurface:Z

    .line 83
    new-instance v1, Lcom/biznessapps/layout/views/scanning/InactivityTimer;

    invoke-direct {v1, p0}, Lcom/biznessapps/layout/views/scanning/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->inactivityTimer:Lcom/biznessapps/layout/views/scanning/InactivityTimer;

    .line 84
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->inactivityTimer:Lcom/biznessapps/layout/views/scanning/InactivityTimer;

    invoke-virtual {v0}, Lcom/biznessapps/layout/views/scanning/InactivityTimer;->shutdown()V

    .line 127
    invoke-super {p0}, Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;->onDestroy()V

    .line 128
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 135
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 136
    iget-object v1, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->source:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    sget-object v2, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;->NATIVE_APP_INTENT:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    if-ne v1, v2, :cond_1

    .line 137
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->setResult(I)V

    .line 138
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->finish()V

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->source:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    sget-object v2, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;->NONE:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->source:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    sget-object v2, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;->ZXING_LINK:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    if-ne v1, v2, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->lastResult:Lcom/google/zxing/Result;

    if-eqz v1, :cond_4

    .line 141
    invoke-direct {p0}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->resetStatusView()V

    .line 142
    iget-object v1, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->handler:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->handler:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;

    sget v2, Lcom/biznessapps/layout/R$id;->restart_preview:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 147
    :cond_3
    const/16 v1, 0x50

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    .line 151
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;->onPause()V

    .line 117
    iget-object v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->handler:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->handler:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;

    invoke-virtual {v0}, Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;->quitSynchronously()V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->handler:Lcom/biznessapps/layout/views/scanning/CaptureActivityHandler;

    .line 121
    :cond_0
    invoke-static {}, Lcom/biznessapps/layout/views/scanning/CameraManager;->get()Lcom/biznessapps/layout/views/scanning/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/layout/views/scanning/CameraManager;->closeDriver()V

    .line 122
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 91
    invoke-super {p0}, Lcom/biznessapps/layout/views/scanning/AbstractCaptureActivity;->onResume()V

    .line 93
    invoke-direct {p0}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->resetStatusView()V

    .line 95
    sget v2, Lcom/biznessapps/layout/R$id;->preview_view:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    .line 96
    .local v1, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 97
    .local v0, "surfaceHolder":Landroid/view/SurfaceHolder;
    iget-boolean v2, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->hasSurface:Z

    if-eqz v2, :cond_0

    .line 101
    invoke-direct {p0, v0}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 109
    :goto_0
    sget-object v2, Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;->NONE:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    iput-object v2, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->source:Lcom/biznessapps/layout/views/scanning/CaptureActivity$Source;

    .line 110
    iput-object v3, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->decodeFormats:Ljava/util/Vector;

    .line 111
    iput-object v3, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 112
    return-void

    .line 105
    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 106
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 207
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_0

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->hasSurface:Z

    .line 193
    invoke-direct {p0, p1}, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 195
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/layout/views/scanning/CaptureActivity;->hasSurface:Z

    .line 200
    return-void
.end method
