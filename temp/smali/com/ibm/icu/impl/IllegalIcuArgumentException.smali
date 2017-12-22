.class public Lcom/ibm/icu/impl/IllegalIcuArgumentException;
.super Ljava/lang/IllegalArgumentException;
.source "IllegalIcuArgumentException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    return-void
.end method


# virtual methods
.method public declared-synchronized initCause(Ljava/lang/Throwable;)Lcom/ibm/icu/impl/IllegalIcuArgumentException;
    .locals 1

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/IllegalIcuArgumentException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;->initCause(Ljava/lang/Throwable;)Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    move-result-object v0

    return-object v0
.end method
