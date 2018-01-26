.class Lcom/biznessapps/api/HttpUtils$1;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/api/HttpUtils;->passResult(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/api/HttpUtils;

.field final synthetic val$callback:Lcom/biznessapps/api/AsyncCallback;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/api/HttpUtils;Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/biznessapps/api/HttpUtils$1;->this$0:Lcom/biznessapps/api/HttpUtils;

    iput-object p2, p0, Lcom/biznessapps/api/HttpUtils$1;->val$callback:Lcom/biznessapps/api/AsyncCallback;

    iput-object p3, p0, Lcom/biznessapps/api/HttpUtils$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/biznessapps/api/HttpUtils$1;->val$callback:Lcom/biznessapps/api/AsyncCallback;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/biznessapps/api/HttpUtils$1;->val$callback:Lcom/biznessapps/api/AsyncCallback;

    iget-object v1, p0, Lcom/biznessapps/api/HttpUtils$1;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/AsyncCallback;->onResult(Ljava/lang/String;)V

    .line 148
    :cond_0
    return-void
.end method
