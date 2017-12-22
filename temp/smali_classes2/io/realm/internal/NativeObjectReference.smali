.class final Lio/realm/internal/NativeObjectReference;
.super Ljava/lang/ref/PhantomReference;
.source "NativeObjectReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Lio/realm/internal/NativeObject;",
        ">;"
    }
.end annotation


# static fields
.field private static referencePool:Lio/realm/internal/NativeObjectReference$ReferencePool;


# instance fields
.field private final context:Lio/realm/internal/Context;

.field private final nativeFinalizerPtr:J

.field private final nativePtr:J

.field private next:Lio/realm/internal/NativeObjectReference;

.field private prev:Lio/realm/internal/NativeObjectReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Lio/realm/internal/NativeObjectReference$ReferencePool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/internal/NativeObjectReference$ReferencePool;-><init>(Lio/realm/internal/NativeObjectReference$1;)V

    sput-object v0, Lio/realm/internal/NativeObjectReference;->referencePool:Lio/realm/internal/NativeObjectReference$ReferencePool;

    return-void
.end method

.method constructor <init>(Lio/realm/internal/Context;Lio/realm/internal/NativeObject;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/Context;",
            "Lio/realm/internal/NativeObject;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Lio/realm/internal/NativeObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 75
    invoke-interface {p2}, Lio/realm/internal/NativeObject;->getNativePtr()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/NativeObjectReference;->nativePtr:J

    .line 76
    invoke-interface {p2}, Lio/realm/internal/NativeObject;->getNativeFinalizerPtr()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/internal/NativeObjectReference;->nativeFinalizerPtr:J

    .line 77
    iput-object p1, p0, Lio/realm/internal/NativeObjectReference;->context:Lio/realm/internal/Context;

    .line 78
    sget-object v0, Lio/realm/internal/NativeObjectReference;->referencePool:Lio/realm/internal/NativeObjectReference$ReferencePool;

    invoke-virtual {v0, p0}, Lio/realm/internal/NativeObjectReference$ReferencePool;->add(Lio/realm/internal/NativeObjectReference;)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference;->prev:Lio/realm/internal/NativeObjectReference;

    return-object v0
.end method

.method static synthetic access$002(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lio/realm/internal/NativeObjectReference;->prev:Lio/realm/internal/NativeObjectReference;

    return-object p1
.end method

.method static synthetic access$100(Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lio/realm/internal/NativeObjectReference;->next:Lio/realm/internal/NativeObjectReference;

    return-object v0
.end method

.method static synthetic access$102(Lio/realm/internal/NativeObjectReference;Lio/realm/internal/NativeObjectReference;)Lio/realm/internal/NativeObjectReference;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lio/realm/internal/NativeObjectReference;->next:Lio/realm/internal/NativeObjectReference;

    return-object p1
.end method

.method private static native nativeCleanUp(JJ)V
.end method


# virtual methods
.method cleanup()V
    .locals 6

    .prologue
    .line 85
    iget-object v1, p0, Lio/realm/internal/NativeObjectReference;->context:Lio/realm/internal/Context;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-wide v2, p0, Lio/realm/internal/NativeObjectReference;->nativeFinalizerPtr:J

    iget-wide v4, p0, Lio/realm/internal/NativeObjectReference;->nativePtr:J

    invoke-static {v2, v3, v4, v5}, Lio/realm/internal/NativeObjectReference;->nativeCleanUp(JJ)V

    .line 87
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    sget-object v0, Lio/realm/internal/NativeObjectReference;->referencePool:Lio/realm/internal/NativeObjectReference$ReferencePool;

    invoke-virtual {v0, p0}, Lio/realm/internal/NativeObjectReference$ReferencePool;->remove(Lio/realm/internal/NativeObjectReference;)V

    .line 90
    return-void

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
