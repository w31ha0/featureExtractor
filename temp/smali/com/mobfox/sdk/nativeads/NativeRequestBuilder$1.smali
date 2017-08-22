.class Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$1;
.super Ljava/lang/Object;
.source "NativeRequestBuilder.java"

# interfaces
.implements Lcom/mobfox/sdk/services/MobFoxAdIdService$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;->build()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$1;->this$0:Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)V
    .locals 3
    .param p1, "advId"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$1;->this$0:Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;

    iget-object v0, v0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;->params:Lcom/mobfox/sdk/networking/RequestParams;

    const-string v1, "dev_dnt"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;I)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$1;->this$0:Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;

    iget-object v0, v0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;->params:Lcom/mobfox/sdk/networking/RequestParams;

    const-string v1, "o_andadvid"

    invoke-virtual {v0, v1, p1}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$1;->this$0:Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;

    invoke-virtual {v0}, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;->ready()V

    .line 53
    return-void
.end method
