.class Lorg/linphone/mediastream/video/display/GL2JNIView$ContextFactory;
.super Ljava/lang/Object;
.source "GL2JNIView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLContextFactory;


# static fields
.field private static EGL_CONTEXT_CLIENT_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x3098

    sput v0, Lorg/linphone/mediastream/video/display/GL2JNIView$ContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/linphone/mediastream/video/display/GL2JNIView$1;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/linphone/mediastream/video/display/GL2JNIView$ContextFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "creating OpenGL ES 2.0 context"

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/linphone/mediastream/Log;->w([Ljava/lang/Object;)V

    .line 81
    const-string/jumbo v0, "Before eglCreateContext"

    invoke-static {v0, p1}, Lorg/linphone/mediastream/video/display/GL2JNIView;->access$100(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lorg/linphone/mediastream/video/display/GL2JNIView$ContextFactory;->EGL_CONTEXT_CLIENT_VERSION:I

    aput v1, v0, v2

    aput v4, v0, v3

    const/16 v1, 0x3038

    aput v1, v0, v4

    .line 83
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 84
    const-string/jumbo v1, "After eglCreateContext"

    invoke-static {v1, p1}, Lorg/linphone/mediastream/video/display/GL2JNIView;->access$100(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 85
    return-object v0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .prologue
    .line 89
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 90
    return-void
.end method
