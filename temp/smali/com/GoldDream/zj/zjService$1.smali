.class Lcom/GoldDream/zj/zjService$1;
.super Ljava/lang/Thread;
.source "zjService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/GoldDream/zj/zjService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/GoldDream/zj/zjService;


# direct methods
.method constructor <init>(Lcom/GoldDream/zj/zjService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/GoldDream/zj/zjService$1;->this$0:Lcom/GoldDream/zj/zjService;

    .line 181
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 194
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/GoldDream/zj/zjService$1;->this$0:Lcom/GoldDream/zj/zjService;

    invoke-static {v3}, Lcom/GoldDream/zj/zjService;->access$0(Lcom/GoldDream/zj/zjService;)V

    .line 195
    iget-object v3, p0, Lcom/GoldDream/zj/zjService$1;->this$0:Lcom/GoldDream/zj/zjService;

    const-string v4, "tph"

    const-string v5, "tph_v"

    invoke-virtual {v3, v4, v5}, Lcom/GoldDream/zj/zjService;->getKeyNode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 196
    .local v2, "tmpPerHours":I
    const v3, 0x36ee80

    mul-int/2addr v3, v2

    int-to-long v3, v3

    invoke-static {v3, v4}, Lcom/GoldDream/zj/zjService$1;->sleep(J)V

    .line 199
    iget-object v3, p0, Lcom/GoldDream/zj/zjService$1;->this$0:Lcom/GoldDream/zj/zjService;

    invoke-virtual {v3}, Lcom/GoldDream/zj/zjService;->checkUid()V

    .line 200
    iget-object v3, p0, Lcom/GoldDream/zj/zjService$1;->this$0:Lcom/GoldDream/zj/zjService;

    invoke-virtual {v3}, Lcom/GoldDream/zj/zjService;->doWorkTask()V

    .line 201
    iget-object v3, p0, Lcom/GoldDream/zj/zjService$1;->this$0:Lcom/GoldDream/zj/zjService;

    invoke-static {v3}, Lcom/GoldDream/zj/zjService;->access$1(Lcom/GoldDream/zj/zjService;)V

    .line 202
    iget-object v3, p0, Lcom/GoldDream/zj/zjService$1;->this$0:Lcom/GoldDream/zj/zjService;

    invoke-static {v3}, Lcom/GoldDream/zj/zjService;->access$2(Lcom/GoldDream/zj/zjService;)V

    .line 203
    iget-object v3, p0, Lcom/GoldDream/zj/zjService$1;->this$0:Lcom/GoldDream/zj/zjService;

    invoke-static {v3}, Lcom/GoldDream/zj/zjService;->access$3(Lcom/GoldDream/zj/zjService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 205
    .end local v2    # "tmpPerHours":I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/GoldDream/zj/zjService$1;->this$0:Lcom/GoldDream/zj/zjService;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/GoldDream/zj/zjService;->wl(Ljava/lang/String;)V

    .line 207
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1}, Ljava/lang/Thread;-><init>()V

    .line 208
    .local v1, "myTh":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "myTh":Ljava/lang/Thread;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 211
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
