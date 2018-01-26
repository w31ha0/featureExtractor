.class Lcom/biznessapps/api/HttpUtils$3;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/api/HttpUtils;->executeRequestAsync(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/api/HttpUtils;

.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$callback:Lcom/biznessapps/api/AsyncCallback;

.field final synthetic val$names:[Ljava/lang/String;

.field final synthetic val$values:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/api/HttpUtils;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/biznessapps/api/HttpUtils$3;->this$0:Lcom/biznessapps/api/HttpUtils;

    iput-object p2, p0, Lcom/biznessapps/api/HttpUtils$3;->val$baseUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/biznessapps/api/HttpUtils$3;->val$names:[Ljava/lang/String;

    iput-object p4, p0, Lcom/biznessapps/api/HttpUtils$3;->val$values:[Ljava/lang/String;

    iput-object p5, p0, Lcom/biznessapps/api/HttpUtils$3;->val$callback:Lcom/biznessapps/api/AsyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 175
    iget-object v0, p0, Lcom/biznessapps/api/HttpUtils$3;->this$0:Lcom/biznessapps/api/HttpUtils;

    iget-object v1, p0, Lcom/biznessapps/api/HttpUtils$3;->val$baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/api/HttpUtils$3;->val$names:[Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/api/HttpUtils$3;->val$values:[Ljava/lang/String;

    iget-object v4, p0, Lcom/biznessapps/api/HttpUtils$3;->val$callback:Lcom/biznessapps/api/AsyncCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/biznessapps/api/HttpUtils;->access$000(Lcom/biznessapps/api/HttpUtils;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 176
    return-void
.end method
