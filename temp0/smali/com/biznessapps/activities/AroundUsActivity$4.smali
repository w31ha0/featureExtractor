.class Lcom/biznessapps/activities/AroundUsActivity$4;
.super Landroid/os/AsyncTask;
.source "AroundUsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/activities/AroundUsActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/activities/AroundUsActivity;

.field final synthetic val$cacher:Lcom/biznessapps/api/CachingManager;

.field final synthetic val$tabId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/activities/AroundUsActivity;Lcom/biznessapps/api/CachingManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    iput-object p2, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->val$cacher:Lcom/biznessapps/api/CachingManager;

    iput-object p3, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->val$tabId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 189
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/activities/AroundUsActivity$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 192
    iget-object v2, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->val$cacher:Lcom/biznessapps/api/CachingManager;

    const-string v3, "AROUND_INFO_PROPERTY"

    invoke-virtual {v1, v3}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/AroundUsItem;

    invoke-static {v2, v1}, Lcom/biznessapps/activities/AroundUsActivity;->access$002(Lcom/biznessapps/activities/AroundUsActivity;Lcom/biznessapps/model/AroundUsItem;)Lcom/biznessapps/model/AroundUsItem;

    .line 193
    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    invoke-static {v1}, Lcom/biznessapps/activities/AroundUsActivity;->access$000(Lcom/biznessapps/activities/AroundUsActivity;)Lcom/biznessapps/model/AroundUsItem;

    move-result-object v1

    if-nez v1, :cond_0

    .line 194
    const-string v1, "http://www.biznessapps.com/iphone/around_us.php?app_code=%s&version=4&tab_id=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->val$cacher:Lcom/biznessapps/api/CachingManager;

    invoke-virtual {v4}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->val$tabId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/api/AppHttpUtils;->executeGetSyncRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "jsonData":Ljava/lang/String;
    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    invoke-static {v0}, Lcom/biznessapps/utils/JsonParserUtils;->parseAroundUsData(Ljava/lang/String;)Lcom/biznessapps/model/AroundUsItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/activities/AroundUsActivity;->access$002(Lcom/biznessapps/activities/AroundUsActivity;Lcom/biznessapps/model/AroundUsItem;)Lcom/biznessapps/model/AroundUsItem;

    .line 196
    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    invoke-static {v1}, Lcom/biznessapps/activities/AroundUsActivity;->access$000(Lcom/biznessapps/activities/AroundUsActivity;)Lcom/biznessapps/model/AroundUsItem;

    move-result-object v1

    if-nez v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    invoke-virtual {v1}, Lcom/biznessapps/activities/AroundUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->data_loading_failure:I

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/content/Context;I)V

    .line 198
    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    invoke-virtual {v1}, Lcom/biznessapps/activities/AroundUsActivity;->finish()V

    .line 201
    .end local v0    # "jsonData":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 189
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/activities/AroundUsActivity$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    invoke-static {v0}, Lcom/biznessapps/activities/AroundUsActivity;->access$000(Lcom/biznessapps/activities/AroundUsActivity;)Lcom/biznessapps/model/AroundUsItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->val$cacher:Lcom/biznessapps/api/CachingManager;

    const-string v1, "AROUND_INFO_PROPERTY"

    iget-object v2, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    invoke-static {v2}, Lcom/biznessapps/activities/AroundUsActivity;->access$000(Lcom/biznessapps/activities/AroundUsActivity;)Lcom/biznessapps/model/AroundUsItem;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    invoke-virtual {v0}, Lcom/biznessapps/activities/AroundUsActivity;->stopProgressBar()V

    .line 210
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    invoke-static {v0}, Lcom/biznessapps/activities/AroundUsActivity;->access$300(Lcom/biznessapps/activities/AroundUsActivity;)V

    .line 211
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    invoke-static {v1}, Lcom/biznessapps/activities/AroundUsActivity;->access$000(Lcom/biznessapps/activities/AroundUsActivity;)Lcom/biznessapps/model/AroundUsItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getPoi()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/activities/AroundUsActivity;->access$200(Lcom/biznessapps/activities/AroundUsActivity;Ljava/util/List;)V

    .line 212
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    invoke-static {v0}, Lcom/biznessapps/activities/AroundUsActivity;->access$400(Lcom/biznessapps/activities/AroundUsActivity;)V

    .line 213
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity$4;->this$0:Lcom/biznessapps/activities/AroundUsActivity;

    invoke-static {v0}, Lcom/biznessapps/activities/AroundUsActivity;->access$500(Lcom/biznessapps/activities/AroundUsActivity;)V

    .line 215
    :cond_0
    return-void
.end method
