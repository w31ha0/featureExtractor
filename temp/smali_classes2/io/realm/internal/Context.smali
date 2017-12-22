.class public Lio/realm/internal/Context;
.super Ljava/lang/Object;
.source "Context.java"


# static fields
.field static final dummyContext:Lio/realm/internal/Context;

.field private static final finalizingThread:Ljava/lang/Thread;

.field private static final referenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Lio/realm/internal/NativeObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lio/realm/internal/Context;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/realm/internal/FinalizerRunnable;

    sget-object v2, Lio/realm/internal/Context;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2}, Lio/realm/internal/FinalizerRunnable;-><init>(Ljava/lang/ref/ReferenceQueue;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lio/realm/internal/Context;->finalizingThread:Ljava/lang/Thread;

    .line 32
    new-instance v0, Lio/realm/internal/Context;

    invoke-direct {v0}, Lio/realm/internal/Context;-><init>()V

    sput-object v0, Lio/realm/internal/Context;->dummyContext:Lio/realm/internal/Context;

    .line 35
    sget-object v0, Lio/realm/internal/Context;->finalizingThread:Ljava/lang/Thread;

    const-string/jumbo v1, "RealmFinalizingDaemon"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lio/realm/internal/Context;->finalizingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addReference(Lio/realm/internal/NativeObject;)V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lio/realm/internal/NativeObjectReference;

    sget-object v1, Lio/realm/internal/Context;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p1, v1}, Lio/realm/internal/NativeObjectReference;-><init>(Lio/realm/internal/Context;Lio/realm/internal/NativeObject;Ljava/lang/ref/ReferenceQueue;)V

    .line 41
    return-void
.end method
