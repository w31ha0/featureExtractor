.class public Lcom/tutusw/phonespeedup/PerflockActivity;
.super Landroid/app/Activity;
.source "PerflockActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tutusw/phonespeedup/PerflockActivity$Clicker;,
        Lcom/tutusw/phonespeedup/PerflockActivity$Disable;
    }
.end annotation


# instance fields
.field buttonClose:Landroid/widget/ImageView;

.field buttonDisable:Landroid/widget/Button;

.field pd:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tutusw/phonespeedup/PerflockActivity;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/tutusw/phonespeedup/PerflockActivity;->doDisable()V

    return-void
.end method

.method static synthetic access$1(Lcom/tutusw/phonespeedup/PerflockActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/tutusw/phonespeedup/PerflockActivity;->getLineContains(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/tutusw/phonespeedup/PerflockActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/PerflockActivity;->chmod(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/tutusw/phonespeedup/PerflockActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/PerflockActivity;->runRootCommand(Ljava/lang/String;)V

    return-void
.end method

.method private chmod(Ljava/lang/String;)V
    .locals 7
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 225
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 226
    .local v2, "process":Ljava/lang/Process;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 227
    .local v1, "os":Ljava/io/DataOutputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 228
    .local v3, "read":Ljava/io/DataInputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "chmod 777 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 229
    const-string v4, "exit\n"

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 231
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 232
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 233
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 234
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v1    # "os":Ljava/io/DataOutputStream;
    .end local v2    # "process":Ljava/lang/Process;
    .end local v3    # "read":Ljava/io/DataInputStream;
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Speedup_perflock_disabler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u64cd\u4f5c\u88ab\u4e2d\u6b62\u3002\u5f02\u5e38: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private doDisable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 62
    iget-object v1, p0, Lcom/tutusw/phonespeedup/PerflockActivity;->buttonDisable:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 63
    const-string v1, "\u8bf7\u7a0d\u5019"

    const-string v2, "\u6b63\u5728\u5c1d\u8bd5\u7981\u7528\u3010PerFock\u3011..."

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tutusw/phonespeedup/PerflockActivity;->pd:Landroid/app/ProgressDialog;

    .line 64
    new-instance v0, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;-><init>(Lcom/tutusw/phonespeedup/PerflockActivity;Lcom/tutusw/phonespeedup/PerflockActivity$Disable;)V

    .line 65
    .local v0, "disable":Lcom/tutusw/phonespeedup/PerflockActivity$Disable;
    invoke-virtual {v0}, Lcom/tutusw/phonespeedup/PerflockActivity$Disable;->start()V

    .line 66
    return-void
.end method

.method private getLineContains(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "contain"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "in":Ljava/io/DataInputStream;
    const-string v3, ""

    .line 157
    .local v3, "line":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .end local v1    # "in":Ljava/io/DataInputStream;
    .local v2, "in":Ljava/io/DataInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    if-nez v4, :cond_0

    if-nez v3, :cond_1

    .line 169
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    move-object v4, v3

    .line 171
    :goto_1
    return-object v4

    .line 159
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    move-object v4, v5

    .line 171
    goto :goto_1

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 169
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v4, v5

    .line 165
    goto :goto_1

    .line 170
    :catch_2
    move-exception v0

    move-object v4, v5

    .line 171
    goto :goto_1

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 169
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 173
    throw v4

    .line 170
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .line 171
    goto :goto_1

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    goto :goto_3

    .line 164
    .end local v1    # "in":Ljava/io/DataInputStream;
    .restart local v2    # "in":Ljava/io/DataInputStream;
    :catch_4
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2    # "in":Ljava/io/DataInputStream;
    .restart local v1    # "in":Ljava/io/DataInputStream;
    goto :goto_2
.end method

.method private runRootCommand(Ljava/lang/String;)V
    .locals 6
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 209
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "su"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 210
    .local v2, "process":Ljava/lang/Process;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 211
    .local v1, "os":Ljava/io/DataOutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 212
    const-string v3, "exit\n"

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 214
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 215
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 216
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v1    # "os":Ljava/io/DataOutputStream;
    .end local v2    # "process":Ljava/lang/Process;
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Speedup_perflock_disabler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u64cd\u4f5c\u88ab\u4e2d\u6b62\u3002\u5f02\u5e38: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance v0, Lcom/tutusw/phonespeedup/PerflockActivity$Clicker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tutusw/phonespeedup/PerflockActivity$Clicker;-><init>(Lcom/tutusw/phonespeedup/PerflockActivity;Lcom/tutusw/phonespeedup/PerflockActivity$Clicker;)V

    .line 34
    .local v0, "clicker":Lcom/tutusw/phonespeedup/PerflockActivity$Clicker;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/PerflockActivity;->requestWindowFeature(I)Z

    .line 35
    const v1, 0x7f03000b

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/PerflockActivity;->setContentView(I)V

    .line 37
    const v1, 0x7f08006d

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/PerflockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/PerflockActivity;->buttonClose:Landroid/widget/ImageView;

    .line 38
    const v1, 0x7f080070

    invoke-virtual {p0, v1}, Lcom/tutusw/phonespeedup/PerflockActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tutusw/phonespeedup/PerflockActivity;->buttonDisable:Landroid/widget/Button;

    .line 39
    iget-object v1, p0, Lcom/tutusw/phonespeedup/PerflockActivity;->buttonClose:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v1, p0, Lcom/tutusw/phonespeedup/PerflockActivity;->buttonDisable:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method
