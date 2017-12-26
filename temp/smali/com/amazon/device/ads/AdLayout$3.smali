.class Lcom/amazon/device/ads/AdLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdLayout;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdLayout;)V
    .locals 0

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout$3;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout$3;->this$0:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->failLoadIfLayoutHasNotRun()V

    .line 1067
    return-void
.end method
