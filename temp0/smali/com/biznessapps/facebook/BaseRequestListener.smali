.class public abstract Lcom/biznessapps/facebook/BaseRequestListener;
.super Ljava/lang/Object;
.source "BaseRequestListener.java"

# interfaces
.implements Lcom/facebook/android/AsyncFacebookRunner$RequestListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 2
    .param p1, "e"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 21
    const-string v0, "Facebook"

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->printStackTrace()V

    .line 23
    return-void
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/FileNotFoundException;

    .prologue
    .line 27
    const-string v0, "Facebook"

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 29
    return-void
.end method

.method public onIOException(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    .line 33
    const-string v0, "Facebook"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 35
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;)V
    .locals 2
    .param p1, "e"    # Ljava/net/MalformedURLException;

    .prologue
    .line 39
    const-string v0, "Facebook"

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 41
    return-void
.end method
