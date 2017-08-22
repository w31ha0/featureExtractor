.class Lcom/github/lzyzsd/jsbridge/BridgeWebView$1$2;
.super Ljava/lang/Object;
.source "BridgeWebView.java"

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/CallBackFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;->onCallBack(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;


# direct methods
.method constructor <init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1$2;->this$1:Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 191
    return-void
.end method
