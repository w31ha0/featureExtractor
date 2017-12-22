.class public Lcom/ibm/icu/impl/ClassLoaderUtil;
.super Ljava/lang/Object;
.source "ClassLoaderUtil.java"


# static fields
.field private static volatile BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBootstrapClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/ibm/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lcom/ibm/icu/impl/ClassLoaderUtil;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/ibm/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 56
    new-instance v0, Lcom/ibm/icu/impl/ClassLoaderUtil$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ClassLoaderUtil$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    .line 65
    :goto_0
    sput-object v0, Lcom/ibm/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v0, Lcom/ibm/icu/impl/ClassLoaderUtil;->BOOTSTRAP_CLASSLOADER:Ljava/lang/ClassLoader;

    return-object v0

    .line 63
    :cond_2
    :try_start_1
    new-instance v0, Lcom/ibm/icu/impl/ClassLoaderUtil$BootstrapClassLoader;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ClassLoaderUtil$BootstrapClassLoader;-><init>()V

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/ibm/icu/impl/ClassLoaderUtil;->getBootstrapClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 101
    :cond_0
    return-object v0
.end method

.method public static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 80
    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/ibm/icu/impl/ClassLoaderUtil;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 83
    :cond_0
    return-object v0
.end method
