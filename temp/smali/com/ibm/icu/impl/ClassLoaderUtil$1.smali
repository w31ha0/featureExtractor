.class final Lcom/ibm/icu/impl/ClassLoaderUtil$1;
.super Ljava/lang/Object;
.source "ClassLoaderUtil.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/ibm/icu/impl/ClassLoaderUtil$BootstrapClassLoader;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/ibm/icu/impl/ClassLoaderUtil$BootstrapClassLoader;

    invoke-direct {v0}, Lcom/ibm/icu/impl/ClassLoaderUtil$BootstrapClassLoader;-><init>()V

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ClassLoaderUtil$1;->run()Lcom/ibm/icu/impl/ClassLoaderUtil$BootstrapClassLoader;

    move-result-object v0

    return-object v0
.end method
