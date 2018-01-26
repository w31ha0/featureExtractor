.class Lcom/biznessapps/fragments/single/AroundUsFragment$4;
.super Ljava/lang/Object;
.source "AroundUsFragment.java"

# interfaces
.implements Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/AroundUsFragment;->getTapHandler()Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/AroundUsFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/AroundUsFragment;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment$4;->this$0:Lcom/biznessapps/fragments/single/AroundUsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public overlayItemTapped(Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;)V
    .locals 2
    .param p1, "oi"    # Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment$4;->this$0:Lcom/biznessapps/fragments/single/AroundUsFragment;

    invoke-virtual {p1}, Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;->getPoiInfo()Lcom/biznessapps/model/AroundUsItem$PoiItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/fragments/single/AroundUsFragment;->access$300(Lcom/biznessapps/fragments/single/AroundUsFragment;Lcom/biznessapps/model/AroundUsItem$PoiItem;)V

    .line 213
    return-void
.end method
