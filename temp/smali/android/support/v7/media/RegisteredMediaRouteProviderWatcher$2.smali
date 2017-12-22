.class Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$2;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProviderWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;


# direct methods
.method constructor <init>(Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$2;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher$2;->this$0:Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;

    invoke-virtual {v0}, Landroid/support/v7/media/RegisteredMediaRouteProviderWatcher;->scanPackages()V

    .line 150
    return-void
.end method
