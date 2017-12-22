.class final Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;
.super Landroid/support/v7/media/MediaRouteProvider$Callback;
.source "MediaRouter.java"


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;)V
    .locals 0

    .prologue
    .line 2733
    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProvider$Callback;-><init>()V

    .line 2734
    return-void
.end method


# virtual methods
.method public onDescriptorChanged(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 1

    .prologue
    .line 2739
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter$ProviderCallback;->this$0:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->updateProviderDescriptor(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 2740
    return-void
.end method
