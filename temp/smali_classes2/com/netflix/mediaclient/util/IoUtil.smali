.class public Lcom/netflix/mediaclient/util/IoUtil;
.super Ljava/lang/Object;
.source "IoUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IoUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static safeClose(Ljava/io/Closeable;)V
    .locals 2

    .prologue
    .line 15
    if-eqz p0, :cond_0

    .line 16
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 20
    const-string/jumbo v1, "IoUtil"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
