.class Lcom/biznessapps/api/HttpUtils$2;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/api/HttpUtils;->passError(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/api/HttpUtils;

.field final synthetic val$callback:Lcom/biznessapps/api/AsyncCallback;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/biznessapps/api/HttpUtils;Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/biznessapps/api/HttpUtils$2;->this$0:Lcom/biznessapps/api/HttpUtils;

    iput-object p2, p0, Lcom/biznessapps/api/HttpUtils$2;->val$callback:Lcom/biznessapps/api/AsyncCallback;

    iput-object p3, p0, Lcom/biznessapps/api/HttpUtils$2;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/biznessapps/api/HttpUtils$2;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/biznessapps/api/HttpUtils$2;->val$callback:Lcom/biznessapps/api/AsyncCallback;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/biznessapps/api/HttpUtils$2;->val$callback:Lcom/biznessapps/api/AsyncCallback;

    iget-object v1, p0, Lcom/biznessapps/api/HttpUtils$2;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/api/HttpUtils$2;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/AsyncCallback;->onError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    :cond_0
    return-void
.end method
