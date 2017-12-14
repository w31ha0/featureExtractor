.class Lcom/tutusw/phonespeedup/PerflockActivity$Disable;
.super Ljava/lang/Object;
.source "PerflockActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/PerflockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disable"
.end annotation


# instance fields
.field errorMsg:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/tutusw/phonespeedup/PerflockActivity;


# direct methods
.method private constructor <init>(Lcom/tutusw/phonespeedup/PerflockActivity;)V
    .locals 1

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->this$0:Lcom/tutusw/phonespeedup/PerflockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable$1;

    invoke-direct {v0, p0}, Lcom/tutusw/phonespeedup/PerflockActivity$Disable$1;-><init>(Lcom/tutusw/phonespeedup/PerflockActivity$Disable;)V

    iput-object v0, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->handler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tutusw/phonespeedup/PerflockActivity;Lcom/tutusw/phonespeedup/PerflockActivity$Disable;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;-><init>(Lcom/tutusw/phonespeedup/PerflockActivity;)V

    return-void
.end method

.method static synthetic access$1(Lcom/tutusw/phonespeedup/PerflockActivity$Disable;)Lcom/tutusw/phonespeedup/PerflockActivity;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->this$0:Lcom/tutusw/phonespeedup/PerflockActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const-string v10, "/perflock_disable29.ko"

    const-string v13, "Speedup_perflock_disabler"

    .line 83
    :try_start_0
    const-string v10, "Speedup_perflock_disabler"

    const-string v11, "\u6b63\u5728\u83b7\u53d6\u76ee\u6807\u5730\u5740"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v10, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->this$0:Lcom/tutusw/phonespeedup/PerflockActivity;

    const-string v11, "/proc/kallsyms"

    const-string v12, "perflock_notifier_call"

    invoke-static {v10, v11, v12}, Lcom/tutusw/phonespeedup/PerflockActivity;->access$1(Lcom/tutusw/phonespeedup/PerflockActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 86
    .local v7, "lineContains":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 87
    const-string v10, "Speedup_perflock_disabler"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\u627e\u5230\u5730\u5740: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 90
    .local v8, "lineSplit":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v0, v8, v10

    .line 92
    .local v0, "addr":Ljava/lang/String;
    const-string v10, "Speedup_perflock_disabler"

    const-string v11, "\u6b63\u5728\u63d0\u53d6\u6a21\u5757"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v10, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->this$0:Lcom/tutusw/phonespeedup/PerflockActivity;

    invoke-virtual {v10}, Lcom/tutusw/phonespeedup/PerflockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "module"

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 95
    .local v3, "dir":Ljava/io/File;
    iget-object v10, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->this$0:Lcom/tutusw/phonespeedup/PerflockActivity;

    invoke-virtual {v10}, Lcom/tutusw/phonespeedup/PerflockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f050000

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 97
    .local v6, "ins":Ljava/io/InputStream;
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v9

    .line 99
    .local v9, "size":I
    new-array v1, v9, [B

    .line 100
    .local v1, "buffer":[B
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    .line 101
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 103
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/perflock_disable29.ko"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 104
    .local v5, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v5, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 105
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 107
    const-string v10, "Speedup_perflock_disabler"

    const-string v11, "\u6b63\u5728\u914d\u7f6e\u6a21\u5757"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/perflock_disable29.ko"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/tutusw/phonespeedup/VermagicBuilder29;->writeVermagic(Ljava/lang/String;)Z

    .line 109
    iget-object v10, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->this$0:Lcom/tutusw/phonespeedup/PerflockActivity;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "/perflock_disable29.ko"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tutusw/phonespeedup/PerflockActivity;->access$2(Lcom/tutusw/phonespeedup/PerflockActivity;Ljava/lang/String;)V

    .line 111
    const-string v10, "Speedup_perflock_disabler"

    const-string v11, "\u6b63\u5728\u52a0\u8f7d\u6a21\u5757"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v10, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->this$0:Lcom/tutusw/phonespeedup/PerflockActivity;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "insmod "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/perflock_disable29.ko "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "perflock_notifier_call_addr=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/tutusw/phonespeedup/PerflockActivity;->access$3(Lcom/tutusw/phonespeedup/PerflockActivity;Ljava/lang/String;)V

    .line 119
    const-string v10, "\u6210\u529f\uff1a\u3010PerFlock\u3011\u4f3c\u4e4e\u5df2\u88ab\u7981\u7528\u3002"

    iput-object v10, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->errorMsg:Ljava/lang/String;

    .line 120
    const-string v10, "Speedup_perflock_disabler"

    const-string v11, "\u6a21\u5757\u88ab\u52a0\u8f7d"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v2, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/perflock_disable29.ko"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v2, "deleteMod":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 126
    iget-object v10, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->handler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    .end local v0    # "addr":Ljava/lang/String;
    .end local v1    # "buffer":[B
    .end local v2    # "deleteMod":Ljava/io/File;
    .end local v3    # "dir":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "ins":Ljava/io/InputStream;
    .end local v7    # "lineContains":Ljava/lang/String;
    .end local v8    # "lineSplit":[Ljava/lang/String;
    .end local v9    # "size":I
    :goto_0
    return-void

    .line 130
    .restart local v7    # "lineContains":Ljava/lang/String;
    :cond_0
    const-string v10, "Speedup_perflock_disabler"

    const-string v11, "\u6ca1\u6709\u627e\u5230\u7684\u76ee\u6807\u5730\u5740\u3002\u3010PerFlock\u3011\u7684\u7248\u672c\u4e0d\u517c\u5bb9\uff0c\u6216\u8005\u6ca1\u6709\u88ab\u542f\u7528\u3002"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v10, "\u6ca1\u6709\u627e\u5230\u3010PerFlock\u3011\u3002\u60a8\u4e0d\u9700\u8981\u7981\u7528\u3010PerFlock\u3011\u3002"

    iput-object v10, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->errorMsg:Ljava/lang/String;

    .line 132
    iget-object v10, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->handler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v7    # "lineContains":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v4, v10

    .line 136
    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "Speedup_perflock_disabler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u64cd\u4f5c\u88ab\u4e2d\u6b62\u3002\u5f02\u5e38: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v10, "\u9519\u8bef\uff1a\u5f02\u5e38\u6742\u9879\u3002\u662f\u4e0d\u662f\u60a8\u7684\u5185\u6838\u4e0d\u517c\u5bb9\uff1f\u8bf7\u53d1\u9001\u90ae\u4ef6\u7ed9\u5f00\u53d1\u8005\u3002"

    iput-object v10, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->errorMsg:Ljava/lang/String;

    .line 138
    iget-object v10, p0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->handler:Landroid/os/Handler;

    invoke-virtual {v10, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method start()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 74
    return-void
.end method
