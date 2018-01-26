.class Lcom/biznessapps/layout/MainController$1;
.super Lcom/biznessapps/api/AsyncCallback;
.source "MainController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/layout/MainController;->loadApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/AsyncCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/layout/MainController;

.field final synthetic val$cacher:Lcom/biznessapps/api/CachingManager;


# direct methods
.method constructor <init>(Lcom/biznessapps/layout/MainController;Lcom/biznessapps/api/CachingManager;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    iput-object p2, p0, Lcom/biznessapps/layout/MainController$1;->val$cacher:Lcom/biznessapps/api/CachingManager;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/biznessapps/layout/MainController$1;->this$0:Lcom/biznessapps/layout/MainController;

    invoke-virtual {v0}, Lcom/biznessapps/layout/MainController;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$string;->server_connection_failure:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 162
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 82
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/layout/MainController$1;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseTabs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 89
    .local v0, "tabList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/Tab;>;"
    iget-object v1, p0, Lcom/biznessapps/layout/MainController$1;->val$cacher:Lcom/biznessapps/api/CachingManager;

    invoke-virtual {v1, v0}, Lcom/biznessapps/api/CachingManager;->setTabList(Ljava/util/List;)V

    .line 91
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/biznessapps/layout/MainController$1$1;

    invoke-direct {v2, p0, v0}, Lcom/biznessapps/layout/MainController$1$1;-><init>(Lcom/biznessapps/layout/MainController$1;Ljava/util/List;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 157
    return-void
.end method
