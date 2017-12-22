.class Lcom/ibm/icu/impl/ClassLoaderUtil$BootstrapClassLoader;
.super Ljava/lang/ClassLoader;
.source "ClassLoaderUtil.java"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 38
    return-void
.end method
