.class public Lcom/github/lzyzsd/jsbridge/DefaultHandler;
.super Ljava/lang/Object;
.source "DefaultHandler.java"

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/BridgeHandler;


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "DefaultHandler"

    iput-object v0, p0, Lcom/github/lzyzsd/jsbridge/DefaultHandler;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "function"    # Lcom/github/lzyzsd/jsbridge/CallBackFunction;

    .prologue
    .line 9
    if-eqz p2, :cond_0

    .line 10
    const-string v0, "DefaultHandler response data"

    invoke-interface {p2, v0}, Lcom/github/lzyzsd/jsbridge/CallBackFunction;->onCallBack(Ljava/lang/String;)V

    .line 12
    :cond_0
    return-void
.end method
