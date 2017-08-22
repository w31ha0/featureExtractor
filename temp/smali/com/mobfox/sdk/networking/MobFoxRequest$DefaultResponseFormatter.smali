.class Lcom/mobfox/sdk/networking/MobFoxRequest$DefaultResponseFormatter;
.super Ljava/lang/Object;
.source "MobFoxRequest.java"

# interfaces
.implements Lcom/mobfox/sdk/networking/MobFoxRequest$ResponseFormatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobfox/sdk/networking/MobFoxRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultResponseFormatter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/networking/MobFoxRequest;


# direct methods
.method private constructor <init>(Lcom/mobfox/sdk/networking/MobFoxRequest;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$DefaultResponseFormatter;->this$0:Lcom/mobfox/sdk/networking/MobFoxRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobfox/sdk/networking/MobFoxRequest;Lcom/mobfox/sdk/networking/MobFoxRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mobfox/sdk/networking/MobFoxRequest;
    .param p2, "x1"    # Lcom/mobfox/sdk/networking/MobFoxRequest$1;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/mobfox/sdk/networking/MobFoxRequest$DefaultResponseFormatter;-><init>(Lcom/mobfox/sdk/networking/MobFoxRequest;)V

    return-void
.end method


# virtual methods
.method public format(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 7
    .param p1, "response"    # Ljava/io/InputStream;

    .prologue
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 54
    .local v2, "reader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 57
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v4, "MobFoxNetwork"

    const-string v5, "IOException error reading response"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    if-eqz v2, :cond_0

    .line 63
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 68
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 62
    .restart local v1    # "line":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_0

    .line 63
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 64
    :catch_1
    move-exception v0

    .line 65
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "MobFoxNetwork"

    const-string v5, "IOException error closing response inp stream"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 64
    .end local v1    # "line":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 65
    const-string v4, "MobFoxNetwork"

    const-string v5, "IOException error closing response inp stream"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 59
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string v4, "MobFoxNetwork"

    const-string v5, "error reading response"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    if-eqz v2, :cond_0

    .line 63
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 64
    :catch_4
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "MobFoxNetwork"

    const-string v5, "IOException error closing response inp stream"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 63
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 66
    :cond_2
    :goto_2
    throw v4

    .line 64
    :catch_5
    move-exception v0

    .line 65
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "MobFoxNetwork"

    const-string v6, "IOException error closing response inp stream"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
