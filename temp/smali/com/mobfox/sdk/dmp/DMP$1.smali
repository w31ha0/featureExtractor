.class Lcom/mobfox/sdk/dmp/DMP$1;
.super Ljava/lang/Object;
.source "DMP.java"

# interfaces
.implements Lcom/mobfox/sdk/services/MobFoxAdIdService$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/dmp/DMP;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/dmp/DMP;

.field final synthetic val$IPAddress:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ua:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/dmp/DMP;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/dmp/DMP;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mobfox/sdk/dmp/DMP$1;->this$0:Lcom/mobfox/sdk/dmp/DMP;

    iput-object p2, p0, Lcom/mobfox/sdk/dmp/DMP$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mobfox/sdk/dmp/DMP$1;->val$IPAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/mobfox/sdk/dmp/DMP$1;->val$ua:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)V
    .locals 7
    .param p1, "o_andadvid"    # Ljava/lang/String;

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    const-string v3, "MobFoxDMP"

    const-string v4, "getAdvIdTask onPostExecute error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 157
    :cond_0
    :try_start_0
    new-instance v0, Lcom/mobfox/sdk/dmp/Bundle;

    invoke-direct {v0, p1}, Lcom/mobfox/sdk/dmp/Bundle;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "bundle":Lcom/mobfox/sdk/dmp/Bundle;
    iget-object v3, p0, Lcom/mobfox/sdk/dmp/DMP$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/mobfox/sdk/dmp/DMP$1;->this$0:Lcom/mobfox/sdk/dmp/DMP;

    iget-object v4, v4, Lcom/mobfox/sdk/dmp/DMP;->data:Ljava/util/List;

    iget-object v5, p0, Lcom/mobfox/sdk/dmp/DMP$1;->val$IPAddress:Ljava/lang/String;

    iget-object v6, p0, Lcom/mobfox/sdk/dmp/DMP$1;->val$ua:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/mobfox/sdk/dmp/Bundle;->addData(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lcom/mobfox/sdk/dmp/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/mobfox/sdk/dmp/DMP$1;->val$context:Landroid/content/Context;

    sget-object v4, Lcom/mobfox/sdk/dmp/DMP;->BUNDLE_FILE:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Lcom/mobfox/sdk/utils/Utils;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 161
    .end local v0    # "bundle":Lcom/mobfox/sdk/dmp/Bundle;
    .end local v2    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MobFoxDMP"

    const-string v4, "dmp exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "MobFoxDMP"

    const-string v4, "dmp throwable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
