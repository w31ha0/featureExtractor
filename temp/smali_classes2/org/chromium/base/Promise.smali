.class public Lorg/chromium/base/Promise;
.super Ljava/lang/Object;
.source "Promise.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FULFILLED:I = 0x1

.field private static final REJECTED:I = 0x2

.field private static final UNFULFILLED:I


# instance fields
.field private final mFulfillCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/chromium/base/Callback",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mRejectCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/chromium/base/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRejectReason:Ljava/lang/Exception;

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mState:I

.field private final mThread:Ljava/lang/Thread;

.field private mThrowingRejectionHandler:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lorg/chromium/base/Promise;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/base/Promise;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/base/Promise;->mState:I

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/Promise;->mFulfillCallbacks:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/Promise;->mRejectCallbacks:Ljava/util/List;

    .line 73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/base/Promise;->mThread:Ljava/lang/Thread;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/Promise;->mHandler:Landroid/os/Handler;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/base/Promise;)Lorg/chromium/base/Callback;
    .locals 1

    .prologue
    .line 20
    invoke-static {p0}, Lorg/chromium/base/Promise;->rejectPromiseCallback(Lorg/chromium/base/Promise;)Lorg/chromium/base/Callback;

    move-result-object v0

    return-object v0
.end method

.method private checkThread()V
    .locals 2

    .prologue
    .line 310
    sget-boolean v0, Lorg/chromium/base/Promise;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/base/Promise;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Promise must only be used on a single Thread."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 311
    :cond_0
    return-void
.end method

.method private exceptInner(Lorg/chromium/base/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    sget-boolean v0, Lorg/chromium/base/Promise;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/base/Promise;->mThrowingRejectionHandler:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Do not add an exception handler to a Promise you have called the single argument Promise.then(Callback) on."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 159
    :cond_0
    iget v0, p0, Lorg/chromium/base/Promise;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 160
    iget-object v0, p0, Lorg/chromium/base/Promise;->mRejectReason:Ljava/lang/Exception;

    invoke-direct {p0, p1, v0}, Lorg/chromium/base/Promise;->postCallbackToLooper(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    .line 164
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    iget v0, p0, Lorg/chromium/base/Promise;->mState:I

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lorg/chromium/base/Promise;->mRejectCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static fulfilled(Ljava/lang/Object;)Lorg/chromium/base/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/chromium/base/Promise",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Lorg/chromium/base/Promise;

    invoke-direct {v0}, Lorg/chromium/base/Promise;-><init>()V

    .line 305
    invoke-virtual {v0, p0}, Lorg/chromium/base/Promise;->fulfill(Ljava/lang/Object;)V

    .line 306
    return-object v0
.end method

.method private postCallbackToLooper(Lorg/chromium/base/Callback;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/base/Callback",
            "<TS;>;TS;)V"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lorg/chromium/base/Promise;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/base/Promise$5;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/base/Promise$5;-><init>(Lorg/chromium/base/Promise;Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method

.method private static rejectPromiseCallback(Lorg/chromium/base/Promise;)Lorg/chromium/base/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/base/Promise",
            "<TT;>;)",
            "Lorg/chromium/base/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Lorg/chromium/base/Promise$6;

    invoke-direct {v0, p0}, Lorg/chromium/base/Promise$6;-><init>(Lorg/chromium/base/Promise;)V

    return-object v0
.end method

.method private thenInner(Lorg/chromium/base/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 148
    iget v0, p0, Lorg/chromium/base/Promise;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 149
    iget-object v0, p0, Lorg/chromium/base/Promise;->mResult:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/chromium/base/Promise;->postCallbackToLooper(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget v0, p0, Lorg/chromium/base/Promise;->mState:I

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/chromium/base/Promise;->mFulfillCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public except(Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 132
    invoke-direct {p0, p1}, Lorg/chromium/base/Promise;->exceptInner(Lorg/chromium/base/Callback;)V

    .line 133
    return-void
.end method

.method public fulfill(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 242
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 243
    sget-boolean v0, Lorg/chromium/base/Promise;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/base/Promise;->mState:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 245
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/chromium/base/Promise;->mState:I

    .line 246
    iput-object p1, p0, Lorg/chromium/base/Promise;->mResult:Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lorg/chromium/base/Promise;->mFulfillCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/Callback;

    .line 249
    invoke-direct {p0, v0, p1}, Lorg/chromium/base/Promise;->postCallbackToLooper(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lorg/chromium/base/Promise;->mFulfillCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    return-void
.end method

.method public fulfillmentCallback()Lorg/chromium/base/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/chromium/base/Callback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lorg/chromium/base/Promise$2;

    invoke-direct {v0, p0}, Lorg/chromium/base/Promise$2;-><init>(Lorg/chromium/base/Promise;)V

    return-object v0
.end method

.method public isFulfilled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 286
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 288
    iget v1, p0, Lorg/chromium/base/Promise;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRejected()Z
    .locals 2

    .prologue
    .line 295
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 297
    iget v0, p0, Lorg/chromium/base/Promise;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reject()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/chromium/base/Promise;->reject(Ljava/lang/Exception;)V

    .line 280
    return-void
.end method

.method public reject(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 263
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 264
    sget-boolean v0, Lorg/chromium/base/Promise;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/base/Promise;->mState:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 266
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lorg/chromium/base/Promise;->mState:I

    .line 267
    iput-object p1, p0, Lorg/chromium/base/Promise;->mRejectReason:Ljava/lang/Exception;

    .line 269
    iget-object v0, p0, Lorg/chromium/base/Promise;->mRejectCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/base/Callback;

    .line 270
    invoke-direct {p0, v0, p1}, Lorg/chromium/base/Promise;->postCallbackToLooper(Lorg/chromium/base/Callback;Ljava/lang/Object;)V

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lorg/chromium/base/Promise;->mRejectCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 273
    return-void
.end method

.method public then(Lorg/chromium/base/Promise$AsyncFunction;)Lorg/chromium/base/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/base/Promise$AsyncFunction",
            "<TT;TR;>;)",
            "Lorg/chromium/base/Promise",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 203
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 206
    new-instance v0, Lorg/chromium/base/Promise;

    invoke-direct {v0}, Lorg/chromium/base/Promise;-><init>()V

    .line 211
    new-instance v1, Lorg/chromium/base/Promise$4;

    invoke-direct {v1, p0, p1, v0}, Lorg/chromium/base/Promise$4;-><init>(Lorg/chromium/base/Promise;Lorg/chromium/base/Promise$AsyncFunction;Lorg/chromium/base/Promise;)V

    invoke-direct {p0, v1}, Lorg/chromium/base/Promise;->thenInner(Lorg/chromium/base/Callback;)V

    .line 232
    invoke-static {v0}, Lorg/chromium/base/Promise;->rejectPromiseCallback(Lorg/chromium/base/Promise;)Lorg/chromium/base/Callback;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/base/Promise;->exceptInner(Lorg/chromium/base/Callback;)V

    .line 234
    return-object v0
.end method

.method public then(Lorg/chromium/base/Promise$Function;)Lorg/chromium/base/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/base/Promise$Function",
            "<TT;TR;>;)",
            "Lorg/chromium/base/Promise",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 174
    new-instance v0, Lorg/chromium/base/Promise;

    invoke-direct {v0}, Lorg/chromium/base/Promise;-><init>()V

    .line 179
    new-instance v1, Lorg/chromium/base/Promise$3;

    invoke-direct {v1, p0, v0, p1}, Lorg/chromium/base/Promise$3;-><init>(Lorg/chromium/base/Promise;Lorg/chromium/base/Promise;Lorg/chromium/base/Promise$Function;)V

    invoke-direct {p0, v1}, Lorg/chromium/base/Promise;->thenInner(Lorg/chromium/base/Callback;)V

    .line 192
    invoke-static {v0}, Lorg/chromium/base/Promise;->rejectPromiseCallback(Lorg/chromium/base/Promise;)Lorg/chromium/base/Callback;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/base/Promise;->exceptInner(Lorg/chromium/base/Callback;)V

    .line 194
    return-object v0
.end method

.method public then(Lorg/chromium/base/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 87
    iget-boolean v0, p0, Lorg/chromium/base/Promise;->mThrowingRejectionHandler:Z

    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lorg/chromium/base/Promise;->thenInner(Lorg/chromium/base/Callback;)V

    .line 105
    :goto_0
    return-void

    .line 93
    :cond_0
    sget-boolean v0, Lorg/chromium/base/Promise;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/chromium/base/Promise;->mRejectCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Do not call the single argument Promise.then(Callback) on a Promise that already has a rejection handler."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 95
    :cond_1
    new-instance v0, Lorg/chromium/base/Promise$1;

    invoke-direct {v0, p0}, Lorg/chromium/base/Promise$1;-><init>(Lorg/chromium/base/Promise;)V

    .line 103
    invoke-virtual {p0, p1, v0}, Lorg/chromium/base/Promise;->then(Lorg/chromium/base/Callback;Lorg/chromium/base/Callback;)V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/base/Promise;->mThrowingRejectionHandler:Z

    goto :goto_0
.end method

.method public then(Lorg/chromium/base/Callback;Lorg/chromium/base/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/base/Callback",
            "<TT;>;",
            "Lorg/chromium/base/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Lorg/chromium/base/Promise;->checkThread()V

    .line 119
    invoke-direct {p0, p1}, Lorg/chromium/base/Promise;->thenInner(Lorg/chromium/base/Callback;)V

    .line 120
    invoke-direct {p0, p2}, Lorg/chromium/base/Promise;->exceptInner(Lorg/chromium/base/Callback;)V

    .line 121
    return-void
.end method
