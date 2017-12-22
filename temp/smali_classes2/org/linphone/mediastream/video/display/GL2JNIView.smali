.class public Lorg/linphone/mediastream/video/display/GL2JNIView;
.super Landroid/opengl/GLSurfaceView;
.source "GL2JNIView.java"


# static fields
.field private static final DEBUG:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-direct {p0, v0, v0, v0}, Lorg/linphone/mediastream/video/display/GL2JNIView;->init(ZII)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0, v0, v0, v0}, Lorg/linphone/mediastream/video/display/GL2JNIView;->init(ZII)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZII)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0, p2, p3, p4}, Lorg/linphone/mediastream/video/display/GL2JNIView;->init(ZII)V

    .line 49
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0, p1}, Lorg/linphone/mediastream/video/display/GL2JNIView;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 96
    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lorg/linphone/mediastream/Log;->e([Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method private init(ZII)V
    .locals 7

    .prologue
    const/4 v5, 0x5

    const/16 v1, 0x8

    .line 58
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lorg/linphone/mediastream/video/display/GL2JNIView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 65
    :cond_0
    new-instance v0, Lorg/linphone/mediastream/video/display/GL2JNIView$ContextFactory;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/linphone/mediastream/video/display/GL2JNIView$ContextFactory;-><init>(Lorg/linphone/mediastream/video/display/GL2JNIView$1;)V

    invoke-virtual {p0, v0}, Lorg/linphone/mediastream/video/display/GL2JNIView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 72
    if-eqz p1, :cond_1

    new-instance v0, Lorg/linphone/mediastream/video/display/GL2JNIView$ConfigChooser;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/linphone/mediastream/video/display/GL2JNIView$ConfigChooser;-><init>(IIIIII)V

    :goto_0
    invoke-virtual {p0, v0}, Lorg/linphone/mediastream/video/display/GL2JNIView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 75
    return-void

    .line 72
    :cond_1
    new-instance v0, Lorg/linphone/mediastream/video/display/GL2JNIView$ConfigChooser;

    const/4 v2, 0x6

    const/4 v4, 0x0

    move v1, v5

    move v3, v5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/linphone/mediastream/video/display/GL2JNIView$ConfigChooser;-><init>(IIIIII)V

    goto :goto_0
.end method
